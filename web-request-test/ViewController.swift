//
//  ViewController.swift
//  web-request-test
//
//  Created by Paul on 04.01.16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView()
        container.addSubview(webView)
        
        //print(container.bounds.height)
        //print(container.bounds.width)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadRequest(urlStr: String) {

        let url = NSURL(string: urlStr)!
        let urlRequest = NSURLRequest(URL: url)
        webView.loadRequest(urlRequest)
    }
    
    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/")
    }

    @IBAction func loadYoutube(sender: AnyObject) {
        loadRequest("https://www.youtube.com/")
    }
    
    @IBAction func loadParus(sender: AnyObject) {
        loadRequest("http://parus.besaba.com/")
    }
}

