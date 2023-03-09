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
        //Input your API key in here
        GMSServices.provideAPIKey("xxx")
    }
    
    var body: some View {
        VStack {
            Text("MapView for iOS")
                .font(.title3)
            
            MapView()
        }
        .edgesIgnoringSafeArea(.bottom)
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
        let camera = GMSCameraPosition(
            latitude: 16.4694664,
            longitude: 107.5781534,
            zoom: 15.0)
        
        let mapView = GMSMapView(frame: .zero, camera: camera)
        
        return mapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {
        addMarker(mapView: uiView)
    }
    
    func addMarker(mapView: GMSMapView) {
        //Create a marker in the center of the map
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(
            latitude: 16.4694664,
            longitude: 107.5781534)
        
        marker.title = "Kinh Thanh Hue"
        marker.snippet = "Hue City"
        marker.appearAnimation = .pop
        marker.icon = GMSMarker.markerImage(with: .yellow)
        marker.opacity = 0.6
//        marker.icon = UIImage(named: "xxx")
        marker.map = mapView
    }
}
