//
//  PostsViewController.swift
//  EpsiCours
//
//  Created by Ophir on 03/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController, DisplayingPostsFromService {
    @IBOutlet var displayingModels : PostsCollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadAnDisplay()
    }
}










