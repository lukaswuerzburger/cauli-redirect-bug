//
//  ViewController.swift
//  cauli-redirect-bug
//
//  Created by Lukas Würzburger on 9/9/19.
//  Copyright © 2019 Lukas Würzburger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - UI Action

    @IBAction func openGoogleButtonPressed() {
        // Use your own IP here
        presentWebView(url: URL(string: "http://<your ip>:8888")!)
    }

    @objc func dismissPresentedViewController() {
        presentedViewController?.dismiss(animated: true)
    }

    // MARK: - Segues

    func presentWebView(url: URL) {
        let viewController = storyboard!.instantiateViewController(withIdentifier: "webView") as! WebViewController
        viewController.url = url
        viewController.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissPresentedViewController))
        let navigationController = UINavigationController(rootViewController: viewController)
        present(navigationController, animated: true)
    }
}

