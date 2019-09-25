//
//  LightContentNavigationController.swift
//  ICBugTest
//
//  Created by Eivind Rannem Bohler on 25/09/2019.
//  Copyright © 2019 Eivind Rannem Bohler. All rights reserved.
//

import UIKit

class LightContentNavigationController: UINavigationController {

    override var childForStatusBarStyle: UIViewController? {
        return viewControllers.first
    }
}
