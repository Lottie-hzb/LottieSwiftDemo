//
//  ViewController.swift
//  LottieSwiftDemo
//
//  Created by Jason_hzb on 2018/6/7.
//  Copyright © 2018年 Jason_hzb. All rights reserved.
//

import UIKit
import Lottie

/**
 * 免费json动画网站：https://www.lottiefiles.com
 * url加载需要时间
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let animationView = LOTAnimationView(contentsOf: URL(string: "https://www.lottiefiles.com/storage/datafiles/w1J6yNaftdTVudX/data.json")!)
        let animationView = LOTAnimationView(name: "servishero_loading")
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.view.center
        
        animationView.loopAnimation = true
        animationView.contentMode = .scaleAspectFill
        animationView.animationSpeed = 0.5
        
        // Applying UIView animation
        let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        animationView.transform = minimizeTransform
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            animationView.transform = CGAffineTransform.identity
        }, completion: nil)
        
        view.addSubview(animationView)
        
        animationView.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

