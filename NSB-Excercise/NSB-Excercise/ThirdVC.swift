

//
//  ThirdVC.swift
//  NSB-Excercise
//
//  Created by Sai Pratap Koppolu  on 24/06/16.
//  Copyright © 2016 KSP. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    
    var secondVC: SecondVC!
    var printTxt: String!
    
    @IBOutlet weak var printLbl: UILabel!
    
    convenience init(printMe: String) {
        self.init(nibName: "ThirdVC", bundle: nil)
        printTxt = printMe
    }
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
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        printLbl.text = printTxt

    }

    @IBAction func secondLoader(sender: AnyObject) {
        
        secondVC = SecondVC(nibName: "SecondVC", bundle: nil)
        self.presentViewController(secondVC, animated: true, completion: nil)
    }
}
