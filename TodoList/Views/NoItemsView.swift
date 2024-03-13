//
//  NoItemsView.swift
//  TodoList
//
//  Created by Mert Durkaya on 27/02/2024.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("You can add a new item by clicking the button at the top right corner.")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 16)
                NavigationLink {
                    AddView()
                } label: {
                    Text("Add an item 🥳")
                        .foregroundStyle(.white)
                        .font(.title3)
                        .bold()
                        .frame(height: 48)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                        )
                        .padding(.horizontal, animate ? 36 : 42)
                        .shadow(color: animate ? secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
                                radius: animate ? 32 : 8,
                                x: 0,
                                y: animate ? 48 : 32)
                        .scaleEffect(animate ? 1.05 : 1.0)
                        .offset(y: animate ? 0 : 3)
                }
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding()
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                .easeInOut(duration: 1.5)
                .repeatForever(autoreverses: true)) {
                    animate.toggle()
                }
        }
    }
}

#Preview {
    NavigationStack {
        NoItemsView()
            .navigationTitle("Title")
    }
}
