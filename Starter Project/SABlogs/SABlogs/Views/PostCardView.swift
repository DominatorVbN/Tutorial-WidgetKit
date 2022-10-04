//
//  PostCardView.swift
//  SABlogs
//
//  Created by Amit Samant on 05/10/22.
//

import SwiftUI

struct PostCardView: View {
    
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: post.image) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Rectangle()
                    .foregroundColor(Color(uiColor: .secondarySystemFill))
            }
            .frame(height: 200)
            .clipShape(ContainerRelativeShape())
            .padding([.horizontal,.top], 8)
            VStack(alignment: .leading, spacing: 8) {
                Text(post.title)
                    .font(.title3)
                Text(post.description)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(.top, 8)
            .padding([.bottom,.horizontal])
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.thickMaterial)
        )
        .containerShape(RoundedRectangle(cornerRadius: 20))
        .listRowSeparator(.hidden)
        .compositingGroup()
        .shadow(radius: 1)
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(
            post:
                Post(
                    image: URL(string: "https://www.swiftanytime.com/content/images/size/w1200/2022/06/SwiftUI-Colors-and-SF-Symbols-1.jpeg")!,
                    title: "What's new in SwiftUI Colors and SF Symbols? ft. WWDC'22",
                    description: "SwiftUI was launched in 2019 and since then Apple has been constantly adding features and updates to make it production ready. Following that, there were drastic amount of updates made in SwiftUI 4. So, without further ado, let's dive into new updates on colors, styles and SF symbol "
                )
        )
    }
}
