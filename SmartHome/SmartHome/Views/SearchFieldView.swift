//
//  SearchFieldView.swift
//  SmartHome
//
//  Created by Marcel Ott on 12.08.24.
//

import SwiftUI

struct SearchFieldView: View {
    
    @State private var userInput: String = ""
    @State private var displayedText: String = ""
    
    @State private var selectedDeviceType: DeviceType = .light
    
   @Binding var devices: [SmartDevice] 
    
    
    var body: some View {
        
        
       
        Text("Smart Home ")
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.blue)
        // Suchfeld oder Textfeld zum Schreiben
        HStack{
            TextField("Geben Sie hier Ihren Text ein", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            
            
            
            // Füge einen Picker hinzu
            Picker("Gerätetyp", selection: $selectedDeviceType) {
           
                ForEach(DeviceType.allCases) { selectedDeviceType in
                    Text(selectedDeviceType.rawValue).tag(selectedDeviceType)
                        .padding(.horizontal)
                    }
                }
            }
        
        VStack{
           
            Button(action:addDevice){
                
                 
            
            
                Text("Hinzufügen")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
               
                
                
                
            }
        }
        Text(displayedText)
        
            .padding()
    }
    private func addDevice() {
        let newDevice = SmartDevice(name: userInput, type: selectedDeviceType)
        devices.append(newDevice)
        userInput = ""
    }
}

