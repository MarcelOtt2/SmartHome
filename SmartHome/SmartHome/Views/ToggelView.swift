//
//  ToggelView.swift
//  SmartHome
//
//  Created by Marcel Ott on 14.08.24.
//

import SwiftUI

struct ToggelView: View {
    @Binding var showRoomView: Bool
    
    var body: some View {
        
     
       
    
        Toggle("Raumvorschau anzeigen", isOn: $showRoomView)
            .padding()
          
    
    }
}

#Preview {
    ToggelView(showRoomView: .constant(true))
}
