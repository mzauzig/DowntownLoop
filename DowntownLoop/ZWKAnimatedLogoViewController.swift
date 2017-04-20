//
//  ZWKAnimatedLogoViewController.swift
//  DowntownLoop
//
//  Created by Michael Zauzig on 2/4/17.
//  Copyright © 2017 Zoftworks. All rights reserved.
//

import UIKit

class ZWKAnimatedLogoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.animateLogo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func animateLogo() {
        print(#file, #line, #function)

        let purpleLeafUIImage = UIImage(named:"AtlantaStreetcarLogoLeafPurple")
        let cyanLeafUIImage   = UIImage(named:"AtlantaStreetcarLogoLeafCyan")
        let greenLeafUIImage  = UIImage(named:"AtlantaStreetcarLogoLeafGreen")
        let maskUIImage       = UIImage(named:"AtlantaStreetcarLogoMask")
        let textUIImage       = UIImage(named:"AtlantaStreetcarLogoText")
        let skylineUIImage    = UIImage(named:"AtlantaStreetcarLogoSkyline")
        
        if (   purpleLeafUIImage == nil
            || cyanLeafUIImage   == nil
            || greenLeafUIImage  == nil
            || maskUIImage       == nil
            || textUIImage       == nil
            || skylineUIImage    == nil) {
            print("ERROR: Could not get images for drawing logo")
            return
        }

        let rightPurpleLeafView  = UIImageView(image:purpleLeafUIImage)
        let rightCyanLeafView    = UIImageView(image:cyanLeafUIImage)
        let rightGreenLeafView   = UIImageView(image:greenLeafUIImage)
        let maskView             = UIImageView(image:maskUIImage)
        let leftPurpleLeafView   = UIImageView(image:purpleLeafUIImage)
        let leftCyanLeafView     = UIImageView(image:cyanLeafUIImage)
        let leftGreenLeafView    = UIImageView(image:greenLeafUIImage)
        let textView             = UIImageView(image:textUIImage)
        let skylineView          = UIImageView(image:skylineUIImage)

        rightPurpleLeafView.transform = CGAffineTransform(scaleX: -1, y: 1)
        rightCyanLeafView.transform   = CGAffineTransform(scaleX: -1, y: 1)
        rightGreenLeafView.transform  = CGAffineTransform(scaleX: -1, y: 1)
        
        self.view.addSubview(rightPurpleLeafView)
        self.view.addSubview(rightCyanLeafView)
        self.view.addSubview(rightGreenLeafView)
        self.view.addSubview(maskView)
        self.view.addSubview(leftPurpleLeafView)
        self.view.addSubview(leftCyanLeafView)
        self.view.addSubview(leftGreenLeafView)
        self.view.addSubview(textView)
        self.view.addSubview(skylineView)
        
        let textSize = (textUIImage?.size)!
        let textScale = (self.view.bounds.width * 0.8) / textSize.width
        
        let skylineSize = (skylineUIImage?.size)!
        let skylineScale = (self.view.bounds.width * 0.4) / skylineSize.width
        
        rightPurpleLeafView.frame = CGRect(x:self.view.center.x - 5, y:self.view.center.y, width:0, height:0)
        rightCyanLeafView.frame   = CGRect(x:self.view.center.x - 5, y:self.view.center.y, width:0, height:0)
        rightGreenLeafView.frame  = CGRect(x:self.view.center.x - 5, y:self.view.center.y, width:0, height:0)
        maskView.frame            = CGRect(x:self.view.center.x + 5, y:self.view.center.y, width:0, height:0)
        leftPurpleLeafView.frame  = CGRect(x:self.view.center.x + 5, y:self.view.center.y, width:0, height:0)
        leftCyanLeafView.frame    = CGRect(x:self.view.center.x + 5, y:self.view.center.y, width:0, height:0)
        leftGreenLeafView.frame   = CGRect(x:self.view.center.x + 5, y:self.view.center.y, width:0, height:0)
        textView.frame            = CGRect(x:self.view.bounds.width, y:self.view.center.y + 20.0, width:textSize.width * textScale, height:textSize.height * textScale)
        skylineView.frame         = CGRect(x:self.view.center.x, y:self.view.center.y - 20, width:0.0, height:0.0)
        skylineView.alpha         = 0.0
        
        let animation = UIViewPropertyAnimator(duration:2, curve:.easeOut) {
            rightPurpleLeafView.frame     = CGRect(x:self.view.center.x - 25, y:self.view.center.y, width: self.view.bounds.width / 4.0 + 50, height:-self.view.bounds.height / 4.0)
            rightCyanLeafView.frame       = CGRect(x:self.view.center.x - 25, y:self.view.center.y, width: self.view.bounds.width / 4.0 + 50, height:-self.view.bounds.height / 4.0)
            rightGreenLeafView.frame      = CGRect(x:self.view.center.x - 25, y:self.view.center.y, width: self.view.bounds.width / 4.0 + 50, height:-self.view.bounds.height / 4.0)
            maskView.frame                = CGRect(x:self.view.center.x + 25, y:self.view.center.y, width:-self.view.bounds.width / 4.0 - 50, height:-self.view.bounds.height / 4.0)
            leftPurpleLeafView.frame      = CGRect(x:self.view.center.x + 25, y:self.view.center.y, width:-self.view.bounds.width / 4.0 - 50, height:-self.view.bounds.height / 4.0)
            leftCyanLeafView.frame        = CGRect(x:self.view.center.x + 25, y:self.view.center.y, width:-self.view.bounds.width / 4.0 - 50, height:-self.view.bounds.height / 4.0)
            leftGreenLeafView.frame       = CGRect(x:self.view.center.x + 25, y:self.view.center.y, width:-self.view.bounds.width / 4.0 - 50, height:-self.view.bounds.height / 4.0)
            textView.frame.origin.x       = self.view.center.x - ((textSize.width * textScale) / 2.0)
            skylineView.frame.origin.x    = self.view.center.y - (self.view.bounds.height / 4.0) - 50.0
            skylineView.frame.origin.y    = self.view.center.y - (self.view.bounds.height / 4.0) - 60.0
            skylineView.frame.size.width  = skylineSize.width * skylineScale
            skylineView.frame.size.height = skylineSize.height * skylineScale
            skylineView.alpha             = 1.0
        }
        
        animation.addCompletion { _ in
            self.startLoginProcess()
        }
        animation.startAnimation()
    }

    func startLoginProcess() {
 ///       self.performSegue(withIdentifier: "SegueToFirstViewController", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.modalTransitionStyle = .crossDissolve
        let snapshotView = self.view.snapshotView(afterScreenUpdates: false)
        segue.destination.view.insertSubview(snapshotView!, at:0)
        /// Getting different behavior between simulators for 7 Plus versus SE
    }
    
}
