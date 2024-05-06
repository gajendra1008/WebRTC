//
//  ErrorViewController.swift
//  VideoSDKRTC_Example
//
//  Created by Gajendrasinh Chauhan on 03/05/24.
//

import Foundation
import UIKit
import VideoSDKRTC

class ErrorViewController: UIViewController {
    
    @IBOutlet weak var viewOkButton: UIView!
    @IBOutlet weak var btnOK: UIButton!
    
    var meeting: Meeting?
    
    override func viewDidLoad() {
        viewOkButton.roundCorners(corners: [.allCorners], radius: 12.0)
    }
    
    @IBAction func btnOKTapped(_ sender: Any) {
        self.dismiss(animated: true) {
            let startMeetingVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "StartMeetingViewController")
            startMeetingVC.modalPresentationStyle = .fullScreen
            startMeetingVC.modalTransitionStyle = .crossDissolve
            self.present(startMeetingVC, animated: true)
        }
    }
}
