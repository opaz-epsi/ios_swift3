//
//  Posts.swift
//  EpsiCours
//
//  Created by Ophir on 15/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

@testable import EpsiCours

// MARK: Loading posts

class SpyLoadingPosts : LoadingPosts {
    var wasCalled = false
    
    func load(completion:@escaping ([Post])->()) {
        wasCalled = true
    }
}

class StubLoadingPosts : LoadingPosts {
    var posts = [Post(title:"Post 1", body: "")]
    func load(completion:@escaping ([Post])->()) {
        completion(posts)
    }
}

// MARK: Displaying posts

final class DummyPostViewModel : PostViewModel {
    typealias SourceModel = Post

    static func from(model: SourceModel) -> DummyPostViewModel {
        return DummyPostViewModel()
    }
}

class DummyDisplayingPosts : DisplayingPosts {
    func display(posts: [Post]) {}
    func setup(viewModels: [DummyPostViewModel]) {}
}

struct SpyPostViewModel : PostViewModel {
    typealias SourceModel = Post

    let post: Post
    static func from(model: SourceModel) -> SpyPostViewModel {
        return SpyPostViewModel(post: model)
    }
}

class SpyDisplayingPosts : DisplayingPosts {
    var displayedPostsViewModels : [SpyPostViewModel]?
    func setup(viewModels: [SpyPostViewModel]) {
        displayedPostsViewModels = viewModels
    }
}
