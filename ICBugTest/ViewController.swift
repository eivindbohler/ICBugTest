//
//  ViewController.swift
//  ICBugTest
//
//  Created by Eivind Rannem Bohler on 25/09/2019.
//  Copyright © 2019 Eivind Rannem Bohler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!

    private var statusBarStyle = UIStatusBarStyle.lightContent

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }

    @IBAction func didTapChangeStatusBarColorButton() {
        switch statusBarStyle {
        case .default:
            statusBarStyle = .lightContent
        default:
            statusBarStyle = .default
        }
        setNeedsStatusBarAppearanceUpdate()
    }
}

