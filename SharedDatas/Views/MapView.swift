//
//  MapView.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 12/06/19.
//  Copyright © 2019 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView {
    
    var coordinate: CLLocationCoordinate2D
    
    //creates an MKMapView
    func makeMapView() -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    //configures the view and responds to any changes.
    func updateMapView(_ view: MKMapView, context: Context) {
//        let coordinate = CLLocationCoordinate2D( latitude: -22.951916, longitude: -43.2126759)
        let span = MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion( region, animated: true )
    }
}

#if os(macOS)
extension MapView: NSViewRepresentable {
    func makeNSView(context: Context) -> MKMapView {
        makeMapView()
    }
    
    func updateNSView(_ nsView: MKMapView, context: Context) {
        updateMapView(nsView, context: context)
    }
}

#else
extension MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        makeMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        updateMapView(uiView, context: context)
    }
}
#endif


#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif
