//
//  PostsFromREST.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

extension Post {
    init(data: JSON) {
        title = data["title"].stringValue
        body = data["body"].stringValue
    }
}

class PostsFromREST : LoadingPosts {
    func load(completion:@escaping ([Post])->Void) {
        
        Alamofire.request("https://jsonplaceholder.typicode.com/posts/").responseJSON { response in
            var posts = [Post]()
            
            if let JSONData = response.result.value as? [AnyObject] {
                let postsData = JSON(JSONData)
                posts = postsData.arrayValue.map { Post(data: $0) }
            }
            completion(posts)
        }
        
    }
}
