//
//  Result.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import Foundation

enum Result<ResultType> {
    case success(ResultType)
    case failure(Error?)

    var value: ResultType? {
        switch self {
        case .success(let value):
            return value
        case .failure:
            return nil
        }
    }

    var error: Error? {
        switch self {
        case .success:
            return nil
        case .failure(let error):
            return error
        }
    }

    var isSuccess: Bool {
        switch self {
        case .success:
            return true
        case .failure:
            return false
        }
    }
}
