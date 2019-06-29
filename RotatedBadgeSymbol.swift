//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Brett McDonald on 29/06/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol : View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#if DEBUG
struct RotatedBadgeSymbol_Previews : PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
#endif
