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
    var isCorrectSelected: Bool
    var answerText: String
    var body: some View {
        if isCorrectSelected {
            correctAnswer(text: answerText)
            
        }
        else {
            wrongAnswer(text: answerText)
        }
    }
}

struct wrongAnswer: View {
    @State private var didTap:Bool = false
    @State private var animate: Bool = true
    
    var text = "default wrong answer"
    
    var body: some View {
        PhaseAnimator([0,-15,15,-15,180], trigger: animate){ phase in
        Text(text).padding()
            .background(didTap ? .red : .blue)
            .clipShape(.capsule)
            .onTapGesture {
                didTap = true
                animate.toggle()
            }
            .rotationEffect(Angle(degrees:phase))
            }
        }
    }

struct correctAnswer: View {
    
    @State private var didTap: Bool = false
    @State private var animate: Bool = true
    
    var text = "default correct answer"
    
    var body: some View {
        PhaseAnimator([1,99], trigger: animate){ phase in
            Text(text).padding()
                .background(didTap ? .green : .blue)
                .clipShape(.capsule)
                .onTapGesture {
                    didTap = true
                    animate.toggle()
                }
                .scaleEffect(phase)
        }
    }
}


#Preview {
    wrongAnswer()
    correctAnswer()
}
