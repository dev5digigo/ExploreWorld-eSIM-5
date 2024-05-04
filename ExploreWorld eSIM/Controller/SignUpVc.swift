//
//  SignUpVc.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 03/05/24.
//

import UIKit

class SignUpVc: UIViewController {

    @IBOutlet weak var viewMain: UIView! {
        didSet{
            viewMain.clipsToBounds = true
            viewMain.layer.cornerRadius = 120
            viewMain.layer.maskedCorners = [.layerMinXMinYCorner] // Top right corner, Top left corner respectively
        }
        
    }
    @IBOutlet weak var btnSignUp: UIButton!
    
    @IBOutlet weak var btnApple: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    @IBOutlet weak var btnFb: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var viewbtnApple: UIView!
    @IBOutlet weak var viewbtnGoogle: UIView!
    @IBOutlet weak var viewbtnFb: UIView!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var btnHidePass: UIButton!
    var flagHide = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        
        setdata()
        txtName.setLeftImage(UIImage(named: "Ic_user")!)
        txtPass.setLeftImage(UIImage(named: "Ic_pass")!)
        txtNumber.setLeftImage(UIImage(named: "Ic_number")!)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnHidePasswordAction(_ sender: Any) {
        if flagHide == true 
        {
            btnHidePass.setImage(UIImage(named: "Ic_hide"), for: .normal)
            flagHide = false
            txtPass.isSecureTextEntry = true // Change to txtPass
        } else {
            btnHidePass.setImage(UIImage(named: "Ic_unhide"), for: .normal)
            flagHide = true
            txtPass.isSecureTextEntry = false // Change to txtPass
        }
        
    }
    func setdata() {
        
        settxtBorder(txt: txtName)
        settxtBorder(txt: txtPass)
        settxtBorder(txt: txtNumber)
        setbtnDesign(btn: btnLogin)
        setRoundViewBtn(viewbtn: viewbtnFb)
        setRoundViewBtn(viewbtn: viewbtnApple)
        setRoundViewBtn(viewbtn: viewbtnGoogle )
        
        
    }
    @IBAction func btnLoginAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
