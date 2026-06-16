import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = PaxDeviceViewModel()
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            ScanView()
                .tabItem { Label("Scan", systemImage: "antenna.radiowaves.left.and.right") }
                .tag(0)

            DeviceView()
                .tabItem { Label("Device", systemImage: "thermometer.medium") }
                .tag(1)

            DebugConsoleView()
                .tabItem { Label("Log", systemImage: "text.alignleft") }
                .tag(2)
        }
        .environmentObject(viewModel)
        .accentColor(.orange)
    }
}
