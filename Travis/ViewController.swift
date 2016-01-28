//
//  ViewController.swift
//  Travis
//
//  Created by Jessica on 16/1/28.
//  Copyright © 2016年 Jessica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let screenRect = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(type: UIButtonType.Custom)
        btn.setTitle("click", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        btn.titleLabel?.textAlignment = NSTextAlignment.Center
        btn.addTarget(self, action: "clickAction", forControlEvents: UIControlEvents.TouchUpInside)
        btn.frame = CGRectMake(screenRect.width / 2 - 40 , screenRect.height / 3 - 40, 80, 40)
        self.view.addSubview(btn)
        
    }

    func clickAction(){
        
        let alert = UIAlertController(title: "Attention please", message: "我是你女神不", preferredStyle: UIAlertControllerStyle.Alert)
        
        let yesAction = UIAlertAction(title: "YES", style: UIAlertActionStyle.Default, handler: nil)
        
        alert.addAction(yesAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

