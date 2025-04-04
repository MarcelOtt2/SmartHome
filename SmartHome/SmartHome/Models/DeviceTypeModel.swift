//
//  DeviceTypeModel.swift
//  SmartHome
//
//  Created by Marcel Ott on 13.08.24.
//

import SwiftUI


// Struct für SmartDevice
struct SmartDevice: Identifiable {
    // Eindeutige ID für jedes Gerät
    let id = UUID()
    
    // Eigenschaften des Geräts
    var name: String
    var type: DeviceType
    var isOn: Bool = false
    var temperature: Double = 20.0
    var isLocked: Bool = true
}


