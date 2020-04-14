//
//  SettingsModel.swift
//  SwiftTest
//
//  Created by Ankit Sinha on 08/04/20.
//  Copyright © 2020 Ankit Sinha. All rights reserved.
//

import Foundation

class SettingsModel: ObservableObject{
    
    @Published var isLocationSyncOn = false
    @Published var isDataSyncOn = true
    
    
}
