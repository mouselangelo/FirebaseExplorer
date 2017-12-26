//
//  ThemePackService.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import Foundation

protocol IThemePackService {
    func getItems(page: Int,
                  pageSize: Int,
                  completion: ((Result<[IThemePack]>) -> Void)?)
}

extension IThemePackService {

    func getItems(completion: ((Result<[IThemePack]>) -> Void)?) {
        getItems(page: 0, completion: completion)
    }

    func getItems(page: Int,
                  completion: ((Result<[IThemePack]>) -> Void)?) {
        getItems(page: page,
                 pageSize: Constants.Service.defaultPageSize,
                 completion: completion)
    }
}

class ThemePackService: IThemePackService {
    func getItems(page: Int,
                  pageSize: Int,
                  completion: ((Result<[IThemePack]>) -> Void)?) {

    }
}
