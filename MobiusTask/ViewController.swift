//
//  ViewController.swift
//  MobiusTask
//
//  Created by Kruti Trivedi on 17/12/20.
//  Copyright © 2020 Archan Mehta. All rights reserved.
//

import UIKit
import Alamofire
import MBProgressHUD
import Toast_Swift
import AlamofireObjectMapper

class ViewController: UIViewController {

     //MARK:- OutLets
    @IBOutlet var tblData: UITableView!
    
     //MARK:- Variables
    var code = [String]()
    var ribbonMsg = [String]()
    var slabMin = [Float]()
    var slabMax = [Float]()
    var validUntil = [String]()
    var wagered_percent = [Float]()
    var wagered_max = [Float]()
    var otc_percent = [Float]()
    var otc_max = [Float]()
    
    //MARK: View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchData()
    }
    //MARK: Networking
    /**
     fetch slab data
     - returns: object of array.
     */
    func fetchData() {
        
        if Reachability.isConnectedToNetwork() {
            showHUD()
            Alamofire.request("https://run.mocky.io/v3/4c663239-03af-49b5-bcb3-0b0c41565bd2").responseArray { (response: DataResponse<[RootClass]>) in


                switch response.result{
                case.success(_:):
                let response = response.result.value
                
                if let resArray = response {
                    for res in resArray {

                        
                        self.code.append(res.code ?? "No Value")
                        self.ribbonMsg.append(res.ribbonMsg ?? "No Value")
                        self.validUntil.append(res.validUntil ?? "No Value")
                        
                        if let slabRes = res.slabs {
                            for slab in slabRes {
                                self.wagered_max.append(slab.wageredMax ?? 0.0)
                                self.otc_max.append(slab.otcMax ?? 0.0)
                                self.slabMin.append(slab.min ?? 0.0)
                                self.slabMax.append(slab.max ?? 0.0)
                                self.wagered_percent.append(slab.wageredPercent ?? 0.0)
                                self.otc_percent.append(slab.otcPercent ?? 0.0)
                            }
                        }
                        
                    }
                   
                }
               
                case .failure(let error):
                
                    self.view.makeToast(error.localizedDescription)
                        
                }
                self.dismissHUD()
                self.tblData.reloadData()
            }

        }
        else {
            self.view.makeToast("Please Check Internet Connection")
            
        }
        
        
    }
}
//MARK: UITableViewDataSource, UITableViewDelegate Methods
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return code.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:DemoTableViewCell = self.tblData.dequeueReusableCell(withIdentifier: "Demo") as! DemoTableViewCell
        cell.lblCode.text = code[indexPath.row]
        cell.lblRibbonmsg.text = ribbonMsg[indexPath.row]
        cell.lblValidUntil.text = validUntil[indexPath.row]
        cell.lblSlabMin.text = String(slabMin[indexPath.row])
        return cell
    }
    
    
}
//MARK: UIViewController extention for display loader
extension UIViewController {
    func showHUD(){
        DispatchQueue.main.async{
            let progressHUD = MBProgressHUD.showAdded(to: self.view, animated: true)
            progressHUD.contentColor = UIColor.gray
             progressHUD.label.text = "Loading ..."
          
            
            
        }
    }
    
    func dismissHUD() {
        DispatchQueue.main.async{
            MBProgressHUD.hide(for: self.view, animated: true)
        }
    }
}
