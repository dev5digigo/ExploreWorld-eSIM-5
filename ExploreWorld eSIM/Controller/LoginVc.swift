//
//  LoginVc.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 02/05/24.
//

import UIKit

class LoginVc: UIViewController {
    @IBOutlet weak var lblWelMsg: UILabel!
    
    @IBOutlet weak var viewBg: UIView!
    @IBOutlet weak var viewmain: UIView!{
        didSet{
            viewmain.clipsToBounds = true
            viewmain.layer.cornerRadius = 120
            viewmain.layer.maskedCorners = [.layerMinXMinYCorner] // Top right corner, Top left corner respectively
        }
    }
    @IBOutlet weak var btnFcbook: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnApple: UIButton!
    @IBOutlet weak var lblLoginMsg: UILabel!
    @IBOutlet weak var IviewLogo: UIImageView!
    
    @IBOutlet weak var txtLogin: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    
    @IBOutlet weak var btnPassHide: UIButton!
    
    @IBOutlet weak var btnPasswordHide: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    @objc func buttonTapped() {
        // Handle button tap action here
        print("Button tapped")
    }
    
    var flagHide = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
//        txtLogin.setLeftImage(imageName: UIImage(named: "MailLogo")!)
//        txtPass.setLeftImage(imageName: UIImage(named: "PassLogo")!)

        // Do any additional setup after loading the view.
        
        txtLogin.setLeftImage(UIImage(named: "Ic_mail")!)
        txtPass.setLeftImage(UIImage(named: "Ic_pass")!)
       
//        txtPass.setRightButton(image: UIImage(named: "PassHide")!, target: self, action: #selector(buttonTapped))
    }
    
    @IBAction func btnPassHideAction(_ sender: Any) {
        
        if flagHide == false {
            btnPassHide.setImage(UIImage(named: "Ic_hide"), for: .normal)
            flagHide = true
            txtPass.isSecureTextEntry = false // Change to txtPass
        } else {
            btnPassHide.setImage(UIImage(named: "Ic_unhide"), for: .normal)
            flagHide = false
            txtPass.isSecureTextEntry = true // Change to txtPass
        }
    }

    
    func setData(){
        settxtBorder(txt: txtLogin)
        settxtBorder(txt: txtPass)
        setbtnDesign(btn: btnLogin)
        setRoundbtn(btn: btnGoogle)
        setRoundbtn(btn: btnFcbook)
        setRoundbtn(btn: btnApple)
    
    }

}
