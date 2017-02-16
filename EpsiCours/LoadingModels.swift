//
//  LoadingModels.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

protocol LoadingModels {
    associatedtype LoadedModel: Model
    func load(completion:@escaping ([LoadedModel])->())
}
