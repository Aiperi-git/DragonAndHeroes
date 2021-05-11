//
//  File.swift
//  DragonAndHeroes
//
//  Created by Aiperi Kiyazova on 9/5/21.
//

import UIKit

protocol MagListenerDelegate {
    func startDragon()
}


class MagListener: NSObject, CAAnimationDelegate {
    
    var delegate: MagListenerDelegate? = nil
    
    init(delegate: MagListenerDelegate) {
        self.delegate = delegate
    }
    
    func animationDidStart(_ anim: CAAnimation) {
        
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        delegate?.startDragon()
    }
}
