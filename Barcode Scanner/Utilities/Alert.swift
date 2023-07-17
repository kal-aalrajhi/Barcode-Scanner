//
//  Alert.swift
//  Barcode Scanner
//
//  Created by Dr Cpt Blackbeard on 7/17/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "We are unable to capture the input.",
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
                                              message: "Please use EAN-8 and EAN-13 barcode types.",
                                              dismissButton: .default(Text("Ok")))
}
