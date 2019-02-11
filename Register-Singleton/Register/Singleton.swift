//
//  Singleton.swift
//  Register
//
//  Created by Amit Joshi on 04/01/19.
//  Copyright © 2019 Amit Joshi. All rights reserved.
//

import Foundation


final class Singleton{
    
    var marks = 0 ;
    
    static let sharedInstance = Singleton()
    private init() {}
}
