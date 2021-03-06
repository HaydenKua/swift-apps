//
//  Stack.swift
//  Data Structures
//
//  Created by Kua, Hayden (NA) on 27/01/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import Foundation

class Stack {
    var stack = [String](repeating: "_", count: 10)
    var top = -1
    
    func push(_ item: String) {
        let thing = item
        if top == stack.count - 1 {
            
        } else {
            top += 1
            stack[top] = thing
        }
    }
    
    func pop() -> String {
        if top == -1 {
            return "Sorry, there is no item in the stack to pop"
        } else {
            let to_return = stack[top]
            stack[top] = "_"
            top -= 1
            return to_return
        }
    }
    
    func peek() -> String {
        if top == -1 {
            return "There is no item to peek"
        } else {
            let peek_item = stack[top]
            return peek_item
        }
        
    }
    
    func outputting_monster() {
        for i in 0...9 {
            print(stack[i])
        }
    }
}
