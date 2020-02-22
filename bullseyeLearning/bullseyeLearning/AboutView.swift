//
//  AboutView.swift
//  bullseyeLearning
//
//  Created by wyn on 2020/2/22.
//  Copyright © 2020 Wyn. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            Text("🎯Bullseye🎯")
            Text("This is bullseye, the game where you can win points and earn fame by dragging")
            Text("🎯Bullseye🎯")
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414 ))
    }
}
