//
//  Dispatching.swift
//  FullEnglishBreakfast
//
//  Created by Håkon Bogen on 28/06/2018,26.
//  Copyright © 2018 Beining & Bogen. All rights reserved.
//

import Foundation

public func after(_ duration: Double, closure: @escaping () -> Void) {
    
    let delayTime = DispatchTime.now() + Double(Int64(duration * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
    
    DispatchQueue.main.asyncAfter(deadline: delayTime) {
        
        closure()
        
    }
    
}
