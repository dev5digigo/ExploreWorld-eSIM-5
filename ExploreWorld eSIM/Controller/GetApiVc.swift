
//  GetApiVc.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 08/05/24.


import UIKit
import Alamofire

class GetApiVc: UIViewController {
    
    
    @IBOutlet weak var tblGetApi: UITableView!
    
    var arrPaymentData = [PaymentData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paymentData()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
}

extension GetApiVc {
    func paymentData() {
        
        let url = "https://allyouneeds.online/khizarcrm/getpaymentportaldata.php"
        
        var params: [String: Any] = [:]
        // so we have made params for parameter and if we have to define header here
        
        
        
        // this is the method we use to make api call with post or get method
        AF.request(url, method: .get, parameters: params, encoding: URLEncoding.default, headers:nil, interceptor: nil)
            .response{ resp in
                print("res: ",resp.result)
                switch resp.result{
                case .success(let data):
                    do{
                        // to get data converted from bytes to jason
                        let jsonData = try JSONDecoder().decode(GetPaymentDataModel.self, from: data!)
                        print(jsonData)
                        
                        if ((jsonData.data?.count ?? 0) > 0){
                            self.arrPaymentData = jsonData.data ?? []
                            self.tblGetApi.reloadData()
                        }
                        
                        
                    } catch {
                        print(error.localizedDescription)
                        print(error)
                    }
                case .failure(let error):
                    print(error.localizedDescription)  //in case of failure
                }
            }
        
    }
    
}



extension GetApiVc: UITableViewDelegate {
    
}

extension GetApiVc: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrPaymentData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Maincell3", for: indexPath) as! Maincell3
        let data = self.arrPaymentData[indexPath.row]
        cell.lblId.text = data.id
        cell.lblPortalName.text = data.portal_name
        cell.lblCreatedDate.text = data.created_date
        cell.lblPortalCharges.text = data.portal_charges
        cell.lblPortalPercentage.text = data.portal_percentage
        
        
        
        return cell
    }
    
    
}

//import UIKit
//import Alamofire
//
//class GetApiVc: UIViewController {
//
//    @IBOutlet weak var tblGetApi: UITableView!
//
//    var arrPaymentData: [PaymentData]?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Call the function to fetch data from the API
//        paymentData()
//    }
//
//}
//
//extension GetApiVc {
//    func paymentData() {
//        let url = "https://allyouneeds.online/khizarcrm/getpaymentportaldata.php"
//
//        AF.request(url, method: .get)
//            .validate()
//            .responseDecodable(of: GetPaymentDataModel.self) { response in
//                switch response.result {
//                case .success(let getPaymentDataModel):
//                    print("Message: \(String(describing: getPaymentDataModel.msg))")
//                    print("Code: \(String(describing: getPaymentDataModel.code))")
//
//                    // Update the data array
//                    self.arrPaymentData = getPaymentDataModel.data
//                    self.tblGetApi.reloadData()
//
//                case .failure(let error):
//                    print("Error: \(error.localizedDescription)")
//                }
//            }
//    }
//}
//
//extension GetApiVc: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arrPaymentData?.count ?? 0
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Maincell3", for: indexPath) as! Maincell3
//        if let data = arrPaymentData?[indexPath.row] {
//            cell.lblId.text = data.id
//            cell.lblPortalName.text = data.portalName
//            cell.lblCreatedDate.text = data.createdDate
//            cell.lblPortalCharges.text = data.portalCharges
//            cell.lblPortalPercentage.text = data.portalPercentage
//        }
//        return cell
//    }
//}
