//
//  ViewController.swift
//  kimbra
//
//  Created by Arash Namvar on 5/6/15.
//  Copyright (c) 2015 Arash Namvar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    var count: Int = 1
    var session = AVAudioSession.sharedInstance()
    
    var startstop1 = true
    var startstop2 = true
    var startstop3 = true
    var startstop4 = true
    var startstop5 = true
    var startstop6 = true
    var startstop7 = true
    var startstop8 = true
    var startstop9 = true
    var url1: NSURL?
    var url2: NSURL?
    var url3: NSURL?
    var url4: NSURL?
    var url5: NSURL?
    var url6: NSURL?
    var url7: NSURL?
    var url8: NSURL?
    var url9: NSURL?
 
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var recordAudio: UIButton!
    var audioPlayer: AVAudioPlayer?
    var audioPlayer2: AVAudioPlayer?
    var audioPlayer3: AVAudioPlayer?
    var audioPlayer4: AVAudioPlayer?
    var audioPlayer5: AVAudioPlayer?
    var audioPlayer6: AVAudioPlayer?
    var audioPlayer7: AVAudioPlayer?
    var audioPlayer8: AVAudioPlayer?
    var audioPlayer9: AVAudioPlayer?
    var audioRecorder: AVAudioRecorder?
    
    func run() {
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        print(dirPaths)
        let docsDir = dirPaths[0] as! String
        println(docsDir)
        var soundFilePath =
        docsDir.stringByAppendingPathComponent("sound\(count).caf")
        println(soundFilePath)
        

        var soundFileURL = NSURL(fileURLWithPath: soundFilePath)
        if count == 1 {
            url1 = soundFileURL
        }
        if count == 2 {
            url2 = soundFileURL
        }
        if count == 3 {
            url3 = soundFileURL
        }
        if count == 4 {
            url4 = soundFileURL
        }
        if count == 5 {
            url5 = soundFileURL
        }
        if count == 6 {
            url6 = soundFileURL
        }
        if count == 7 {
            url7 = soundFileURL
        }
        if count == 8 {
            url8 = soundFileURL
        }
        if count == 9 {
            url9 = soundFileURL
        }
        let recordSettings =
        [AVEncoderAudioQualityKey: AVAudioQuality.Min.rawValue,
            AVEncoderBitRateKey: 16,
            AVNumberOfChannelsKey: 2,
            AVSampleRateKey: 44100.0]
        
        var error: NSError?
        
        let audioSession = AVAudioSession.sharedInstance()
        audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord,
        error: &error)
        
        if let err = error {
            println("audioSession error: \(err.localizedDescription)")
        }
        
        audioRecorder = AVAudioRecorder(URL: soundFileURL,
        settings: recordSettings as [NSObject : AnyObject], error: &error)
        
        if let err = error {
            println("audioSession error: \(err.localizedDescription)")
        } else {
        audioRecorder?.prepareToRecord()
        }
    }
    
   
    
    @IBAction func recordAudio(sender: UIButton) {
        run()
        if audioRecorder?.recording == false {
            count++
            stopButton.hidden = false
            recordAudio.hidden = true
            audioRecorder?.record()
        }
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        recordAudio.hidden = false
        
        if audioRecorder?.recording == true {
            stopButton.hidden = true
            audioRecorder?.stop()
        } else {
            
        }
    }
    
    @IBAction func playAudio(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop1 == true {
                var url: NSURL?
                
                var error: NSError?
                
                
                audioPlayer = AVAudioPlayer(contentsOfURL: url1,
                    error: &error)
                session.overrideOutputAudioPort(AVAudioSessionPortOverride.Speaker, error: nil)
                audioPlayer?.numberOfLoops = -1
                audioPlayer?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer?.play()
                    startstop1 = false
                }
            } else {
                audioPlayer?.stop()
                startstop1 = true
                
            }
        }
    }
    
    
    @IBAction func playaudio2(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop2 == true {
                
                var url: NSURL?
                
                var error: NSError?
                
                audioPlayer2 = AVAudioPlayer(contentsOfURL: url2,
                    error: &error)
                
                audioPlayer2?.numberOfLoops = -1
                audioPlayer2?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer2?.play()
                    startstop2 = false
                }
            } else {
                audioPlayer2?.stop()
                startstop2 = true
                
            }
        }
    }
    
    @IBAction func playaudio3(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop3 == true {
                
                var url: NSURL?
                
                var error: NSError?
                
                audioPlayer3 = AVAudioPlayer(contentsOfURL: url3,
                    error: &error)
                
                audioPlayer3?.numberOfLoops = -1
                audioPlayer3?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer3?.play()
                    startstop3 = false
                }
            } else {
                audioPlayer3?.stop()
                startstop3 = true
                
            }
        }
    }
    @IBAction func playaudio4(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop4 == true {
                
                var error: NSError?
                
                audioPlayer4 = AVAudioPlayer(contentsOfURL: url4,
                    error: &error)
                
                audioPlayer4?.numberOfLoops = -1
                audioPlayer4?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer4?.play()
                    startstop4 = false
                }
            } else {
                audioPlayer4?.stop()
                startstop4 = true
                
            }
        }
    }
    @IBAction func play5(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop5 == true {
                
                var error: NSError?
                
                audioPlayer5 = AVAudioPlayer(contentsOfURL: url5,
                    error: &error)
                
                audioPlayer5?.numberOfLoops = -1
                audioPlayer5?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer5?.play()
                    startstop5 = false
                }
            } else {
                audioPlayer5?.stop()
                startstop5 = true
                
            }
        }
    }
    
    
    @IBAction func play6(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop6 == true {
                
                var error: NSError?
                
                audioPlayer6 = AVAudioPlayer(contentsOfURL: url6,
                    error: &error)
                
                audioPlayer6?.numberOfLoops = -1
                audioPlayer6?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer6?.play()
                    startstop6 = false
                }
            } else {
                audioPlayer6?.stop()
                startstop6 = true
                
            }
        }
    }

    @IBAction func play7(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop7 == true {
                
                var error: NSError?
                
                audioPlayer7 = AVAudioPlayer(contentsOfURL: url7,
                    error: &error)
                
                audioPlayer7?.numberOfLoops = -1
                audioPlayer7?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer7?.play()
                    startstop7 = false
                }
            } else {
                audioPlayer7?.stop()
                startstop7 = true
                
            }
        }
    }
    
    @IBAction func play8(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop8 == true {
                
                var error: NSError?
                
                audioPlayer8 = AVAudioPlayer(contentsOfURL: url8,
                    error: &error)
                
                audioPlayer8?.numberOfLoops = -1
                audioPlayer8?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer8?.play()
                    startstop8 = false
                }
            } else {
                audioPlayer8?.stop()
                startstop8 = true
                
            }
        }
    }
    
    @IBAction func play9(sender: UIButton) {
        if audioRecorder?.recording == false {
            
            if startstop9 == true {
                
                var error: NSError?
                
                audioPlayer9 = AVAudioPlayer(contentsOfURL: url9,
                    error: &error)
                
                audioPlayer9?.numberOfLoops = -1
                audioPlayer9?.delegate = self
                
                if let err = error {
                    println("audioPlayer error: \(err.localizedDescription)")
                } else {
                    audioPlayer9?.play()
                    startstop9 = false
                }
            } else {
                audioPlayer9?.stop()
                startstop9 = true
                
            }
        }
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        recordAudio.enabled = true
        stopButton.enabled = true
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!, error: NSError!) {
        println("Audio Play Decode Error")
    }
    
    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder!, successfully flag: Bool) {
    }
    
    func audioRecorderEncodeErrorDidOccur(recorder: AVAudioRecorder!, error: NSError!) {
        println("Audio Record Encode Error")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        stopButton.enabled = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

