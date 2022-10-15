//
//  SADynamicConfigurableTimelineProvider.swift
//  SABlogsWidgetExtension
//
//  Created by Amit Samant on 07/10/22.
//

import Foundation
import WidgetKit

struct SADynamicConfigurableTimelineProvider: IntentTimelineProvider {
    
    static var repository = PostRepository()
    
    func placeholder(in context: Context) -> PostEntry {
        PostEntry(
            date: Date(),
            post: Post(
                image: FileManager.default.temporaryDirectory,
                title: "Title..",
                description: "Description.."
            )
        )
    }
    
    func getSnapshot(
        for configuration: ConfigurationIntent,
        in context: Context,
        completion: @escaping (PostEntry) -> Void
    ) {
        let posts: Posts
        if configuration.category == .featured {
            posts = Self.repository.featuredPosts
        } else {
            posts = Self.repository.latestPosts
        }
        let date = Date()
        let postIndex = Int(date.timeIntervalSince1970) % (posts.count-1)
        let postEntry = PostEntry(date: date, post: posts[postIndex])
        completion(postEntry)
    }
    
    func getTimeline(
        for configuration: ConfigurationIntent,
        in context: Context,
        completion: @escaping (Timeline<PostEntry>
        ) -> Void) {
        
        let posts: Posts
        if configuration.category == .featured {
            posts = Self.repository.featuredPosts
        } else {
            posts = Self.repository.latestPosts
        }
        
        let currentDate = Date()
        var entries: [PostEntry] = []
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let postIndex = Int(entryDate.timeIntervalSince1970) % (posts.count-1)
            let entry = PostEntry(date: entryDate, post: posts[postIndex])
            entries.append(entry)
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
        
    }
    
}
