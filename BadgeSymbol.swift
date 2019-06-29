//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by Brett McDonald on 24/06/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct BadgeSymbol : View {
    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.030
                let middle = width / 2
                let topWidth = 0.226 * width
                let topHeight = 0.488 * height
                
                //points of the shape
                let topPoint = CGPoint(x: middle, y: spacing)
                let leftPoint = CGPoint(x: middle - topWidth, y: topHeight - spacing)
                let centrePoint = CGPoint(x: middle, y: topHeight / 2 + spacing)
                let rightPoint = CGPoint(x: middle + topWidth, y: topHeight - spacing)
                
                path.addLines([
                    topPoint,
                    leftPoint,
                    centrePoint,
                    rightPoint,
                    topPoint
                ])
                
                path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
                path.addLines([
                    CGPoint(x: middle - topWidth, y: topHeight + spacing),
                    CGPoint(x: spacing, y: height - spacing),
                    CGPoint(x: width - spacing, y: height - spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                ])
            }
            .fill(Self.symbolColor)
        }
    }
}

#if DEBUG
struct BadgeSymbol_Previews : PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
//        .previewDevice("iPad Pro (11-inch)")
    }
}
#endif
