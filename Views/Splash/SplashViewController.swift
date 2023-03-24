//
//  ViewController.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 18.03.2023.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now(), execute: {
            self.performSegue(withIdentifier: "splashToLoginIdentifier" , sender: nil)
        })
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! LoginViewController
        destinationViewController.titleText = "Giriş Yapma Sayfası"
    }
    

    

}
