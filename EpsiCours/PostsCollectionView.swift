//
//  PostsCollectionView.swift
//  EpsiCours
//
//  Created by Ophir on 16/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import UIKit

class PostCell : UICollectionViewCell {
    static let identifier = "PostCell"
    
    @IBOutlet var titleLabel: UILabel!
    
    func setup(post: PostInList) {
        titleLabel.text = post.header
    }
}

class PostsCollectionView: UICollectionView, UICollectionViewDataSource, DisplayingPosts {
    var posts = [PostInList]()
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        self.dataSource = self
    }
    
    func setup(viewModels: [PostInList]) {
        self.posts = viewModels
        reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let postCell = dequeuePostCell(for: indexPath)
        let post = posts[indexPath.item]        
        postCell.setup(post: post)
        
        return postCell
    }
    
    func dequeuePostCell(for indexPath: IndexPath) -> PostCell {
        return self.dequeueReusableCell(withReuseIdentifier: PostCell.identifier, for: indexPath) as! PostCell
    }
}
