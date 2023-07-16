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
    
    // This will get our scanner up and running
    private func setupCaptureSession() {
        // Check if we even have a device that can capture video
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else { return }
        
        // Get video device
        let videoInput: AVCaptureDeviceInput
        do {
            try videoInput = AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch { return }
        
        // Check if you can add input into video
        if captureSession.canAddInput(videoInput) {
            captureSession.addInput(videoInput)
        } else { return }
        
        // Check if we can get metadata (what's being scanned/captured)
        let metaDataOutput = AVCaptureMetadataOutput()
        if captureSession.canAddOutput(metaDataOutput) {
            captureSession.addOutput(metaDataOutput)
            metaDataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            // array of types of barcodes we want to scan
            metaDataOutput.metadataObjectTypes = [.ean8, .ean13]
        } else { return }
        
        // Done with checks - if we're down here our capture session is good to go and we can
        // set it to our preview layer
        // setup preview layer with our capture session
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer!.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer!)
        
        // begin capture session
        captureSession.startRunning()
    }
}

// what we want to do once we find the barcode
extension ScannerVC: AVCaptureMetadataOutputObjectsDelegate {
    // come back
}
