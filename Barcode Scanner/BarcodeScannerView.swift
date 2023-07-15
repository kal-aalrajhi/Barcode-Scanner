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
                .font(.largeTitle)
            Spacer()
            
            Rectangle()
                .frame(width: .infinity, height: 300)
            
            HStack {
                Image(systemName: "barcode.viewfinder")
                Text("Scanned Barcode")
            }
            
            Text("Not Yet Scanned")
                .font(.title2)
                .bold()
                .foregroundColor(.red)
            Spacer()
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
