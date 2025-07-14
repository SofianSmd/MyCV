//
//  ContactView.swift
//  MyCV
//
//  Created by Sofian Smimid on 10/07/2025.
//

import SwiftUI

struct ContactView: View {
    @State private var animate = false

    var body: some View {
        ZStack {
            LinearGradient(colors: [.orange.opacity(0.5), .gray.opacity(0.5)],
                           startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Text("Contact")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.primary)
                    .padding(.top, 50)
                    .opacity(animate ? 1 : 0)
                    .offset(y: animate ? 0 : -40)
                    .animation(.easeOut(duration: 0.6), value: animate)

                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.blue)
                        Text("sofian.smimid@gmail.com")
                    }

                    HStack {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.green)
                        Text("07 86 54 70 02")
                    }

                }
                .font(.system(size: 18, weight: .medium))
                .padding()
                .background(Color.white.opacity(0.85))
                .cornerRadius(20)
                .shadow(radius: 10)
                .opacity(animate ? 1 : 0)
                .offset(y: animate ? 0 : 40)
                .animation(.easeOut(duration: 0.8).delay(0.2), value: animate)

                Spacer()
            }
            .padding()
        }
        .onAppear {
            animate = true
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews : some View {
        ContactView()
    }
}
