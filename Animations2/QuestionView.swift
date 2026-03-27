//
//  QuestionView.swift
//  Animations2
//
//  Created by Thao Nguyen on 3/26/26.
//

import SwiftUI

struct QuestionView: View {
    @Binding var questionIndex: Int
    @Binding var incorrectCount: Int

    
    var question: Question
    
    let cols = [GridItem(.flexible()), GridItem(.flexible())]

    
    var body: some View {
        VStack {
            Text(question.question)
                .font(.largeTitle)
                .bold()
                .padding()
            LazyVGrid(columns: cols, spacing: 15) {
                ForEach(question.answers.indices, id: \.self) { index in
                    AnswerRow(questionIndex: $questionIndex, incorrectCount: $incorrectCount, isCorrectSelected: index == question.correctIndex,  answerText: question.answers[index])
                }
            }
        }
    }
}

#Preview {
    @State @Previewable var questionIndex = 0
    @State @Previewable var incorrectCount = 0
    QuestionView(questionIndex: $questionIndex, incorrectCount: $incorrectCount, question: Question(question: "What year is it?", answers: ["2026","2o26", "twenty-twenty-six", "the year it is now"], correctIndex: 3))
}
