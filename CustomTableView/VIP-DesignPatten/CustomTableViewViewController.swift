//
//  CustomTableViewViewController.swift
//  CustomTableView
//
//  Created by Amsaraj Mariappan on 21/7/2562 BE.
//  Copyright © Amsaraj. All rights reserved.
//

import UIKit

protocol CustomTableViewView: NSObject {
    func setUpTableView()
    func setUpTableviewData(sDataList: [CustomTableViewModels])
}

class CustomTableViewViewController: UIViewController {

    var interactor: CustomTableViewInteractorInterface!
    var dataList = [CustomTableViewModels]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CustomTableViewConfigurator.sharedInstance.configure(viewController: self)
    }

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.viewDidLoad()
    }
    
    
}

// MARK: - CustomTableViewViewController
extension CustomTableViewViewController: CustomTableViewView {
    func setUpTableView() -> () {
        let nib = UINib(nibName: String(describing: CustomTableViewCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: Constant.reusableIdentifier)
    }
    
    func setUpTableviewData(sDataList: [CustomTableViewModels]) {
        self.dataList = sDataList
        self.tableView.reloadData()
    }
}

// MARK: - Delegate & DataSource
extension CustomTableViewViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constant.reusableIdentifier) as? CustomTableViewCell

        let data = dataList[indexPath.row]
        cell!.titleLabel.text = data.title
        cell!.iconImageView.image = UIImage(named: data.image)
        cell!.subTitleLabel.text = data.subTitle
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constant.cellHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO
        print("Selected Cell", indexPath.row)
    }
    
    
}

