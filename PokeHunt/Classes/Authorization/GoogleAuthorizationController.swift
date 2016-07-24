//
//  GoogleAuthorizationController.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 23/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import AppAuth
import TOWebViewController


internal extension OIDAuthState {
    internal class func authStateByPresenting(request request : OIDAuthorizationRequest,
                                                onController controller : UIViewController,
                                                             callback : OIDAuthorizationCallback) -> OIDAuthorizationFlowSession {
        let gac = GoogleAuthorizationController(request: request)
        gac.presentOn(viewController: controller, callback: callback)
        return gac
    }
}


internal extension OIDAuthorizationService {
    internal func authStateByPresenting(request request : OIDAuthorizationRequest,
                                                onController controller : UIViewController,
                                                             callback : OIDAuthorizationCallback) -> OIDAuthorizationFlowSession {
        let gac = GoogleAuthorizationController(request: request)
        gac.presentOn(viewController: controller, callback: callback)
        return gac
    }
}


internal class GoogleAuthorizationController : NSObject, OIDAuthorizationFlowSession {
    let request : OIDAuthorizationRequest
    var callback : OIDAuthorizationCallback?
    weak var webVC : UIViewController?
    internal init(request : OIDAuthorizationRequest) {
        self.request = request
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    internal func presentOn(viewController controller: UIViewController, callback : OIDAuthorizationCallback) {
        clearCache()

        let vc = TOWebViewController.init(URL: request.authorizationRequestURL())
        let nav = UINavigationController(rootViewController: vc)
        vc.doneButtonTitle = "Cancel"
        vc.navigationButtonsHidden = false
        vc.showActionButton = false
        vc.showLoadingBar = true
        nav.setNavigationBarHidden(true, animated: false)

        controller.presentViewController(nav, animated: true, completion: nil)

        vc.shouldStartLoadRequestHandler = {(req, nav) in
            if (self.isApprovalRequest(req)) {
                if (self.isAccessGranted(req) == false) {
                    self.cancel()
                }
                else {
                    self.handlePretokenRequest(req)
                }
                return false
            }
            return true
        }

        self.webVC = vc
        self.callback = callback
    }

    internal func shouldHandleURL(url : NSURL) -> Bool {
        return false
    }

    internal func isApprovalRequest(req : NSURLRequest) -> Bool {
        return req.URL!.absoluteString.hasPrefix("https://accounts.google.com/o/oauth2/approval")
    }

    internal func isAccessGranted(req : NSURLRequest) -> Bool {
        guard let data = req.HTTPBody else {
            return false
        }
        guard let body = String(data: data, encoding: NSUTF8StringEncoding) else {
            return false
        }
        return body.containsString("submit_access=true")
    }

    internal func didFinishWithResonse(response : OIDAuthorizationResponse?, error : NSError?) {
        if let callback = self.callback {
            callback(response, error)
        }
    }

    internal func clearCache() {
        let storage = NSHTTPCookieStorage.sharedHTTPCookieStorage()
        if let cookies = storage.cookies {
            for (_, e) in cookies.enumerate() {
                if (e.domain.containsString("google.com")) {
                    storage.deleteCookie(e)
                }
            }
        }
        NSURLCache .sharedURLCache().removeAllCachedResponses()
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    internal func handlePretokenRequest(request : NSURLRequest) {
        loadToken(request: request) { (token) in
            let resp =
                OIDAuthorizationResponse(request: self.request,
                                         parameters: [
                                            "client_id" : LoginModule.GoogleClientId,
                                            "client_secret" : LoginModule.GoogleClientSecret,
                                            "code" : token,
                                            "grant_type" : "authorization_code",
                                            "redirect_uri" : LoginModule.GoogleRedirectURI,
                                            "scope" : LoginModule.GoogleRequestScope])
            self.webVC?.dismissViewControllerAnimated(true, completion: nil)
            self.didFinishWithResonse(resp, error: nil)
        }
    }

    internal func loadToken(request request: NSURLRequest, handler: (String) -> Void) {
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (resp, data, err) in
            guard let data = data, let content = String(data: data, encoding: NSUTF8StringEncoding) else {
                return
            }
            handler(self.parseToken(content))
        }
    }

    internal func parseToken(token : String) -> String {
        let options = NSRegularExpressionOptions(rawValue:
            NSRegularExpressionOptions.CaseInsensitive.rawValue |
            NSRegularExpressionOptions.DotMatchesLineSeparators.rawValue)
        let matching = NSMatchingOptions()
        let theVal = try! NSRegularExpression(pattern: "<input id=\"code\" type=\"text\" readonly=\"readonly\" value=\".*\" style=\".*\" onclick=\".*;\" />", options: options)
        let beforeVal = try! NSRegularExpression(pattern: ".*value=\"", options: options)
        let afterVal = try! NSRegularExpression(pattern: "\" style.*", options: options)

        var code = token
        let result = theVal.firstMatchInString(code,
                                               options: matching,
                                               range: NSRange(location: 0, length: code.characters.count))!

        code = (code as NSString).substringWithRange(result.range)
        code = beforeVal.stringByReplacingMatchesInString(code,
                                                          options: matching,
                                                          range: NSRange(location: 0, length: code.characters.count),
                                                          withTemplate: "")
        code = afterVal.stringByReplacingMatchesInString(code,
                                                         options: matching,
                                                         range: NSRange(location: 0, length: code.characters.count),
                                                         withTemplate: "")

        return code
    }

    // MARK: OIDAuthorizationFlowSession
    internal func cancel() {
        let error = OIDErrorUtilities.errorWithCode(OIDErrorCode.ProgramCanceledAuthorizationFlow,
                                                    underlyingError: nil,
                                                    description: nil)
        self.clearCache()
        self.webVC?.dismissViewControllerAnimated(true, completion: nil)
        self.didFinishWithResonse(nil, error: error)
    }

    internal func resumeAuthorizationFlowWithURL(URL: NSURL) -> Bool {
        return false
    }

    internal func failAuthorizationFlowWithError(error: NSError) {
    }
}
