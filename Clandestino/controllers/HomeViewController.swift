//
//  HomeViewController.swift
//  Clandestino
//
//  Created by Demetrio Cruz on 8/12/16.
//  Copyright © 2016 Roonin Labs S de RL de CV. All rights reserved.
//

import UIKit
import OAuthSwift
import KeychainAccess

class HomeViewController: UIViewController {

    let oauthswift = OAuth2Swift(
        consumerKey:    "9a35ec47a80f7c2941492240bc9d120d42de74e544659a1b317fe6b256fd9c5a",
        consumerSecret: "d0d22062a21bc1f0e97bdeaba43843f18f810b3203dee3371bd63a8df741bb6b",
        authorizeUrl:   "http://\(Constants._SERVICE_HOST)/oauth/authorize",
        accessTokenUrl: "https://\(Constants._SERVICE_HOST)/oauth/token",
        responseType:   "code"
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let credential = (UIApplication.sharedApplication().delegate as! AppDelegate).credential
        NSLog("Loading Home Controller: \(credential)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: UIButton) {
        oauthswift.authorizeWithCallbackURL(
            NSURL(string: "clandestinoapp://callback")!,
            scope: "", state: generateStateWithLength(20) as String,
            success: { credential, response, parameters in
                print("credential -> \(credential.oauth_token)")
                (UIApplication.sharedApplication().delegate as! AppDelegate).credential = credential
            },
            failure: { error in
                print("error -> \(error)")
            }
        )
    }
    
    @IBAction func loadData(sender: UIButton) {
        let credential = (UIApplication.sharedApplication().delegate as! AppDelegate).credential
        print(credential!.oauth_token)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
