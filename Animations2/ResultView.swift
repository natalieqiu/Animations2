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
    var body: some View {
        Text("You got \(incorrectCount) wrong out of \(total).")
        Button("Try again") {
            retake()
        }
    }
}

#Preview {
    ResultView()
}
