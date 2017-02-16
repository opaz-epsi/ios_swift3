//
//  LoadingPosts.swift
//  EpsiCours
//
//  Created by Ophir on 15/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation

protocol LoadingPosts : LoadingModels {
    func load(completion:@escaping ([Post])->())
}
