//
//  HomeView.swift
//  MyCV
//
//  Created by Sofian Smimid on 10/07/2025.
//


import SwiftUI


struct HomeView: View {
    
    @State private var animate = false
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.orange.opacity(0.5), .gray.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()

            VStack(spacing: 25) {
                
                Image("sofian")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.black, lineWidth: 3)
                    )
                    .shadow(radius: 10)
                    .padding(60)

                Text("Sofian Smimid")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.primary)

                Text("Développeur iOS SwiftUI · France")
                    .font(.headline)
                    .foregroundColor(.secondary)

                Text("Bienvenue dans mon CV interactif 🎯\nCréé avec SwiftUI")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .padding(.horizontal)

                Spacer()
            }
            .padding(.top, 60)
            .opacity(animate ? 1 : 0)
            .offset(y: animate ? 0 : 30)
            .animation(.easeOut(duration: 0.8), value: animate)
        }
        .onAppear {
            animate = true
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
