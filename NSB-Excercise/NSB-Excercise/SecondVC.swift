//
//  SecondVC.swift
//  NSB-Excercise
//
//  Created by Sai Pratap Koppolu  on 24/06/16.
//  Copyright © 2016 KSP. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    var firstVC: FirstVC!
    var thirdVC: ThirdVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func firstLoader(sender: AnyObject){
        
        firstVC = FirstVC(nibName: "FirstVC", bundle: nil)
        self.presentViewController(firstVC, animated: true, completion: nil)
    }

    @IBAction func thirdLoader(sender: AnyObject) {
        
        thirdVC = ThirdVC(printMe: "Welcome")
        self.presentViewController(thirdVC, animated: true, completion: nil)
        
        
    }
}
