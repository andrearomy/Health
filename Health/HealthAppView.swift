
import SwiftUI

struct HealthAppView: View {
    var body: some View {
            TabView {
                
                SummaryView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Summary")
                    }
                SharingView()
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Sharing")
                    }
                BrowseView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2.fill")
                        Text("Browse")
                    }
            }
        }
    }

#Preview {
    HealthAppView()
}
