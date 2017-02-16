//
//  DisplayingLoadedModels.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

protocol DisplayingLoadedModels {
    
    associatedtype Load: LoadingModels
    associatedtype Display: DisplayingModels
    
    var loadingModels: Load{ get }
    var displayingModels: Display! { get }
}

extension DisplayingLoadedModels where Load.LoadedModel ==  Display.DisplayedModel.SourceModel {
    func loadAnDisplay() {
        loadingModels.load { list in
            self.displayingModels.display(list: list)
        }
    }
}
