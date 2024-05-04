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
    
    let arrname = ["United States","Switzerland","Spain","Poland","Ireland","Greece","Finland"]
    let arrimage = ["Ic_Unitedstates","Ic_Switzerland","Ic_Spain","Ic_Spain","Ic_Ireland","Ic_Greece","Ic_Finland"]
    
    
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

extension CountryVc : UITableViewDelegate{
    
}

extension CountryVc : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell
        cell.lblName.text = self.arrname[indexPath.row]
        return cell
    }
}

