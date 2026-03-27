//
//  SampleData.swift
//  Animations2
//
//  Created by Thao Nguyen on 3/26/26.
//

let sampleQuestions = [
    Question(question: "What year is it?", answers: ["2026","2o26", "twenty-twenty-six", "the year it is now"], correctIndex: 3),
    Question(question: "What is @Observable used for?", answers: [
        "To mark a view as visible",
        "To notify views when state changes",
        "To schedule animations",
        "To create async tasks"
    ], correctIndex: 1),
    Question(question: "Which modifier clips to a capsule?", answers: [
        ".rounded()",
        ".capsule()",
        ".clipShape(Capsule())",
        ".cornerRadius(99)"
    ], correctIndex: 2),
    Question(question: "Which gesture detects taps?", answers: [
        "DragGesture()",
        "TapGesture()",
        "LongPressGesture()",
        "RotateGesture()"
    ], correctIndex: 1),
    Question(question: "Which transition makes a view grow?", answers: [
        ".transition(.opacity)",
        ".transition(.move(edge: .bottom))",
        ".transition(.scale)",
        ".transition(.slide)"
    ], correctIndex: 2)
]
