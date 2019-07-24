//
//  CustomTableViewModels.swift
//  CustomTableView
//
//  Created by RajSai on 21/7/2562 BE.
//  Copyright © RajSai. All rights reserved.
//

import UIKit

struct CustomTableViewModels {
   
    let image: String!
    let title: String!
    let subTitle: String!
    
    // MARK - Init
    init(image: String, title: String, subTitle: String) {
        self.image = image
        self.subTitle = subTitle
        self.title = title
    }
}
