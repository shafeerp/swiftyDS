//
//  CircularQueue.swift
//  SwiftyDS
//
//  Created by Shafeer Puthalan on 19/02/19.
//  Copyright © 2019 Shafeer Puthalan. All rights reserved.
//

import Foundation

public struct CircularQueue<T> {
    public var queueArray = Array<T>()
    var front = -1
    var rear = -1
    var size : Int
    
    init(size: Int) {
        self.size = size
    }
    
    func isFull() -> Bool {
        if front == 0 && rear == self.size - 1 {
            return true
        }
        else if front == rear + 1 {
            return true
        }
        else {
            return false
        }
    }
    
    func isEmpty() -> Bool {
        if front == -1 {
            return true
        }
        else{
            return false
        }
    }
    
    public mutating func enque(_ element : inout T) {
        if isFull() {
            print("Queue is full")
        }else {
            if front == -1 {
                front = 0
            }
            rear = rear + 1 % self.size
            self.queueArray[rear] = element
            print("Inserted at \(element) at position \(rear)")
        }
    }
    public mutating func deque() -> T? {
        if isEmpty() {
            print("Queue is empty")
            return nil
        }
        else {
            let element = self.queueArray[front]
            if front == rear {
                front = -1
                rear = -1
            }
            else {
                front = (front+1) % size;
            }
            return element
        }
        
    }
}
