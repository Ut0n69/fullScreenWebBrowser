//
//  ViewController.swift
//  fullScreenWebBrowser
//
//  Created by yut0n on 2017/07/08.
//  Copyright © 2017年 yut0n. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var param: String! = nil
    var getUrl: String = ""
    
    @IBOutlet weak var textField: UITextField!
    
    // ステータスバー非表示
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 背景グラデーション
        let topColor = UIColor(red:0.07, green:0.13, blue:0.26, alpha:1)
        let bottomColor = UIColor(red:0.54, green:0.74, blue:0.74, alpha:1)
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColors
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        // テキストフィールド
        textField.delegate = self
        textField.returnKeyType = .done
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // クリックイベント - RUN
    @IBAction func btn(_ sender: Any) {
        self.performSegue(withIdentifier: "toWebViewController", sender: param)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toWebViewController") {
            let wv: WevViewController = (segue.destination as? WevViewController)!
                wv.param = textField.text!
        }
    }

    // テキストフィールドリターン検知
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    


}

