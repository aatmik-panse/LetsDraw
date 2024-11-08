//
//  CreateAIDrawingView.swift
//  LetsDraw2
//
//  Created by Aatmik Panse on 09/11/24.
//

import SwiftUI

struct CreateAIDrawingView: View {
    @State private var prompt: String = ""
    @State private var generatedImage: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            if !generatedImage {
                VStack(spacing: 16) {
                    TextField("Describe your drawing...", text: $prompt)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        generatedImage = true
                    }) {
                        Text("Generate Drawing")
                            .fontWeight(.medium)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            } else {
                // Preview Area
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.gray.opacity(0.2))
                    .padding()
                    .overlay(
                        Image(systemName: "photo")
                            .font(.system(size: 40))
                            .foregroundColor(.gray)
                    )
                
                Button(action: {
                    // Save drawing logic
                }) {
                    Text("Save Drawing")
                        .fontWeight(.medium)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
            
            Spacer()
        }
        .navigationTitle("Create with AI")
    }
}


#Preview {
    CreateAIDrawingView()
}
