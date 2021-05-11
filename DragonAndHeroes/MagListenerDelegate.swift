//
//  HeroesListenerDelegate.swift
//  DragonAndHeroes
//
//  Created by Aiperi Kiyazova on 6/5/21.
//

import UIKit

protocol MagListenerDelegate {
    func startDragon()
}


class HeroesListener: NSObject, CAAnimationDelegate {
    
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
