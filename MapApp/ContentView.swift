//
//  ContentView.swift
//  MapApp
//
//  Created by Quang Bao on 19/02/2023.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    
    init() {
        GMSServices.provideAPIKey("YOUR_API_KEY")
    }
    
    var body: some View {
        VStack {
            Text("MapView for iOS")
                .font(.title)
            
            MapView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MapView: UIViewRepresentable {
    typealias UIViewType = GMSMapView
    
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition(latitude: 16.560913, longitude: 107.495730, zoom: 10.0)
        let mapView = GMSMapView(frame: .zero, camera: camera)
        
        return mapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {
        
    }
}
