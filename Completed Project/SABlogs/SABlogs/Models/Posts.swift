//
//  Posts.swift
//  SABlogs
//
//  Created by Amit Samant on 05/10/22.
//

import Foundation

typealias Posts = [Post]

struct Post: Identifiable {
    let id = UUID()
    let image: URL
    let title: String
    let description: String
}

