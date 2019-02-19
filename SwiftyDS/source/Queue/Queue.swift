//
//  Queue.swift
//  SwiftyDS
//
//  Created by Shafeer Puthalan on 18/02/19.
//  Copyright © 2019 Shafeer Puthalan. All rights reserved.
//

import Foundation

public struct Queue<T> {
    public var queueArray = Array<T>()
    
    public mutating func enqueue(_ element : inout T) {
        self.queueArray.append(element)
    }
    public mutating func dequeue() -> T? {
        if self.queueArray.isEmpty {
            return nil
        }
        else {
            let itemToReturn = self.queueArray.first
            self.queueArray.removeFirst()
            return itemToReturn
        }
    }
}


