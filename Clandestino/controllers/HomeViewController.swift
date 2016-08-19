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
import SafariServices

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Constants.oauthswift.authorize_url_handler = SafariURLHandler(viewController: self, oauthSwift: Constants.oauthswift)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: AnyObject) {
        Constants.oauthswift.authorizeWithCallbackURL(
            NSURL(string: "clandestinoapp://callback")!,
            scope: "", state: generateStateWithLength(20) as String,
            success: { credential, response, parameters in
                let keychain = Keychain(service: "com.roonin.Clandestino")
                keychain["token"] = credential.oauth_token
                keychain["secret"] = credential.oauth_token_secret
            },
            failure: { error in
                print("error -> \(error)")
            }
        )
    }
    
    @IBAction func loadData(sender: UIButton) {
        let keychain = Keychain(service: "com.roonin.Clandestino")
        print("keychain token \(keychain["token"])")
        if (keychain["token"] == nil) || (keychain["secret"] == nil) {
            login([])
            return
        }
        
        Constants.oauthswift.client.credential.oauth_token = keychain["token"] as String!
        Constants.oauthswift.client.credential.oauth_token_secret = keychain["secret"] as String!
        Constants.oauthswift.client.get("https://\(Constants._SERVICE_HOST)/api/v1/me.json", success: { (data, response) in
            print("success with \(NSString(data: data, encoding: NSUTF8StringEncoding)) \(response)")
        }) { (error) in
            print("success with \(error)")
        }
    }

    @IBAction func logout(sender: AnyObject) {
        let svc = SFSafariViewController(URL: NSURL(string: "http://\(Constants._SERVICE_HOST)/")!)
        self.presentViewController(svc, animated: true, completion: {
            print("hi")
        })
        let keychain = Keychain(service: "com.roonin.Clandestino")
        do{
            try keychain.remove("token")
            try keychain.remove("secret")
        }catch let error {
            print("error: \(error)")
        }
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
