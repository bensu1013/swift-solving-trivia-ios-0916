//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(states: [String : String]) -> String{
        var answer: String = ""
        for (state, capital) in states {
            if noMatchedName(state.lowercaseString, second: capital.lowercaseString) {
                answer = state
            }
        }
        
        return answer
    }
    
    func noMatchedName(first: String, second: String) -> Bool {
        for x in first.characters {
            for y in second.characters {
                if x == y {
                    return false
                }
            }
        }
        return true
    }
    
    
    
    
    
    
    
    
    
}

