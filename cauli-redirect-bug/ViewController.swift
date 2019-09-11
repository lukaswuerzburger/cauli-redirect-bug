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

    @IBAction func openButtonPressed() {
        // Use the IP of your computer here. Don't use 'localhost' since
        // the iPhone will try to access it's own localhost, even in the
        // iPhone Simulator.
        guard let url = URL(string: "http://<your ip>:8888") else {
            fatalError("Use a valid URL")
        }
        presentWebView(url: url)
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
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true)
    }
}

