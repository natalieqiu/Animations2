//
//  ResultView.swift
//  Animations2
//
//  Created by Thao Nguyen on 3/26/26.
//

import SwiftUI
import Foundation

struct ResultView: View {
    var incorrectCount: Int = 0
    var total: Int = 4
    var retake: () -> Void = { }
    @State private var scale: CGFloat = 1.0
    var body: some View {
        VStack(spacing: 24)
        {
            Text("Results")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
                        scale = 1.05
                    }
                }
                .scaleEffect(scale)
            if (incorrectCount > 0) {
                Text("You selected the wrong answers \(incorrectCount) times for \(total) questions.")
                Button {
                    retake()
                } label: {
                    Text("Take it again!")
                        .font(.headline)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 14)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                        .shadow(radius: 6, y: 4)
                }
                .buttonStyle(.plain)
            }
            else {
                Text("You got it all right!")
                Button {
                    retake()
                } label: {
                    Text("Take it again!")
                        .font(.headline)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 14)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                        .shadow(radius: 6, y: 4)
                }
                .buttonStyle(.plain)
            }
            
        }
    }
}

#Preview {
    ResultView()
}
