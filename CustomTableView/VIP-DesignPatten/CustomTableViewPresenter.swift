//
//  CustomTableViewPresenter.swift
//  CustomTableView
//
//  Created by Amsaraj Mariappan on 21/7/2562 BE.
//  Copyright © Amsaraj. All rights reserved.
//

import UIKit

protocol CustomTableViewPresenterInterface {
    func setUpTableView()
    func getTableDataList(aDataList: [CustomTableViewModels])
}

class CustomTableViewPresenter: CustomTableViewPresenterInterface {
    weak var viewController: CustomTableViewView!
    
    func setUpTableView() {
        viewController.setUpTableView()
    }
    
    func getTableDataList(aDataList: [CustomTableViewModels]) {
        viewController.setUpTableviewData(sDataList: aDataList)
    }
   
}

