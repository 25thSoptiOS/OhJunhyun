//
//  Banner.swift
//  SoptSecondStackView
//
//  Created by Junhyeon on 2019/10/26.
//  Copyright © 2019 Junhyeon. All rights reserved.
//

import Foundation
import UIKit

struct Banner {
    var bannerImg: UIImage?
    
    init(bannerName: String) {
        self.bannerImg = UIImage(named: bannerName)
    }
}
