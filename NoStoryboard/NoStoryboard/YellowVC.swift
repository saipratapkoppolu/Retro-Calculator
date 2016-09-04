//
//  YellowVC.swift
//  NoStoryboard
//
//  Created by Sai Pratap Koppolu  on 24/06/16.
//  Copyright © 2016 KSP. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    
    var blueVC: BlueVC!
    
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
    
    @IBAction func blueLoader(sender: AnyObject) {
        
        blueVC = BlueVC(printMe: "Print This Now")
        self.presentViewController(blueVC, animated: true, completion: nil)
        
        
    }

    
    
}
