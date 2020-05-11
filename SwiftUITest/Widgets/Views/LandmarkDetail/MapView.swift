//
//  MapView.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 12/06/19.
//  Copyright © 2019 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    //creates an MKMapView
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    //configures the view and responds to any changes.
    func updateUIView(_ uiView: MKMapView, context: Context) {
//        let coordinate = CLLocationCoordinate2D( latitude: -22.951916, longitude: -43.2126759)
        let span = MKCoordinateSpan(latitudeDelta: 4.0, longitudeDelta: 4.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion( region, animated: true )
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif
