//: Playground - noun: a place where people can play

/*
Given numRows, generate the first numRows of Pascal's triangle.

For example, given numRows = 5,
Return

[
        [1],
       [1,1],
      [1,2,1],
     [1,3,3,1],
    [1,4,6,4,1]
]
*/

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
