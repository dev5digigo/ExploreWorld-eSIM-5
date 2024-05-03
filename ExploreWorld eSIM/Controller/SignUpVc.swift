//
//  SignUpVc.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 02/05/24.
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
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtNumber: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()

        // Do any additional setup after loading the view.
    }
    
    func setData() {
        settxtBorder(txt: txtName)
        settxtBorder(txt: txtPass)
        settxtBorder(txt: txtNumber)
    }
}
