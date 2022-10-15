//
//  SADynamicConfigurableWidgetEntryView.swift
//  SABlogsWidgetExtension
//
//  Created by Amit Samant on 09/10/22.
//

import SwiftUI
import WidgetKit

struct SADynamicConfigurableWidgetEntryView : View {
    
    var entry: SADynamicConfigurableTimelineProvider.Entry
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(entry.post.title).font(.headline)
            Text(entry.date, style: .time).font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(8)
        .background(.thinMaterial)
        .clipShape(ContainerRelativeShape())
        .padding(8)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
    }
}

struct SADynamicConfigurableWidgetEntryView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(
            [
                WidgetFamily.systemSmall,
                WidgetFamily.systemMedium,
                WidgetFamily.systemLarge
            ], id: \.self) { family in
                SADynamicConfigurableWidgetEntryView(
                entry: PostEntry(
                    date: Date(),
                    post: Post(
                        image: URL(string: "https://www.swiftanytime.com/content/images/size/w1200/2022/07/asyncimage-swiftui.jpg")!,
                        title: "AsyncImage in SwiftUI", description: "Almost all the modern apps and websites are driven by images and videos. The images you see on shopping apps"
                    )
                )
            )
            .previewContext(
                WidgetPreviewContext(family: family)
            )
        }
        
    }
}
