//
//  SADynamicConfigurableWidget.swift
//  SABlogs
//
//  Created by Amit Samant on 05/10/22.
//

import WidgetKit
import SwiftUI
import Intents

@main
struct SADynamicConfigurableWidget: Widget {
    
    let kind: String = "SADynamicConfigurableWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(
            kind: kind,
            intent: ConfigurationIntent.self,
            provider: SADynamicConfigurableTimelineProvider()
        ) { entry in
            SADynamicConfigurableWidgetEntryView(entry: entry)
        }
        .supportedFamilies([.systemSmall,.systemMedium,.systemLarge])
        .configurationDisplayName("SA Blogs")
        .description("This is a configurable widget that shows featured and latest blogs from SwiftAnytime")
    }
}

