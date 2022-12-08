//
//  FavoriteVC.swift
//  TabBar
//
//  Created by TryCatch Classes on 28/11/22.
//

import UIKit

class FavoriteVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var list = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let savedText = UserDefaults.standard.object(forKey: "SaveArray") as! [String]
        do
        {
            tableView.reloadData()
            self.list = savedText
           // tableView.reloadData()
        }
       // tableView.reloadData()
        
        
    }
    

    @IBAction func likeBtnTapped(_ sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: tableView)
        guard let indexpath = tableView.indexPathForRow(at: point ) else {return}
              list.remove(at: indexpath.row)
              tableView.beginUpdates()
              tableView.deleteRows(at: [IndexPath(row: indexpath.row, section: 0)], with: .left)
              tableView.endUpdates()
        
    }
    

}
extension FavoriteVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FavoriteTVC
        cell.lbl.text = list[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                list.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.reloadData()
            }
    }
}
