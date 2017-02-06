//
//  ViewController.swift
//  ios-foundation-array-demo
//
//  Created by OkuderaYuki on 2017/02/06.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var deviceNames: [String] = []
    private var osVersions: Array<Float> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupArray()
    }

    private func setupArray() {
        deviceNames = ["iPhone SE", "iPhone 7", "iPhone 7 Plus"]
        osVersions = [8.4, 9.3, 10.2]
    }
    
    //MARK:- properties
    
    /// 配列の最初の要素を取得する
    private func firstElement() {
        let firstElement = osVersions.first
        print("firstElement: \(firstElement)")
        
        let emptyNumbers:[Int] = []
        let emptyNumbersFirst = emptyNumbers.first
        print("emptyNumbersFirst: \(emptyNumbersFirst)") // emptyNumbersFirst: nil
    }
    
    /// 配列の最後の要素を取得する
    private func lastElement() {
        let lastElement = deviceNames.last
        print("lastElement: \(lastElement)")
        
        let emptyStrings:[String] = []
        let emptyStringsLast = emptyStrings.last
        print("emptyStringsLast: \(emptyStringsLast)") // emptyStringsLast: nil
    }
    
    /// 配列の要素数を取得する
    private func count() {
        let count = deviceNames.count
        print("count: \(count)")
    }
    
    /// 配列に要素があるかどうか判定する
    private func checkEmpty() {
        if deviceNames.isEmpty {
            print("I don't have any devices.")
        }
    }
    
    //MARK:- methods
    
    /// 配列の最後に新しい要素を追加する
    private func addElement() {
        deviceNames.append("iPad mini 4")
    }
    
    /// 配列の最後に他の配列の要素を追加する
    private func addMultipleElements() {
        deviceNames.append(contentsOf: ["iPad Air 2", "iPad Pro"])
    }
    
    /// 指定した位置に新しい要素を挿入する
    private func insertElement() {
        deviceNames.insert("iPhone 6", at: 0)
    }
    
    /// 指定した位置に他の配列の要素を挿入する
    private func insertMultipleElements() {
        deviceNames.insert(contentsOf: ["iPhone 6 Plus", "iPhone 6s", "iPhone 6s Plus"], at: 1)
    }
    
    /// 指定した位置にある要素を削除する
    private func removeElement() {
        deviceNames.remove(at: 1)
    }
    
    /// 配列の最初の要素を削除する
    private func removeFirstElement() {
        osVersions.removeFirst()
    }
    
    /// 配列の最後の要素を削除する
    private func removeLastElement() {
        osVersions.removeLast()
    }
    
    //MARK:- others
    
    /// 配列のコピーを操作する
    private func copiesOfArrays() {
        var numbers = [1, 2, 3]
        var numbersCopy = numbers
        numbers[0] = 100
        numbersCopy.append(4)
        
        print(numbers)
        // Prints "[100, 2, 3]"
        
        print(numbersCopy)
        // Prints "[1, 2, 3, 4]"
        
    }
    
    /// 配列のすべての要素に対して操作する
    private func accessArrayValues() {
        for deviceName in deviceNames {
            print("I have \(deviceName).")
        }
    }
}

