//
//  Home.swift
//  LetsDraw2
//
//  Created by Aatmik Panse on 08/11/24.
//

import SwiftUI

struct Home: View {
        
        var body: some View {
            NavigationView {
                ScrollView {
                    VStack(spacing: 25) {
                        // Main Options
                        VStack(spacing: 20) {
                            
                            // Create with AI Option
                            NavigationLink(destination: CreateAIDrawingView()) {
                                MainOptionCard(
                                    title: "Create with AI",
                                    subtitle: "Generate unique artwork",
                                    systemImage: "wand.and.stars",
                                    backgroundImage: "magicKid"
                                )
                            }
                            // Pre-existing Drawings Option
                            NavigationLink(destination: PreExistingDrawingsView()) {
                                MainOptionCard(
                                    title: "Pre-existing Drawings",
                                    subtitle: "Browse our collection",
                                    systemImage: "photo.stack",
                                    backgroundImage: "flower"
                                )
                            }

                        }
                        .padding(.horizontal)
                    }
                    .padding(.vertical)
                }
                .navigationTitle("Inspi")
            }
        }
    
}

struct MainOptionCard: View {
    let title: String
    let subtitle: String
    let systemImage: String
    let backgroundImage: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            // Background Image
            Image(backgroundImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .cornerRadius(12)
            
            // Overlay with Title and Subtitle
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.black.opacity(0.4))
            .cornerRadius(12)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .shadow(radius: 4)
    }
}

#Preview {
    Home()
}
