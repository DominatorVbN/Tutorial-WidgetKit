//
//  PostsView.swift
//  SABlogs
//
//  Created by Amit Samant on 05/10/22.
//

import SwiftUI

struct PostsView: View {
    
    @StateObject var viewModel = PostsViewModel()
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(viewModel.posts) { post in
                        PostCardView(post: post)
                    }
                } header: {
                    PostCategoryPickerView(
                        catergories: PostCategory.allCases,
                        selectedPostCategory: $viewModel.selectedPostCategory
                    )
                }
            }
            .listStyle(.plain)
            .navigationTitle("SA Blogs")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
