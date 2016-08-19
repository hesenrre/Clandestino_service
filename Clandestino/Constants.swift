//
//  Constants.swift
//  Clandestino
//
//  Created by Demetrio Cruz on 8/15/16.
//  Copyright © 2016 Roonin Labs S de RL de CV. All rights reserved.
//

import Foundation
import OAuthSwift

struct Constants {
    static let _SERVICE_HOST = "c73e9c3e.ngrok.io"
    
    static var oauthswift = OAuth2Swift(
        consumerKey:    "9a35ec47a80f7c2941492240bc9d120d42de74e544659a1b317fe6b256fd9c5a",
        consumerSecret: "d0d22062a21bc1f0e97bdeaba43843f18f810b3203dee3371bd63a8df741bb6b",
        authorizeUrl:   "http://\(Constants._SERVICE_HOST)/oauth/authorize",
        accessTokenUrl: "https://\(Constants._SERVICE_HOST)/oauth/token",
        responseType:   "code"
    )
    
    static func reloadAuthSwift() -> Void{
        oauthswift = OAuth2Swift(
            consumerKey:    "9a35ec47a80f7c2941492240bc9d120d42de74e544659a1b317fe6b256fd9c5a",
            consumerSecret: "d0d22062a21bc1f0e97bdeaba43843f18f810b3203dee3371bd63a8df741bb6b",
            authorizeUrl:   "http://\(Constants._SERVICE_HOST)/oauth/authorize",
            accessTokenUrl: "https://\(Constants._SERVICE_HOST)/oauth/token",
            responseType:   "code"
        )
    }
}