//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Brett McDonald on 24/06/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct Badge : View {
    var body: some View {
        BadgeBackground()
    }
}

#if DEBUG
struct SwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
