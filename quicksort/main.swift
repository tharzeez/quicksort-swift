//
//  main.swift
//  quicksort
//
//  Created by Tharzeez on 5/22/18.
//  Copyright © 2018 tharzeez. All rights reserved.
//

import Foundation

print("Hello, World!")

//var a = [5,3,6,2,1,5,7,8,9,4]
//var a = [35, 33,42,10,14,19,27,44,26,31]
var a = [77, 45, 100, 38, 72, 24, 37, 84, 22, 56, 17, 51, 71, 1,58, 43, 42, 87, 62, 44, 47, 27, 50, 41, 83, 11, 60, 97, 98, 95, 52, 8, 80, 12, 30, 53, 2, 32, 18, 55, 61, 19, 96, 10, 73, 21, 57, 6, 91, 89
]

func swap(num1: Int, num2: Int) {
    let temp = a[num1];
    a[num1] = a[num2];
    a[num2] = temp;
}

func quicksort ( array: inout [Int], left: Int, right: Int) {
    let pivot = right;
    var low = left;
    var high = right-1;
    
    if(right == low || high < low) {
        return
    }
    for _ in 0...array.count {
        if(low <= high) {
            if(array[low] < array[pivot]) {
                low = low + 1;
                continue;
            }
            if( array[high] > array[pivot]) {
                high = high - 1;
                continue;
            }
            swap(num1: low, num2: high);
            low = low + 1;
            high = high - 1;
        } else {
            swap(num1: pivot, num2: low )
            break;
        }
    }
    quicksort(array: &a, left: left, right: high)
    quicksort(array: &a, left: low + 1, right: right)
       
}
var copy = a;
quicksort(array: &copy, left: 0, right: a.count - 1);
print(a)
