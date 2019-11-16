//
//  ResponseString.swift
//  SoptSecondStackView
//
//  Created by Junhyeon on 2019/11/02.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import Foundation

// MARK: - Signin
struct ResponseString: Codable {
    let success: Bool
    let message: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let userIdx: Int
    let id, password, name, phone: String
}


