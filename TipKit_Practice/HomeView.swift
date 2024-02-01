//
//  HomeView.swift
//  TipKit_Practice
//
//  Created by Prajwal U on 01/02/24.
//

import SwiftUI
import TipKit

struct HomeView: View {
    
    @State private var colors = MockData.colors
    let addColorTip = AddColorTip()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ForEach(colors , id: \.self) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill($0.gradient)
                        .frame(height: 100)
                        .contextMenu {
                            Button("Favourite", systemImage: "star") {}
                        }
                }
            }
            .navigationTitle("PixelPulse")
            .padding(.horizontal)
            .toolbar {
                Button {
                    colors.insert(.random, at: 0)                }
            label: {
                Image(systemName: "plus")
            }
            }
            .popoverTip(addColorTip)
        }
    }
}

#Preview {
    HomeView()
        .task {
            try? Tips.configure([
                .displayFrequency(.immediate)
                // .datastoreLocation(.applicationDefault)
            ])
        }
    
}

extension Color {
    static var random: Color {
        return Color(red: Double.random(in: 0 ... 1), green: Double.random(in: 0 ... 1), blue: Double.random(in: 0 ... 1))
    }
}

struct MockData{
    static let colors = [Color.random,Color.random,Color.random,Color.random]
    
}
