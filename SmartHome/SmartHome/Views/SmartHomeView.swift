//
//  SmartHomeView.swift
//  SmartHome
//
//  Created by Marcel Ott on 12.08.24.
//

import SwiftUI

struct SmartHomeView: View {
    
    @State private var showRoomView: Bool = false
    
    @State private var smartDevices = [
        SmartDevice(name: "Wohnzimmer Licht", type: .light),
        SmartDevice(name: "Thermostat", type: .thermostat, temperature: 22.0),
        SmartDevice(name: "Haustür Schloss", type: .lock)
    ]
    
    
    var body: some View {
       
        SearchFieldView(devices: $smartDevices)
            
            ForEach($smartDevices) { $device in
                SmartDeviceView(device: $device)
                   
            }
            Spacer()
            // Raumvorschau-Bereich
            if showRoomView == true { 
                RoomView(devices: smartDevices)
                    
            }
            
            ToggelView(showRoomView: $showRoomView)
        }
    }



#Preview {
    SmartHomeView()
}


