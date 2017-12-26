//
//  RootRouter.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import UIKit

class RootRouter: RootWireframe {

    var viewController: UIViewController?

    static func assembleModule() -> UIViewController {
        let router = RootRouter()
        let view = ThemePacksRouter.assembleModule()

        let navigationContoller = UINavigationController(rootViewController: view)
        router.viewController = navigationContoller

        return navigationContoller
    }
}
