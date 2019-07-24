//
//  CustomTableViewInteractor.swift
//  CustomTableView
//
//  Created by RajSai on 21/7/2562 BE.
//  Copyright © RajSai. All rights reserved.
//

import UIKit

protocol CustomTableViewInteractorInterface {
    func viewDidLoad()
    func generateDataForTable()
}

final class CustomTableViewInteractor: CustomTableViewInteractorInterface {
    var presenter: CustomTableViewPresenterInterface!
    var dataList = [CustomTableViewModels]()
    
    // MARK: - Business logic
    func viewDidLoad() {
        presenter.setUpTableView()
        self.generateDataForTable()
    }
    
    // MARK: - For Generate Data
    func generateDataForTable(){
        dataList.append(CustomTableViewModels(image: "tiger", title: "Tiger", subTitle: "The tiger is the largest species among the Felidae and classified in the genus Panthera..."))
        dataList.append(CustomTableViewModels(image: "rabbit", title: "Rabbit", subTitle: "Rabbits are small mammals in the family Leporidae of the order Lagomorpha Oryctolagus ...."))
        dataList.append(CustomTableViewModels(image: "lion", title: "Lion", subTitle: "The lion is a species in the family Felidae; it is a muscular, deep-chested cat with a short.."))
        dataList.append(CustomTableViewModels(image: "elephant", title: "Elephant", subTitle: "Elephants are large mammals of the family Elephantidae in the order Proboscidea.."))
        dataList.append(CustomTableViewModels(image: "horse", title: "Horse", subTitle: "The horse is one of two extant subspecies of Equus ferus..."))
        presenter.getTableDataList(aDataList: dataList)
    }
    

}

