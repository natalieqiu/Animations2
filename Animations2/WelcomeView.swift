//
//  WelcomeView.swift
//  Animations2
//
//  Created by Thao Nguyen on 3/26/26.
//
import SwiftUI


struct WelcomeView: View {
    @Binding var hasStarted: Bool
    @State private var scale: CGFloat = 0.9
    @State private var opacity: Double = 1.0

    var body: some View {
        VStack(spacing: 24) {
            Text("Ready?")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
                        scale = 1.05
                    }
                }
                .scaleEffect(scale)

            Text("Tap begin to start!")
                .foregroundStyle(.secondary)
                .padding(.horizontal)

            Button {
                withAnimation(.easeOut(duration: 0.4)) {
                    opacity = 0.0
                } completion: {
                    hasStarted = true
                }
            } label: {
                Text("Begin")
                    .font(.headline)
                    .padding(.horizontal, 32)
                    .padding(.vertical, 14)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                    .shadow(radius: 6, y: 4)
            }
            .buttonStyle(.plain)
            
        }.opacity(opacity)
    }
}

#Preview {
    @State @Previewable var hasStarted: Bool = false
    WelcomeView(hasStarted: $hasStarted)
}
