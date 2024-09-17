//
//  DelayNav.swift
//  HumaniGo
//
//  Created by Apprenant 138 on 16/09/2024.
//

import SwiftUI


struct DelayedNavigationLink<Destination: View, Label: View>: View {
    @State private var linkIsActive = false

    private let delay: DispatchTimeInterval
    private var destination: () -> Destination
    private var label: () -> Label

    // Initializer with EmptyView as a default label
    init(delay: DispatchTimeInterval, destination: @escaping () -> Destination) where Label == EmptyView {
        self.init(delay: delay, destination: destination, label: EmptyView.init)
    }

    // General initializer with custom label
    init(delay: DispatchTimeInterval, destination: @escaping () -> Destination, label: @escaping () -> Label) {
        self.delay = delay
        self.destination = destination
        self.label = label
    }

    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(value: true) {
                    label() // Show the label for navigation
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                        linkIsActive = true
                    }
                }
                .navigationDestination(isPresented: $linkIsActive) {
                    destination() // Navigate to the destination
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        DelayedNavigationLink(delay: .seconds(2)) {
            Text("Destination View")
        } label: {
            Text("Tap to Navigate")
        }
    }
}


