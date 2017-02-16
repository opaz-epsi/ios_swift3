//
//  PostsFromREST.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import Foundation
import Alamofire

class PostsFromREST : LoadingPosts {
    func load(completion:@escaping ([Post])->Void) {
        
        Alamofire.request("https://jsonplaceholder.typicode.com/posts/").responseJSON { response in
            var posts = [Post]()
            
            if let JSON = response.result.value as? [AnyObject] {
                for postJSON in JSON {
                    let postDictionary = postJSON as! [String: AnyObject]
                    let title = postDictionary["title"] as! String
                    let body = postDictionary["body"] as! String
                    
                    let post = Post(title: title, body: body)
                    
                    posts.append(post)
                }
            }
            completion(posts)
        }
        
    }
}
