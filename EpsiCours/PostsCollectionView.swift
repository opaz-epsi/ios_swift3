//
//  PostsCollectionView.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import UIKit

class PostCell : UICollectionViewCell {
    @IBOutlet var titleLabel: UILabel!
    
    func setup(post: PostInList) {
        titleLabel.text = post.header
    }
}

class PostsCollectionView: UICollectionView, UICollectionViewDataSource, DisplayingPosts {
    var posts = [PostInList]()
    
    func setup(viewModels: [PostInList]) {
        self.dataSource = self
        
        self.posts = viewModels
        reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let postCell = self.dequeueReusableCell(withReuseIdentifier: "PostCell", for: indexPath) as! PostCell
        
        let post = posts[indexPath.item]        
        postCell.setup(post: post)
        
        return postCell
    }
}
