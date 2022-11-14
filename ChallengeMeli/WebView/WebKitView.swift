//
//  WebKitView.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 04/11/22.
//

import UIKit
import WebKit

final class WebView: UIView {
    
    private lazy var webView: WKWebView = {
        webView.translatesAutoresizingMaskIntoConstraints = false
        let webConfiguration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)
        return webView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpViews() {
        backgroundColor = .white
        addSubview(webView)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            webView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            webView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            webView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor)])
    }
}

