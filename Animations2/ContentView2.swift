//
//  ContentView.swift
//  Animations2
//
//  Created by Natalie Q on 3/25/26.
//

//
//  ContentView.swift
//  MoreAnimations
//
//  Created by Brian Krupp on 3/5/26.
//

import SwiftUI

struct ContentView2: View {
    @State private var showDetails = false
    var body: some View {
        VStack {
            Text("What is @Observable Used For?")
                .font(.headline)
                .phaseAnimator([0, 1, 2], trigger:showDetails) { view, phase in
                    view
                        .offset(y: phase == 0 ? 0 : -20)
                        .scaleEffect(phase == 1 ? 1.2 : 1)
                }
                .onTapGesture {
                
                    withAnimation {
                        showDetails.toggle()
                    }
                }
            if showDetails {
                Text("@Observable can be used on a property to notify views when the state changes.")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView2()
}
