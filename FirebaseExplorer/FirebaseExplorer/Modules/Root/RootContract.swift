//
//  RootContract.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import UIKit

protocol RootWireframe {
    weak var viewController: UIViewController? { get set }
    static func assembleModule() -> UIViewController
}
