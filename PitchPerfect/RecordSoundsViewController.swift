//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Fai Wu on 3/21/17.
//  Copyright © 2017 Fai Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
		
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        stopRecordingButton.isEnabled = false
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        print("record button was pressed")
        recordingLabel.text = "Recording in Progress"
        recordButton.isEnabled = false
        stopRecordingButton.isEnabled = true
    }

    @IBAction func stopRecording(_ sender: Any) {
        print("stop recording button was pressed")
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to Record"
    }
}

