//
//  SwiftUIView.swift
//  Animations2
//
//  Created by Natalie Q on 3/25/26.
//

import SwiftUI

//struct ButtonParent: View {
//    
//    var text = "default answer"
//    
//    var body: some View {
//        Text(text).padding().background(.blue).clipShape(.capsule)
//    }
//}

struct AnswerRow: View {
    @Binding var questionIndex: Int
    @Binding var incorrectCount: Int
    var isCorrectSelected: Bool
    var answerText: String
    
    // Animation states
    @State private var scale: CGFloat = 1
    @State private var rotation: Double = 0
    @State private var didTap = false
    
    
    var body: some View {
        Text(answerText).padding()
            .foregroundStyle(.white)
            .background(didTap ? Color.red : Color.green)
            .clipShape(.capsule)
            .onTapGesture {
                if isCorrectSelected {
                    withAnimation(.linear(duration: 0.3)) {
                        scale = 30
                    } completion: {
                        questionIndex += 1
                        withAnimation(.linear(duration: 0.3)) {
                            scale = 1
                        }
                    }
                }
                else {
                    withAnimation(.easeInOut(duration: 0.08).repeatCount(4, autoreverses: true)) {
                        didTap = true
                        rotation = 15
                    } completion: {
                        incorrectCount += 1
                        rotation = 0
                        didTap = false
                    }
                    
                }
            }
            .scaleEffect(scale)
            .rotationEffect(.degrees(rotation))
    }
}
