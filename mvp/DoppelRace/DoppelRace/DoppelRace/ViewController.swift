//
//  ViewController.swift
//  DoppelRace
//
//  Created by Kevin Galligan on 4/13/16.
//  Copyright © 2016 Kevin Galligan. All rights reserved.
//

import UIKit


class ViewController: UIViewController, DRHost {

    var racePresenter : DRRacePresenter?;
    @IBOutlet weak var messageOutput: UILabel?
    @IBOutlet weak var progressBar: UIProgressView?
    
    required  init?(coder aDecoder: NSCoder) {
        AndroidOsLooper.prepareMainLooper();
        super.init(coder: aDecoder);
        racePresenter = DRRacePresenter(DRHost: self);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        racePresenter!.startRaceWithInt(10)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getContext() -> AndroidContentContext{
        return AndroidContentIOSContext()
    }

    func postProgressWithCoTouchlabDoppelraceTasksRunRaceTask_RunRaceProgress(progress: CoTouchlabDoppelraceTasksRunRaceTask_RunRaceProgress){
        messageOutput!.text = progress.getMessage();
        progressBar!.progress = Float(progress.getPercentDone());
    }
    
    func raceDone(){
        messageOutput!.text = "Done!";
        progressBar!.progress = 1;
    }

}


