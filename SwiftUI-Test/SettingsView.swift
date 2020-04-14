//
//  SettingsView.swift
//  SwiftTest
//
//  Created by Ankit Sinha on 08/04/20.
//  Copyright © 2020 Ankit Sinha. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    @ObservedObject var settings = SettingsModel()
    
    var body: some View {
        VStack{
            Form{
                    Section{
                        Toggle(isOn: $settings.isLocationSyncOn){
                               Text("Enable Location Sync")
                           }
                       
                        Toggle(isOn: $settings.isDataSyncOn){
                               Text("Enable Data Sync")
                           }
                       }
                       
                   }
            .navigationBarTitle("Settings",displayMode: .inline)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
