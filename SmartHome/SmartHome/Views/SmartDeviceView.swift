//
//  SmartDeviceView.swift
//  SmartHome
//
//  Created by Marcel Ott on 15.08.24.
//

import SwiftUI

struct SmartDeviceView: View {
  
   
    @Binding var device: SmartDevice
    
    var body: some View {
        HStack {
            Text(device.type.iconName)
                .font(.largeTitle)
            
            
            VStack(alignment: .leading) {
                Text(device.name)
                    .font(.title2)
                    .backgroundStyle(.gray)
                
            }
            
            Spacer()
            
            switch device.type {
            case .light:
                Toggle(isOn: $device.isOn) {
                }
                
                
            case .thermostat:
                Slider(value: $device.temperature, in: 18...25)
                Text(String(format: "%.0f", device.temperature))
                
                
            case .lock:
                Button(action: {
                    device.isLocked.toggle()
                }) {
                    Text(device.isLocked ? "Gesperrt" : "Entsperrt")
                        .padding()
                        .background(device.isLocked ? .red : .green)
                        .tint(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding(3)
    }
}

#Preview {
    SmartDeviceView(device:.constant(
        SmartDevice(name: "Wohnzimmer Licht", type: .light)
    ))
}

