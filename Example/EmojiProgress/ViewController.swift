//
//  ViewController.swift
//  custom_classes_test
//
//  Created by Wangyiwei on 2019/9/27.
//  Copyright © 2019 Wangyiwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var progressView1: eProgressIndicator?
    var progressView2: eProgressIndicator?
    var progressView3: eProgressIndicator?
    var progressView4: eProgressIndicator?
    var progressView5: eProgressIndicator?
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider3: UISlider!
    @IBOutlet weak var slider4: UISlider!
    @IBOutlet weak var slider5: UISlider!
    
    var actView1: eActivityIndicator?
    var actView2: eActivityIndicator?
    var actView3: eActivityIndicator?
    var actView4: eActivityIndicator?
    var actView5: eActivityIndicator?
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switvh4: UISwitch!
    @IBOutlet weak var switvh5: UISwitch!
    
    
    //Slider funcs
    @IBAction func updateProgress(_ sender: UISlider) {
        progressView1?.setProgress(slider.value)
    }
    @IBAction func update2(_ sender: UISlider) {
        progressView2?.setProgress(slider2.value)
    }
    @IBAction func update3(_ sender: UISlider) {
        progressView3?.setProgress(slider3.value)
    }
    @IBAction func update4(_ sender: UISlider) {
        progressView4?.setProgress(slider4.value)
    }
    @IBAction func update5(_ sender: UISlider) {
        progressView5?.setProgress(slider5.value)
    }
    
    //Switch funcs
    @IBAction func sChange1(_ sender: UISwitch) {
        switch1.isOn ? actView1?.startAnimating() : actView1?.stopAnimating()
    }
    @IBAction func schange2(_ sender: UISwitch) {
        switch2.isOn ? actView2?.startAnimating() : actView2?.stopAnimating()
    }
    @IBAction func schange3(_ sender: UISwitch) {
        switch3.isOn ? actView3?.startAnimating() : actView3?.stopAnimating()
    }
    @IBAction func sc4(_ sender: UISwitch) {
        switvh4.isOn ? actView4?.startAnimating() : actView4?.stopAnimating()
    }
    @IBAction func sc5(_ sender: UISwitch) {
        switvh5.isOn ? actView5?.startAnimating() : actView5?.stopAnimating()
    }
    
    //Main implementation
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let y: CGFloat = 350
        
        progressView1 = eProgressIndicator(processCharPresets[0], length: 14, frame: CGRect(x: 30, y: 100, width: width - 60, height: 20))
        progressView2 = eProgressIndicator(processCharPresets[1], length: 14, frame: CGRect(x: 30, y: 150, width: width - 60, height: 20))
        progressView3 = eProgressIndicator(processCharPresets[9], length: 14, frame: CGRect(x: 30, y: 200, width: width - 60, height: 20))
        progressView4 = eProgressIndicator(processCharPresets[13], length: 14, frame: CGRect(x: 30, y: 250, width: width - 60, height: 20))
        progressView5 = eProgressIndicator(processCharPresets[6], length: 14, frame: CGRect(x: 30, y: 300, width: width - 60, height: 20))
        progressView1?.setFont(.systemFont(ofSize: 18))
        progressView2?.setFont(.systemFont(ofSize: 18))
        progressView3?.setFont(.systemFont(ofSize: 18))
        progressView4?.setFont(.systemFont(ofSize: 18))
        progressView5?.setFont(.systemFont(ofSize: 18))
        
        actView1 = eActivityIndicator(activityCharPresets[3], fps: 8, frame: CGRect(x: 0, y: y, width: width / 5, height: 30))
        actView2 = eActivityIndicator(activityCharPresets[4], fps: 6, frame: CGRect(x: width / 5, y: y, width: width / 5, height: 30))
        actView3 = eActivityIndicator(activityCharPresets[6], fps: 8, frame: CGRect(x: width * 2 / 5, y: y, width: width / 5, height: 30))
        actView4 = eActivityIndicator(activityCharPresets[10], fps: 4, frame: CGRect(x: width * 3 / 5, y: y, width: width / 5, height: 30))
        actView5 = eActivityIndicator(activityCharPresets[1], fps: 8, frame: CGRect(x: width * 4 / 5, y: y, width: width / 5, height: 30))
        
        self.view.addSubview(progressView2!)
        self.view.addSubview(progressView3!)
        self.view.addSubview(progressView1!)
        self.view.addSubview(progressView4!)
        self.view.addSubview(progressView5!)
        self.view.addSubview(actView1!)
        self.view.addSubview(actView2!)
        self.view.addSubview(actView3!)
        self.view.addSubview(actView4!)
        self.view.addSubview(actView5!)
    }
}

let processCharPresets = [["🌑", "🌘", "🌗", "🌖", "🌕"],
                          ["☁️", "🌥", "⛅️", "🌤", "☀️"],
                          ["✋🏻", "👊🏻", "👌🏻"],
                          ["🤷🏻‍♂️", "🙇🏻‍♀️", "🙋🏻‍♂️"],
                          [" ", "🕷️", "🕸"],
                          ["⛳️", "🤾🏻‍♂️", "🏅"],
                          ["🤢", "💊", "😃"],
                          ["📃", "🧻", "✨"],
                          ["📬", "🚴🏻‍♂️", "📭"],
                          ["🗒", "🖨", "🗓"],
                          ["🌃", "📽", "🎞"],
                          ["💵", "💸", "🕳"],
                          ["💬", "📲", "💾"],
                          ["📄", "🗜", "🗳"]]
let activityCharPresets = [["🌎", "🌍", "🌏"],
                           ["🌑", "🌒", "🌓", "🌔", "🌕", "🌖", "🌗", "🌘"],
                           ["☁️", "🌥", "⛅️", "🌤", "☀️", "🌤", "⛅️", "🌥"],
                           ["🐵", "🙉", "🙈", "🙊", "🙈", "🙉"],
                           ["🙅🏻‍♀️", "💁🏻‍♀️", "🙅🏻‍♀️", "🙋🏻‍♀️", "🙆🏻‍♀️", "🙋🏻‍♀️"],
                           ["😑", "😐", "😐", "😐", "😐", "😐", "😐", "😐"],
                           ["😓", "😥", "😢", "😟", "🙁", "🙁", "🙁", "🙁"],
                           ["🌇", "🏙", "🌆", "🌃"],
                           ["📷", "📷", "📷", "📷", "📷", "📷", "📷", "📸"],
                           ["⌛️", "⏳"],
                           ["📫", "📪", "📬", "📭"],
                           ["📓", "📔", "📕", "📗", "📘", "📙"],
                           ["🕛", "🕐", "🕑", "🕒", "🕓", "🕔", "🕕", "🕖", "🕗", "🕘", "🕙", "🕚"]]
