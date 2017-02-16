//
//  DisplayingLoadedPostsTests.swift
//  EpsiCours
//
//  Created by Ophir on 15/02/2017.
//  Copyright © 2017 Epsi. All rights reserved.
//

import XCTest
@testable import EpsiCours

class DisplayingLoadedPostsTests : XCTestCase {

    class DummyDisplayingSpyLoadingPosts : DisplayingLoadedPosts {
        let loadingModels = SpyLoadingPosts()
        let displayingModels:DummyDisplayingPosts! = DummyDisplayingPosts()
    }

    class SpyDisplayingStubLoadingPosts : DisplayingLoadedPosts {
        let loadingModels = StubLoadingPosts()
        let displayingModels:SpyDisplayingPosts! = SpyDisplayingPosts()
        
        var displayedPosts : [Post]? {
            get {
                return displayingModels.displayedPostsViewModels?.map { $0.post }
            }
        }
    }

    func testRuns_LoadsPosts() {
        let displayingLoadedPosts =  DummyDisplayingSpyLoadingPosts()
        displayingLoadedPosts.loadAnDisplay()
        
        XCTAssertTrue(displayingLoadedPosts.loadingModels.wasCalled)
    }
  
    func testPostsLoaded_DisplaysThem() {
        let displayingLoadedPosts =  SpyDisplayingStubLoadingPosts()
        displayingLoadedPosts.loadAnDisplay()

        XCTAssertEqual(displayingLoadedPosts.displayedPosts!, displayingLoadedPosts.loadingModels.posts)
    }
}
