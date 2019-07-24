//
//  CustomTableViewModels.swift
//  CustomTableView
//
//  Created by Amsaraj Mariappan on 21/7/2562 BE.
//  Copyright © Amsaraj. All rights reserved.
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
