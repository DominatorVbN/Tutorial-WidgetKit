//
//  PostsViewModel.swift
//  SABlogs
//
//  Created by Amit Samant on 05/10/22.
//

import Foundation

class PostsViewModel: ObservableObject {
    
    let postRepository = PostRepository()
    @Published var selectedPostCategory: PostCategory = .featured
    
    var posts: Posts {
        postRepository.getPostFor(category: selectedPostCategory)
    }
    
}
