//
//  ListViewController.swift
//  EpsiCours
//
//  Created by Ophir on 20/01/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import UIKit

class LabeLCell : UITableViewCell {

    @IBOutlet weak var indexLabel: UILabel!
}

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var listView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: LabeLCell! = tableView.dequeueReusableCell(withIdentifier: "LabelCell") as! LabeLCell!
        
        if indexPath.row == 0 {
            cell.indexLabel.textColor = UIColor.red
        } else {
            cell.indexLabel.textColor = UIColor.black
        }
        
        cell.indexLabel.text = "INDEX LABEL : \(indexPath.row)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertViewController = UIAlertController(title:"Cellule sélectionée", message: "C'est la numéro \(indexPath.row)", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertViewController.addAction(cancelAction)
        
        
        self.present(alertViewController, animated:true, completion:nil)
    }

}
