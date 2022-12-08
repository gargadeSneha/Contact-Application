//
//  CurrentCallVC.swift
//  TabBar
//
//  Created by TryCatch Classes on 21/10/22.
//

import UIKit

class CurrentCallVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var noLabel: UILabel!
    
    @IBOutlet weak var currentCallCollectionView: UICollectionView!
    
    var array = ["Recorde","Hold","Add","Voice","Sound","DialPad"]
    
     var name = ""
     var no = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        currentCallCollectionView.register(UINib(nibName: "CurrentCallCVC", bundle: .main), forCellWithReuseIdentifier: "cell")
        currentCallCollectionView.dataSource = self
        currentCallCollectionView.delegate = self

        nameLabel.text = name
        noLabel.text = no
        
    }
    
    
    @IBAction func DisconnectBtn(_ sender: UIButton) {
      //  let vc = storyboard?.instantiateViewController(withIdentifier: "RecentVC") as! RecentVC
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
extension CurrentCallVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CurrentCallCVC
        cell.cellimgView.image = UIImage(named: array[indexPath.row])
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.width - 140 ) / 3 )
        let height = ((collectionView.frame.height - 50 ) / 2 )
        
        return CGSize(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 50, bottom: 10, right: 50)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else if indexPath.row == 1{
           
            
        }else if indexPath.row == 2 {
            
        }else if indexPath.row == 3 {
         
        }else if indexPath.row == 4 {
            
        }else if indexPath.row == 5 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "NumberPadVC") as! NumberPadVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
            
    }
}
