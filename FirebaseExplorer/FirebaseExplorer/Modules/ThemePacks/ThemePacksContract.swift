//
//  ThemePacksContract.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import UIKit

protocol ThemePacksView: class {
    var presenter: IThemePacksPresenter! { get set }
    func display(packs: [IThemePack], appending: Bool)
    func display(error: Error)
}

extension ThemePacksView {
    func display(packs: [IThemePack], appending: Bool? = false) {
        display(packs: packs, appending: appending)
    }
}

protocol IThemePacksPresenter {
    weak var view: ThemePacksView? { get set }
    var router: IThemePacksRouter? { get set }
    var interactor: IThemePacksInteractor? { get set }

    func loadData()
    func loadMore()
    func selected(_ pack: IThemePack)
}

protocol IThemePacksInteractor {
    var service: IThemePackService? { get }
}

protocol ThemePacksWireframe {
    weak var view: UIViewController? { get set }
    static func assembleModule() -> UIViewController
}

protocol IThemePacksRouter: ThemePacksWireframe {

}
