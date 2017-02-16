//
//  ViewModel.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

protocol ViewModel {
    associatedtype SourceModel:Model
    static func from(model: SourceModel) -> Self
}
