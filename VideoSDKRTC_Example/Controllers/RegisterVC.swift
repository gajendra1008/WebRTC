//
//  RegisterVC.swift
//  WebRTC
//
//  Created by Gajendrasinh Chauhan on 03/05/24.
//

import UIKit
import CoreData

class RegisterVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblAppName: UILabel!
    
    @IBAction func Connect(sender: UIButton){
        if (txtName.text == "" || txtEmail.text == "") {
            let alert = UIAlertController(title: "Required", message: "Enter your Name/Email ", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            DispatchQueue.main.async {
                self.saveUser()
            }
            let vidVC = self.storyboard?.instantiateViewController(withIdentifier: "StartMeetingViewController") as! StartMeetingViewController
            self.navigationController?.pushViewController(vidVC, animated: true)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 0.8, delay: 0, options: [.transitionCurlUp], animations: {
            self.view.center.y += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        let attributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.foregroundColor : UIColor.gray
        ]
        
        txtName.attributedPlaceholder = NSAttributedString(string: "Enter Name", attributes: attributes)
        txtEmail.attributedPlaceholder = NSAttributedString(string: "Enter Email", attributes: attributes)
        txtName.delegate = self
        txtEmail.delegate = self
    }
    
    func saveUser() {
        let context = (UIApplication.shared.delegate as!AppDelegate).persistentContainer.viewContext
        
        let entityDescription: NSEntityDescription = NSEntityDescription.entity(forEntityName: "Storage", in: context)!
        let loginInfoEntry: NSManagedObject = NSManagedObject(entity: entityDescription, insertInto: context)
        
        loginInfoEntry.setValue(txtName.text, forKey: "uname")
        loginInfoEntry.setValue(txtEmail.text, forKey: "email")
        
        do {
            try context.save()
        } catch {
            print("Could not save")
        }
    }
}

