//
//  MotivationDownloadView.swift
//  MyCV
//
//  Created by Sofian Smimid on 11/07/2025.
//

import SwiftUI
import PDFKit

struct MotivationDownloadView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Ma lettre de motivation")
                .font(.largeTitle)
                .bold()

            if let url = Bundle.main.url(forResource: "LM_SMIMID_Sofian", withExtension: "pdf"),
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

struct MotivationDownload_Preview: PreviewProvider {
    static var previews: some View {
        MotivationDownloadView()
    }
}
