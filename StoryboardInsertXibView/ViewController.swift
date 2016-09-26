//
//  ViewController.swift
//  StoryboardInsertXibView
//
//  Created by 龚浩 on 16/9/26.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        customView.onButtonRun = {
            print("on button")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

