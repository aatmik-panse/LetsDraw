//
//  PreExistingDrawingsView.swift
//  LetsDraw2
//
//  Created by Aatmik Panse on 09/11/24.
//

import SwiftUI

struct PreExistingDrawingsView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    let categories = ["Animals", "Flowers", "Food", "Nature", "Place", "Travel"]

    var body: some View {
        // Categories Section
        VStack(alignment: .leading) {
            Text("Categories")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(categories, id: \.self) { category in
                        CategoryCard(category: category)
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.vertical)
        Text("Top Imagies")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(0..<10) { index in
                    NavigationLink(destination: DrawingDetailView(title: "Drawing \(index + 1)")) {
                        DrawingGridItem(title: "Drawing \(index + 1)")
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Pre-existing Drawings")
    }
}
struct CategoryCard: View {
    let category: String
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 80, height: 80)
                .overlay(
                    Text(category)
                        .font(.caption)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(5)
                )
        }
    }
}

#Preview {
    PreExistingDrawingsView()
}
