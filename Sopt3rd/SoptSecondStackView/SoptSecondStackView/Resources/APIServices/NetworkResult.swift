//
//  NetworkResult.swift
//  SoptSecondStackView
//
//  Created by Junhyeon on 2019/11/02.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import Foundation

enum NetworkResult<T>{
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
