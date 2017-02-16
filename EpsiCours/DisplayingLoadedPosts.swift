//
//  DisplayingLoadedPosts.swift
//  EpsiCours
//
//  Created by Ophir on 15/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

protocol DisplayingLoadedPosts : DisplayingLoadedModels {
    associatedtype LoadPosts: LoadingPosts
    associatedtype DisplayPosts: DisplayingPosts
    
    var loadingModels: LoadPosts { get }
    var displayingModels: DisplayPosts! { get }
}
