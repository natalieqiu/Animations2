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

struct ContentView: View {
    // App State
    @State private var hasStarted = false
    @State private var questions: [Question] = sampleQuestions
    @State private var currentIndex: Int = 0
    @State private var incorrectCount: Int = 0

    var body: some View {
            if !hasStarted {
                WelcomeView(hasStarted: $hasStarted)
                    .transition(.scale.combined(with: .opacity))
            } else if currentIndex < questions.count {
                QuestionView(questionIndex: $currentIndex, incorrectCount: $incorrectCount, question: questions[currentIndex]).transition(.slide.combined(with: .opacity)) 
            } else {
                ResultView(incorrectCount: incorrectCount, total: questions.count, retake: retake)
                    .transition(.opacity.combined(with: .scale))
            }
    }

    private func retake() {
        withAnimation(.spring(response: 0.6, dampingFraction: 0.9)) {
            questions.shuffle() // shuffle questions (not answers)
            hasStarted = true
            currentIndex = 0
            incorrectCount = 0
        }
    }
}

#Preview {
    ContentView()
}
