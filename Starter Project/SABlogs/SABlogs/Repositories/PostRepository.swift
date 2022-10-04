//
//  PostRepository.swift
//  SABlogs
//
//  Created by Amit Samant on 05/10/22.
//

import Foundation

class PostRepository {
    
    lazy var featuredPosts: Posts = {
        return getMockedfeaturedPosts()
    }()
    
    lazy var latestPosts: Posts = {
        return getMockedLatestPosts()
    }()
    
    func getPostFor(category: PostCategory) -> Posts {
        switch category {
        case .featured:
            return featuredPosts
        case .latest:
            return latestPosts
        }
    }
}


extension PostRepository {
    
    private func getMockedfeaturedPosts() -> Posts {
        return [
            Post(
                image: URL(string: "https://www.swiftanytime.com/content/images/size/w1200/2022/06/SwiftUI-Colors-and-SF-Symbols-1.jpeg")!,
                title: "What's new in SwiftUI Colors and SF Symbols? ft. WWDC'22",
                description: "SwiftUI was launched in 2019 and since then Apple has been constantly adding features and updates to make it production ready. Following that, there were drastic amount of updates made in SwiftUI 4. So, without further ado, let's dive into new updates on colors, styles and SF symbol "
            ),
            Post(
                image: URL(string: "https://www.swiftanytime.com/content/images/size/w1200/2022/06/share-play-header.jpg")!,
                title: "How to implement Apple's SharePlay? WWDC'22",
                description: "In this article, you will learn about the basics of UIView. In addition, you will learn the purpose of UIView and initialization and implementation of UIView along with "
            ),
            Post(
                image: URL(string: "https://www.swiftanytime.com/content/images/size/w1200/2022/09/UIView.png")!,
                title: "UIView 101",
                description: "In this article, you will learn about the basics of UIView. In addition, you will learn the purpose of UIView and initialization and implementation of UIView along with "
            )
        ]
    }
    
    private func getMockedLatestPosts() -> Posts {
        return [
            Post(
                image: URL(string: "https://www.swiftanytime.com/content/images/size/w1200/2022/06/SwiftUI-Colors-and-SF-Symbols-1.jpeg")!,
                title: "[Latest] What's new in SwiftUI Colors and SF Symbols? ft. WWDC'22",
                description: "SwiftUI was launched in 2019 and since then Apple has been constantly adding features and updates to make it production ready. Following that, there were drastic amount of updates made in SwiftUI 4. So, without further ado, let's dive into new updates on colors, styles and SF symbol "
            ),
            Post(
                image: URL(string: "https://www.swiftanytime.com/content/images/size/w1200/2022/06/share-play-header.jpg")!,
                title: "[Latest] How to implement Apple's SharePlay? WWDC'22",
                description: "In this article, you will learn about the basics of UIView. In addition, you will learn the purpose of UIView and initialization and implementation of UIView along with "
            ),
            Post(
                image: URL(string: "https://www.swiftanytime.com/content/images/size/w1200/2022/09/UIView.png")!,
                title: "[Latest] UIView 101",
                description: "In this article, you will learn about the basics of UIView. In addition, you will learn the purpose of UIView and initialization and implementation of UIView along with "
            )
        ]
    }
    
}
