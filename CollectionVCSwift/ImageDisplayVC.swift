//
//  ImageDisplayVC.swift
//  CollectionVCSwift
//
//  Created by Megha on 16/04/18.
//  Copyright © 2018 com.parmar. All rights reserved.
//

import UIKit

class ImageDisplayVC: UIViewController{
    
    
    var strname : String!
    var imagedis : UIImage!

    
    @IBOutlet var imageDisplay: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
      
    //MARK:- View Life cycle
    override func viewDidLoad() {
        //
        super.viewDidLoad()
        self.lblName.text = strname
        self.imageDisplay.image = imagedis
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   

}
