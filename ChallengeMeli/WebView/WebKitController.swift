//
//  WebViewController.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 04/11/22.
//

import UIKit
import WebKit

class WebKitController: UIViewController, WKNavigationDelegate {
        var webView: WKWebView!

        override func loadView() {
            webView = WKWebView()
            webView.navigationDelegate = self
            view = webView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            guard let url = URL(string: "https://www.mercadolivre.com" ) else {return}
            webView.load(URLRequest(url: url))
            webView.allowsBackForwardNavigationGestures = true
        }
    }
