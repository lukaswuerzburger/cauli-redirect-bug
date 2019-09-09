//
//  WebViewController.swift
//  cauli-redirect-bug
//
//  Created by Lukas Würzburger on 9/9/19.
//  Copyright © 2019 Lukas Würzburger. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    // MARK: - IB Outlets

    @IBOutlet private weak var webView: UIWebView!

    // MARK: - Variables

    var url: URL!

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadRequest(URLRequest(url: url))
    }
}
