//
//  FirstVC.swift
//  NSB-Excercise
//
//  Created by Sai Pratap Koppolu  on 24/06/16.
//  Copyright © 2016 KSP. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    var secondVC: SecondVC!
    
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
    

    @IBAction func secondLoader(sender: AnyObject)  {
        
        secondVC = SecondVC(nibName: "SecondVC", bundle: nil)
        
        self.presentViewController(secondVC, animated: true, completion: nil)
        
    }

}
