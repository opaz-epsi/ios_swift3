//
//  DisplayingModels.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

protocol DisplayingModels {
    associatedtype DisplayedModel : ViewModel
    func setup(viewModels: [DisplayedModel])
}

extension DisplayingModels {
    func display(list:[DisplayedModel.SourceModel]) {
        let viewModels = list.map { DisplayedModel.from(model:$0) }
        setup(viewModels: viewModels)
    }
}
