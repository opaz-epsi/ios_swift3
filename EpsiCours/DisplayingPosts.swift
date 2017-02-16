//
//  DisplayingPosts.swift
//  EpsiCours
//
//  Created by Ophir on 15/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

protocol PostViewModel : ViewModel {
    static func from(model: Post) -> Self
}

protocol DisplayingPosts : DisplayingModels {
    associatedtype PostVM : PostViewModel
    func setup(viewModels: [PostVM])
}
