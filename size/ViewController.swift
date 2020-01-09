//
//  ViewController.swift
//  size
//
//  Created by dgulinc on 2020/01/08.
//  Copyright © 2020 dgulinc. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

 
    
    @IBOutlet weak var clothTableView: UITableView!
    let ClothMenu:[Cloth] = [
               Cloth(model:"Heritage black mannish crop fit",brand:"FATALISM",price:68600,clothImage: nil,url:"https://store.musinsa.com/app/product/detail/947581/0", recommendSize: "S")
               
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        clothTableView.dataSource = self
        clothTableView.delegate = self
        // Do any additional setup after loading the view.
    }
   
}

extension ViewController: UITableViewDelegate{}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ClothMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClothInformationCell", for: indexPath) as! ClothInformationCell
        let rowData = self.ClothMenu[indexPath.row]
        
        cell.model.text = rowData.model
        cell.brand.text = rowData.brand
        cell.price.text = "\(rowData.price)"
        cell.recommendSize.text = rowData.recommendSize
        return cell
    }
    
    
    
}
