//
//  ViewController.swift
//  ios-rn-spike
//
//  Created by pubudu on 31/3/21.
//

import UIKit
import React

class ViewController: UIViewController {

    @IBAction func highScoreButtonTapped(sender : UIButton) {
      NSLog("Hello")
      let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
      let mockData:NSDictionary = ["scores":
          [
              ["name":"Alex", "value":"42"],
              ["name":"Joel", "value":"10"]
          ]
      ]

      let rootView = RCTRootView(
          bundleURL: jsCodeLocation,
          moduleName: "RNHighScores",
          initialProperties: mockData as [NSObject : AnyObject],
          launchOptions: nil
      )
      let vc = UIViewController()
      vc.view = rootView
      self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

