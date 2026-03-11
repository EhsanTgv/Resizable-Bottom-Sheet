//
//  ContentView.swift
//  Resizable Bottom Sheet
//
//  Created by Ehsan on 11.03.2026.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var selecedTravelName = "car.fill"
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Map(coordinateRegion: $region).ignoresSafeArea()
            
            Button(""){
                
            }
            .buttonStyle(TravelModeButton(systemImageName: selecedTravelName))
            .padding(30)
        }
    }
    
    var travelOptionView: some View {
        VStack(spacing: 20){
            Text("Select Travel Mode")
            
            HStack(spacing: 16){
                Button(""){
                    
                }.buttonStyle(TravelModeButton(systemImageName: "airplane"))
            }
            
            HStack(spacing: 16){
                Button(""){
                    
                }.buttonStyle(TravelModeButton(systemImageName: "car.fill"))
            }
            
            HStack(spacing: 16){
                Button(""){
                    
                }.buttonStyle(TravelModeButton(systemImageName: "ferry.fill"))
            }
            
            HStack(spacing: 16){
                Button(""){
                    
                }.buttonStyle(TravelModeButton(systemImageName: "tram.fill"))
            }
        }
    }
}

#Preview {
    ContentView()
}

struct TravelModeButton: ButtonStyle {
    let systemImageName: String
    
    func makeBody(configuration: Configuration) -> some View {
        Image(systemName: systemImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.white)
            .frame(width: 33, height: 33)
            .padding()
            .background(Color.pink)
            .clipShape(Circle())
    }
}
