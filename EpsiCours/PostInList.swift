//
//  PostInList.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

struct PostInList : PostViewModel {
    typealias SourceModel = Post

    let header: String
    
    static func from(model: SourceModel) -> PostInList {
        return PostInList(header: model.title)
    }
}
