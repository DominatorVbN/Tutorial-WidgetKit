//
//  PostEntry.swift
//  SABlogsWidgetExtension
//
//  Created by Amit Samant on 06/10/22.
//

import Foundation
import WidgetKit

struct PostEntry: TimelineEntry {
    let date: Date
    let post: Post
}
