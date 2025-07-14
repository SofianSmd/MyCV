import SwiftUI
import PDFKit

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        ZStack(alignment: .bottom) {
            LinearGradient(colors: [.orange.opacity(0.3), .gray.opacity(0.2)],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()

            // Vue en fonction de l'onglet
            Group {
                switch selectedTab {
                case 0:
                    HomeView()
                case 1:
                    CVDownloadView()
                case 2:
                    MotivationDownloadView()
                case 3:
                    ContactView()
                default:
                    HomeView()
                }
            }
            .animation(.easeInOut(duration: 0.4), value: selectedTab)

            // Barre flottante
            HStack(spacing: 20) {
                tabBarButton(systemIcon: "person.fill", tab: 0)
                tabBarButton(systemIcon: "doc.text.fill", tab: 1)
                tabBarButton(systemIcon: "pencil.circle.fill", tab: 2)
                tabBarButton(systemIcon: "envelope.fill", tab: 3)
            }
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(Capsule())
            .shadow(radius: 10)
            .padding(.horizontal, 30)
            .padding(.bottom, 30)
        }
    }

    @ViewBuilder
    func tabBarButton(systemIcon: String, tab: Int) -> some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.3)) {
                selectedTab = tab
            }
        }) {
            Image(systemName: systemIcon)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(selectedTab == tab ? .white : .gray)
                .padding(12)
                .background(
                    Circle()
                        .fill(selectedTab == tab ? Color.orange : Color.clear)
                        .shadow(radius: selectedTab == tab ? 5 : 0)
                )
        }
    }
}
