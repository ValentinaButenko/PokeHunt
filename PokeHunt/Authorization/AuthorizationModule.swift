//
//  AuthorizationModule.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 23/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import AppAuth


internal class LoginModule {
    static let GoogleIssuer = "https://accounts.google.com"
    static let GoogleClientId = "848232511240-73ri3t7plvk96pj4f85uj8otdat2alem.apps.googleusercontent.com"
    static let GoogleRedirectURI = "urn:ietf:wg:oauth:2.0:oob"
    static let GoogleRequestScope = "openid email https://www.googleapis.com/auth/userinfo.email"

    internal enum AuthorizationStatus {
        case LoggedIn
        case Failed
    }

    static let sharedModule = LoginModule()

    private var callback : ((AuthorizationStatus) -> Void)?
    private var googleAuthorization : OIDAuthState?
    private var state : OIDAuthState?
    private init() {}

    internal func performLoginOnController(controller : UIViewController, handler : (AuthorizationStatus) -> Void) {
        callback = handler
        let config = OIDServiceConfiguration(authorizationEndpoint: NSURL(string:"https://accounts.google.com/o/oauth2/auth")!,
                                             tokenEndpoint: NSURL(string: "https://accounts.google.com/o/oauth2/token")!)!
        let req = OIDAuthorizationRequest(configuration: config,
                                          clientId: LoginModule.GoogleClientId,
                                          scope: LoginModule.GoogleRequestScope,
                                          redirectURL: NSURL(string: LoginModule.GoogleRedirectURI)!,
                                          responseType: OIDResponseTypeCode,
                                          state: nil,
                                          codeVerifier: nil,
                                          codeChallenge: nil,
                                          codeChallengeMethod: nil,
                                          additionalParameters: nil)!
        
        OIDAuthState.authStateByPresenting(request: req, onController: controller) {
            (response, error) in
            if let resp = response {
                self.handleAuthResponse(resp)
            }
            if let error = error {
                print(error)
            }
        }
    }

    private func handleAuthResponse(response: OIDAuthorizationResponse) {
        var additionalParams = [String : String]()
        if let params = response.additionalParameters {
            let toFilter = ["client_id", "redirect_uri", "grant_type"]
            params.filter({ (key, _) -> Bool in
                return !toFilter.contains(key)
            }).map({ (key, value) in additionalParams[key] = value as? String })
        }
        let tokenRequest = response.tokenExchangeRequestWithAdditionalParameters(additionalParams)!
        OIDAuthorizationService.performTokenRequest(tokenRequest) { (tokenResponse, err) in
            if let tokenResponse = tokenResponse {
                let authState = OIDAuthState(authorizationResponse: response, tokenResponse: tokenResponse)
                self.handleStateDidReplaced(authState)

                if let callback = self.callback {
                    print("callback")
                    callback((authState != nil) ? AuthorizationStatus.LoggedIn : AuthorizationStatus.Failed)
                }
            }
            if let err = err {
                print(err)
            }
        }
    }

    private func handleStateDidReplaced(state : OIDAuthState?) {
        print("Replaced")
    }
}
