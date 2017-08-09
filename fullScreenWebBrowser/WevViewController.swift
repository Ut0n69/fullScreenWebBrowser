//
//  WevViewController.swift
//  fullScreenWebBrowser
//
//  Created by yut0n on 2017/07/08.
//  Copyright © 2017年 yut0n. All rights reserved.
//

import UIKit

class WevViewController: UIViewController {
    
    var param: String = ""
    
    @IBOutlet weak var webView: UIWebView!
    
    // ステータスバー非表示
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // let getURL = NSURL(string: "http://yut0n.cf/timer")
        let getURL = NSURL(string: param)
        let urlRequest = NSURLRequest(url: getURL! as URL)
        
        webView.loadRequest(urlRequest as URLRequest)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
