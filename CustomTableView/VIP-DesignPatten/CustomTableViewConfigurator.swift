//
//  CustomTableViewConfigurator.swift
//  CustomTableView
//
//  Created by Amsaraj Mariappan on 21/7/2562 BE.
//  Copyright © Amsaraj. All rights reserved.
//

import UIKit

final class CustomTableViewConfigurator {

  // MARK: - Object lifecycle
  static let sharedInstance = CustomTableViewConfigurator()

  // MARK: - Configuration
  func configure(viewController: CustomTableViewViewController) {

    let presenter = CustomTableViewPresenter()
    presenter.viewController = viewController

    let interactor = CustomTableViewInteractor()
    interactor.presenter = presenter

    viewController.interactor = interactor
  }
}
