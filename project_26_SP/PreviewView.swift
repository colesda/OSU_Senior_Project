//
//  PreviewView.swift
//  project_26_SP
//
//  Created by Chynh Vo on 2/19/15.
//  Copyright (c) 2015 Remcho Research. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation


class AVCamPreviewView: UIView{
    
    var session: AVCaptureSession? {
        get{
            return (self.layer as AVCaptureVideoPreviewLayer).session;
        }
        set(session){
            (self.layer as AVCaptureVideoPreviewLayer).session = session;
        }
    };
    
    override class func layerClass() ->AnyClass{
        return AVCaptureVideoPreviewLayer.self;
    }
}
