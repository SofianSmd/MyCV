//
//  CVDownloadView.swift
//  MyCV
//
//  Created by Sofian Smimid on 11/07/2025.
//


import SwiftUI
import PDFKit

struct CVDownloadView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Mon CV")
                .font(.largeTitle)
                .bold()

            if let url = Bundle.main.url(forResource: "CV_Sofian_SMIMID_DevIOS", withExtension: "pdf"),
               let document = PDFDocument(url: url) {
                PDFKitView(document: document)
                    .frame(maxHeight: 500)
            } else {
                Text("Fichier CV introuvable")
            }

            Spacer()
        }
        .padding()
    }
}

struct CVDownloadView_Previews: PreviewProvider {
    static var previews: some View {
        CVDownloadView()
    }
}
