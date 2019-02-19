//
//  Stack.swift
//  SwiftyDS
//
//  Created by Shafeer Puthalan on 18/02/19.
//  Copyright © 2019 Shafeer Puthalan. All rights reserved.
//

import Foundation

public struct Stack<T>  {
    public var stackArray = Array<T>()
    
    public mutating func push(_ itemToPush: inout T) {
        self.stackArray.append(itemToPush)
    }
    public mutating func pop() -> T?  {
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
