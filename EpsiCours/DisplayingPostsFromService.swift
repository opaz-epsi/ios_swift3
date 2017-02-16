//
//  DisplayingPostsFromService.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

protocol DisplayingPostsFromService : DisplayingLoadedPosts {
    typealias PostsService = PostsFromREST
}

extension DisplayingPostsFromService {
    var loadingModels : PostsService {
        return PostsService()
    }
}
