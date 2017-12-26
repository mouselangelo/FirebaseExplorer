//
//  ThemePacksViewController.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import UIKit
class ThemePacksViewController: UIViewController, ThemePacksView {

    var presenter: IThemePacksPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItems()
        presenter?.loadData()
    }

    private func setupNavigationItems() {
        navigationItem.title = "Theme Packs"
    }
}
