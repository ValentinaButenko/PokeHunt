//
//  AuthorizationModule.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 23/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import AppAuth
import SSKeychain


private let kServiceName = "com.fantastik.pokehunt.@$UBDS*&%AD"
private let kAccountName = "auth_state.(T#*HILDJA"


internal class LoginModule : NSObject, OIDAuthStateChangeDelegate, OIDAuthStateErrorDelegate {
    static let GoogleIssuer = "https://accounts.google.com"
    static let GoogleClientId = "848232511240-73ri3t7plvk96pj4f85uj8otdat2alem.apps.googleusercontent.com"
    static let GoogleRedirectURI = "urn:ietf:wg:oauth:2.0:oob"
    static let GoogleRequestScope = "openid email https://www.googleapis.com/auth/userinfo.email"
    static let GoogleClientSecret = "NCjF1TLi2CcY6t5mt0ZveuL7"

    internal enum AuthorizationStatus {
        case LoggedIn
        case Failed
    }

    static let sharedModule = LoginModule()

    private var callback : ((AuthorizationStatus) -> Void)?
    private var googleAuthorization : OIDAuthState?
    private var state : OIDAuthState?
    private override init() {
        super.init()
        state = LoginModule.tryToRestoreState()
        if let authState = state {
            authState.setNeedsTokenRefresh()
            self.didChangeState(authState)
        }
    }

    // MARK: Store methods
    private class func tryToRestoreState() -> OIDAuthState? {
        guard let data = SSKeychain.passwordDataForService(kServiceName, account: kAccountName) else {
            return nil
        }

        guard let obj = NSKeyedUnarchiver.unarchiveObjectWithData(data) else {
            return nil
        }
        if obj is OIDAuthState {
            return obj as? OIDAuthState
        }
        return nil
    }

    private class func tryToSaveState(state: OIDAuthState) -> Bool {
        let data = NSKeyedArchiver.archivedDataWithRootObject(state)
        return SSKeychain.setPasswordData(data, forService: kServiceName, account: kAccountName)
    }

    private class func tryToDeleteState() -> Bool {
        return SSKeychain.deletePasswordForService(kServiceName, account: kAccountName)
    }

    // MARK: Authorization
    internal var isAuthorized : Bool {
        get { return (state != nil) ? state!.isAuthorized : false }
    }

    internal func getUpdatedToken(completion: (String?) -> Void) {
        guard let authState = self.state else {
            completion(nil)
            return
        }

        authState.withFreshTokensPerformAction({ (accessToken, idToken, err) in
            if let err = err {
                print(err)
                completion(nil)
                return
            }
            if let token = idToken {
                completion(token)
                return
            }
            completion(nil)
        }, additionalParams: ["client_secret" : LoginModule.GoogleClientSecret])
    }

    // MARK: Network && handling methods
    internal func performLoginOnController(controller : UIViewController, handler : (AuthorizationStatus) -> Void) {
        callback = handler
        let config = OIDServiceConfiguration(authorizationEndpoint: NSURL(string:"https://accounts.google.com/o/oauth2/auth")!,
                                             tokenEndpoint: NSURL(string: "https://accounts.google.com/o/oauth2/token")!)
        let req = OIDAuthorizationRequest(configuration: config,
                                          clientId: LoginModule.GoogleClientId,
                                          clientSecret: LoginModule.GoogleClientSecret,
                                          scope: LoginModule.GoogleRequestScope,
                                          redirectURL: NSURL(string: LoginModule.GoogleRedirectURI)!,
                                          responseType: OIDResponseTypeCode,
                                          state: nil,
                                          codeVerifier: nil,
                                          codeChallenge: nil,
                                          codeChallengeMethod: nil,
                                          additionalParameters: nil)

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
        let tokenRequest = response.tokenExchangeRequest()!
        OIDAuthorizationService.performTokenRequest(tokenRequest) { (tokenResponse, err) in
            if let tokenResponse = tokenResponse {
                let authState = OIDAuthState(authorizationResponse: response, tokenResponse: tokenResponse)
                self.handleStateDidReplaced(authState)

                if let callback = self.callback {
                    callback((authState != nil) ? AuthorizationStatus.LoggedIn : AuthorizationStatus.Failed)
                }
            }
            if let err = err {
                print(err)
            }
        }
    }

    // MARK: Handle callback and events
    private func handleStateDidReplaced(newState : OIDAuthState?) {
        if let trueState = newState {
            print(trueState)
            didChangeState(trueState)
        }
        else {
            LoginModule.tryToDeleteState()
            state = nil
        }
    }

    @objc func authState(state: OIDAuthState, didEncounterTransientError error: NSError) {
        print(error)
    }

    @objc func authState(state: OIDAuthState, didEncounterAuthorizationError error: NSError) {
        print(error)
    }

    // MARK: OIDAuthStateChangeDelegate
    internal func didChangeState(state: OIDAuthState) {
        LoginModule.tryToSaveState(state)
        self.state = state
        self.state!.errorDelegate = self
        self.state!.stateChangeDelegate = self
    }
}
