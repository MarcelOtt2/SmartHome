//
//  EnumDeviceType.swift
//  SmartHome
//
//  Created by Marcel Ott on 13.08.24.
//

import SwiftUI
// Enum Generieren  für Gerätetypen
enum DeviceType: String, CaseIterable, Identifiable {
    var id: String {self.rawValue }
    case light = "💡 Licht"     // Repräsentiert ein Licht
    case thermostat = "🌡️Thermostat"  // Repräsentiert ein Thermostat
    case lock = "🔑 Schloss" // Repräsentiert ein Schloss
    var iconName: String {
        switch self {
        case .light:
            return "💡"
        case .thermostat:
            return "🌡️"
        case .lock:
            return "🔑"
        }
    }
}



