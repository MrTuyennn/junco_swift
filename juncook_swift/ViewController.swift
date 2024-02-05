//
//  ViewController.swift
//  juncook_swift
//
//  Created by Nguyen Ngoc Tuyen on 05/02/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(showOfflineDeviceUI(notification:)), name: NSNotification.Name.connectivityStatus, object: nil)
    }

    @objc func showOfflineDeviceUI(notification: Notification) {
        if NetWorkMonitor.shared.isConnected {
            print("Connected")
        } else {
            print("Not connected")
        }
    }
}
