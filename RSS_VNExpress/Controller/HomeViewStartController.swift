//
//  HomeViewStartController.swift
//  RSS_VNExpress
//
//  Created by masterdev3_ios on 7/16/21.
//

import UIKit

class HomeViewStartController: UIViewController {
    var items : [Item]?
    var url: String = "https://vnexpress.net/rss/tin-moi-nhat.rss"
    
    func setUpData(){
        Service.shared.parseNew(url: url) { (items) in
            self.items = items
            if self.items != nil{
                DispatchQueue.main.async {
                    let vc = HomeViewController()
                    vc.items = self.items!
                    self.navigationController?.pushViewController(vc, animated: true)}
                
            }else{
                let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
                let action = UIAlertAction(title: "", style: .cancel) { (action) in
                    alert.dismiss(animated: true, completion: nil)
                    self.setUpData()
                }
                alert.addAction(action)
                DispatchQueue.main.async {
                    self.present(alert, animated: true, completion: nil)
                }
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpData()
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

}
