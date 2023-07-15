//
//  BarcodeScannerView.swift
//  Barcode Scanner
//
//  Created by Dr Cpt Blackbeard on 7/15/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        VStack {
            Text("Barcode Scanner")
            
            Rectangle()
                .frame(width: .infinity, height: 250)
                
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
