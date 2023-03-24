//
//  LoginViewController.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 18.03.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var tableNoTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    var titleText : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = titleText
        self.navigationItem.hidesBackButton = true
    }
    
    @IBAction func actionLoginButton(_ sender: Any) {
        
        self.view.endEditing(true)
        
        if fullNameTextField.text == "" {
            print("Lütfen isminizi giriniz")
            showAlert(message: "Lütfen isminizi girin")
        }
        
        else if tableNoTextField.text == "" {
            print("Lütfen masa numaranızı giriniz")
            showAlert(message: "Lütfen masa numaranızı girin")
        }
        
        else{
            print("Bir sonraki sayfaya geçiniz")
            let categoriesViewController = CategoriesViewController(fullName: fullNameTextField.text!, tableNo: Int(tableNoTextField.text!)!)            //self.navigationController?.pushViewController(categoriesViewController, animated: true)
            self.present(categoriesViewController, animated: true)
        }
    }
    
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Bir hata oluştı", message: message, preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default) { action in
            print("tamam tıklandı")
        }
        alertController.addAction(alertAction)
        
        present(alertController, animated: true)
        
    }
    
    
    
    
}
