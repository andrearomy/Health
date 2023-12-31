
import SwiftUI

struct HealthAppView: View {
    @State private var tabSelection = 1
    
    @State private var tappedTwice: Bool = false
    @State private var tappedTwice2: Bool = false
    @State private var tappedTwice3: Bool = false
    
    @State private var summary = UUID()
    @State private var sharing = UUID()
    @State private var browse = UUID()
    
    @AppStorage("isWelcomeScreenOver") var isWelcomeScreenOver = false
    @State var checkWelcomeScreen: Bool = false
    
    
    var body: some View {        
        var handler: Binding<Int> { Binding(
            get: { self.tabSelection},
            set: {
                if $0 == self.tabSelection {
                    
                    tappedTwice3 = true
                    tappedTwice = true
                    tappedTwice2 = true
                  
                }
                self.tabSelection = $0
            }
        )}
        
        TabView(selection: handler) {
            
            NavigationStack{
                SummaryView().id(summary)
                    .onChange(of: tappedTwice3, initial: true) {
                        guard tappedTwice3 else { return }
                        self.tappedTwice3 = false
                        summary = UUID()
                    }
            }
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Summary")
                }
                .tag(1)
            
            NavigationStack{
                SharingView().id(sharing)
                    .onChange(of: tappedTwice2, initial: true) {
                        guard tappedTwice2 else { return }
                        self.tappedTwice2 = false
                        sharing = UUID()
                    }
            }
            .tabItem {
                Image(systemName: "person.2")
                Text("Sharing")
            }
            .tag(2)
            
                BrowseView()
                    .id(browse)
                    .onChange(of: tappedTwice, initial: true) {
                        guard tappedTwice else { return }
                        self.tappedTwice = false
                        browse = UUID()
                    }
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Browse")
                }
                .tag(3)
        }
    }
}

#Preview {
    HealthAppView()
}

