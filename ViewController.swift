//
//  ViewController.swift
//  news4
//
//  Created by Ben Lindenbaum on 9/19/21.
//http://fieldstonnews.com/home

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.fieldstonnews.com/home")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}

