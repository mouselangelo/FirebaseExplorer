//
//  ThemePack.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import Foundation

protocol IThemePack {
    var identifier: String? { get set }
    var displayName: String? { get set }
}

class ThemePack: IThemePack {
    var identifier: String?
    var displayName: String?
}
