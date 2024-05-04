//
//  CountryVc.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 03/05/24.
//

import UIKit

class CountryVc: UIViewController {

    @IBOutlet weak var lblCOuntry: UILabel!
    @IBOutlet weak var btnFAQ: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setdata()
        

        // Do any additional setup after loading the view.
    }
    
    func setdata() {
        setbtnDesign(btn: btnFAQ)
        setlblDesign(lbl: lblCOuntry)
    }
    

}
