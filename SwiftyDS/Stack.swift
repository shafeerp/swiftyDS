//
//  Stack.swift
//  SwiftyDS
//
//  Created by Shafeer Puthalan on 18/02/19.
//  Copyright © 2019 Shafeer Puthalan. All rights reserved.
//

import Foundation

open class Stack<T> : NSObject {
    open var stackArray = Array<T>()
    
     open func push(_ itemToPush: inout T) {
        self.stackArray.append(itemToPush)
    }
    open func pop() -> T?  {
        if self.stackArray.last != nil {
            let itemToReturn = self.stackArray.last
            self.stackArray.removeLast()
            return itemToReturn 
        }
        else {
            return nil
        }
    }
}
