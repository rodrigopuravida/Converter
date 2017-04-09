//
//  WebViewController.swift
//  WorldTrotter
//
//  Created by Rodrigo Carballo on 4/8/17.
//  Copyright © 2017 Rodrigo Carballo. All rights reserved.
//
 import UIKit

class WebViewController : UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL (string: "https://www.bignerdranch.com");
        let request = NSURLRequest(url: url! as URL);
        webView.loadRequest(request as URLRequest);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
