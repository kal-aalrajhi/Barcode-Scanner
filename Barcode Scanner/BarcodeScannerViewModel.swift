//
//  BarcodeScannerViewModel.swift
//  Barcode Scanner
//
//  Created by Dr Cpt Blackbeard on 7/17/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    
}
