//
//  MyDrawingsView.swift
//  LetsDraw2
//
//  Created by Aatmik Panse on 09/11/24.
//

import SwiftUI

struct MyDrawingsView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(0..<6) { index in
                        NavigationLink(destination: DrawingDetailView(title: "My Drawing \(index + 1)")) {
                            DrawingGridItem(title: "My Drawing \(index + 1)")
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("My Imagies")
        }
    }
}

struct DrawingGridItem: View {
    let title: String
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .aspectRatio(1, contentMode: .fit)
                .overlay(
                    Image(systemName: "photo")
                        .font(.system(size: 30))
                        .foregroundColor(.gray)
                )
            
            Text(title)
                .font(.caption)
                .lineLimit(1)
        }
    }
}


struct DrawingDetailView: View {
    let title: String
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray.opacity(0.2))
                .padding()
                .overlay(
                    Image(systemName: "photo")
                        .font(.system(size: 40))
                        .foregroundColor(.gray)
                )
            
            Text(title)
                .font(.headline)
            
            Spacer()
        }
        .navigationTitle("Drawing Detail")
    }
}


#Preview {
    MyDrawingsView()
}
