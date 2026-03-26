//
//  Question.swift
//  Animations2
//
//  Created by Natalie Q on 3/25/26.
//

import Foundation
import SwiftUI
//
struct Question {
    let question:String
    let answers:[String] //array of 4 strings
    let correctAnswerIdx:Int // from 0 to 3
    var gotCorrect:Bool = false
}

//let Questions:[Question] = [
//    Question(question: "What's my name", correctAnswer:)
//]
//
//

struct QuestionView: View {
    @State private var didTap:Bool = false
    @State private var animate: Bool = true
    
    var question = Question(question: "What year is it?", answers: ["2026","2o26", "twenty-twenty-six", "the year it is now"], correctAnswerIdx: 3)
    
    let cols = [GridItem(.flexible()), GridItem(.flexible())]

    
    var body: some View {
        
        LazyVGrid(columns: cols, spacing: 15) {
            // TODO: implement with grid? item?? Generally just fix it wow 
            ForEach(question.answers) { ans in
                VStack {
                    HStack {
                        Text(attendee.lastName)
                        Text(attendee.firstName)
                            .foregroundStyle(.secondary)
                        Spacer()
                    }
                    HStack {
                        Text(attendee.email)
                        Spacer()
                    }
                    .foregroundStyle(.secondary)
                    .font(.caption)
                }
            }
        }
    }
}

#Preview {
    QuestionView()
}
