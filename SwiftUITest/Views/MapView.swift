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
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D( latitude: 34.011286, longitude: -116.166868 )
        let span = MKCoordinateSpan( latitudeDelta: 2.0, longitudeDelta: 2.0 )
        let region = MKCoordinateRegion( center: coordinate, span: span )
        uiView.setRegion( region, animated: true )
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
