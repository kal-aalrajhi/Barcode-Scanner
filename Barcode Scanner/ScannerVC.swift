//
//  ScannerVC.swift
//  Barcode Scanner
//
//  Created by Dr Cpt Blackbeard on 7/15/23.
//

import UIKit
import AVFoundation

// we're saying what we want to send over
protocol ScannerVCDelegate: class {
    func didFind(barcode: String)
    
}

final class ScannerVC: UIViewController {
    
    let captureSession = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer?
    weak var scannerDelegate: ScannerVCDelegate?
    
    init(scannerDelegate: ScannerVCDelegate) {
        super.init(nibName: nil, bundle: nil)
        self.scannerDelegate = scannerDelegate
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has no been implemented")}
    
    
    
}
