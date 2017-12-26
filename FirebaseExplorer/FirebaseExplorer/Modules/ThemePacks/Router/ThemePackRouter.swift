//
//  ThemePackRouter.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import UIKit

class ThemePacksRouter: IThemePacksRouter {
    weak var view: UIViewController?

    static func assembleModule() -> UIViewController {
        let router = ThemePacksRouter()
        let view = ThemePacksViewController()

        router.view = view
        return view
    }


}
