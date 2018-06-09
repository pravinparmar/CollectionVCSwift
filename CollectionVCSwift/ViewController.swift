//
//  ViewController.swift
//  CollectionVCSwift
//
//  Created by Megha on 16/04/18.
//  Copyright © 2018 com.parmar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource  {

    @IBOutlet var CollectionVC: UICollectionView!
    
    var  arrimage = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "4")]
    var  arrlbl = ["A","B","C","D"]

    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.callbackMethod(x: 10, y: 20) { (sum) in
            
            print("Sum of two value:=\(sum)")
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- DataSource Method & delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrlbl.count;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell : CellCustom = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCustom", for: indexPath) as! CellCustom
        cell.lblName.text = self.arrlbl[indexPath.row]
        cell.imgName.image = self.arrimage[indexPath.row]
        return cell;
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imageDis : ImageDisplayVC = self.storyboard?.instantiateViewController(withIdentifier: "ImageDisplayVC") as! ImageDisplayVC
        imageDis.strname = self.arrlbl[indexPath.row]
        imageDis.imagedis = self.arrimage[indexPath.row]

        
        self.navigationController?.pushViewController(imageDis, animated: true)
    }
    func callbackMethod(x :Int ,y :Int ,completion:((Int)-> Void)) {
        
        let c =  x + y
        completion(c)
        
    }



}

