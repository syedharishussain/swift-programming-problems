//: Playground - noun: a place where people can play

import UIKit
import Foundation

func pascalTriangle(row: Int) -> Array<Array<Int>> {
    
    var data = Array<Array<Int>>()
    
    for var i = 0 ; i < row ; i++ {
        
        var array = [Int]()
        
        if i == 0 {
            array.insert(1, atIndex: 0)
        }
        
        for var j = 0 ; j < i ; j++ {
            
            if j == 0 {
                array.insert(1, atIndex: 0)
            }
            
            if j == i-1 {
                array.insert(1, atIndex: i-1)
            }
            
            if j > 0 {
                array.insert(data[i-1][j-1]+data[i-1][j], atIndex: j)
            }
        }

        data.append(array)
    }
    
    return data
}

println("\(pascalTriangle(6))")
