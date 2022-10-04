//
//  PostCategoryPickerView.swift
//  SABlogs
//
//  Created by Amit Samant on 05/10/22.
//

import SwiftUI

struct PostCategoryPickerView: View {
    
    let catergories: [PostCategory]
    @Binding var selectedPostCategory: PostCategory
    
    var body: some View {
        Picker("Category", selection: $selectedPostCategory) {
            ForEach(catergories, id: \.self) { category in
                Text(category.rawValue)
                    .tag(category)
            }
        }
        .pickerStyle(SegmentedPickerStyle())    }
}

struct PostCategoryPickerView_Previews: PreviewProvider {
    
    @State static var selectedPostCategory: PostCategory = .featured
    
    static var previews: some View {
        PostCategoryPickerView(catergories: PostCategory.allCases, selectedPostCategory: $selectedPostCategory)
    }
}
