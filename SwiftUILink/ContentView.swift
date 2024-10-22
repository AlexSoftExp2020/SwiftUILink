//
//  ContentView.swift
//  SwiftUILink
//
//  Created by Oleksii on 21.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LinkGoToApple()
            LinkCallToAction()
            LinkSendAnEmail()
            LinkCredoAcademy()
            CustomLink()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct LinkGoToApple: View {
    var body: some View {
        Link("Go to Apple",
             destination: URL(string: "https://apple.com")!
        ).buttonStyle(.borderless)
    }
}

struct LinkCallToAction: View {
    var body: some View {
        Link("Call To Action",
             destination: URL(string: "tel:1234567890")!)
        .buttonStyle(.bordered)
    }
}

struct LinkSendAnEmail: View {
    var body: some View {
        Link("Send an Email",
             destination: URL(string: "mailto: swiftui@apple.com")!)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        .tint(.pink)
    }
}

struct LinkCredoAcademy: View {
    var body: some View {
        Link("Credo Academy",
             destination: URL(string: "https://credo.academy")!)
        .buttonStyle(.plain)
        .padding()
        .border(.primary, width: 2)
    }
}

struct CustomLink: View {
    var body: some View {
        Link(destination: URL(string: "https://www.apple.com")!,
             label: {
            HStack(spacing: 16, content: {
                Image(systemName: "apple.logo")
                Text("Apple Store")
            })
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(
                Capsule()
                    .fill(Color.blue)
            )
        })
    }
}
