//
//  Post.swift
//  EpsiCours
//
//  Created by Ophir on 15/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

struct Post : Model, Equatable {
    let title: String
    let body: String
        
    public static func ==(lhs: Post, rhs: Post) -> Bool {
        return lhs.title == rhs.title
    }
}
