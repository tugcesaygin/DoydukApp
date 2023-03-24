//
//  CategoriesViewController.swift
//  DoydukApp
//
//  Created by Tuğçe Saygın on 18.03.2023.
//

import UIKit

class CategoriesViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as! CategoryTableViewCell
        cell.configure(with: categories[indexPath.row])
        return cell
    }
    
   

    private var categories : [Category] = []
    private var fullName : String = ""
    private var tableNo : Int = 0
    
    
    @IBOutlet weak var CategoryTableView: UITableView!
    
    init(fullName: String, tableNo: Int) {
        self.fullName = fullName
        self.tableNo = tableNo
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder:NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(fullName), \(tableNo)"
        

        let nib = UINib(nibName: "CategoryTableViewCell", bundle: nil)
        CategoryTableView.register(nib, forCellReuseIdentifier: "CategoryTableViewCell")
        CategoryTableView.dataSource = self
        CategoryTableView.delegate = self
        

        let service = Service()
        service.getCategories{ response in
            self.categories = response.result
            DispatchQueue.main.async {
                self.CategoryTableView.reloadData()
            }
            
            
            
        }
       
        
        
        
     
    }
        

    

}
