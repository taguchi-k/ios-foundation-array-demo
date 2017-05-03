//: Playground - noun: a place where people can play

import UIKit

var deviceNames = ["iPhone SE", "iPhone 7", "iPhone 7 Plus"]
var osVersions = [8.4, 9.3, 10.2]

//MARK:- properties

/// 配列の最初の要素を取得する
func firstElement() {
    let firstElement = osVersions.first
    print("firstElement: \(String(describing: firstElement))")

    let emptyNumbers:[Int] = []
    let emptyNumbersFirst = emptyNumbers.first
    print("emptyNumbersFirst: \(String(describing: emptyNumbersFirst))") // emptyNumbersFirst: nil
}

/// 配列の最後の要素を取得する
func lastElement() {
    let lastElement = deviceNames.last
    print("lastElement: \(String(describing: lastElement))")

    let emptyStrings:[String] = []
    let emptyStringsLast = emptyStrings.last
    print("emptyStringsLast: \(String(describing: emptyStringsLast))") // emptyStringsLast: nil
}

/// 配列の要素数を取得する
func count() {
    let count = deviceNames.count
    print("count: \(count)")
}

/// 配列に要素があるかどうか判定する
func checkEmpty() {
    if deviceNames.isEmpty {
        print("I don't have any devices.")
    }
}

//MARK:- methods

/// 配列の最後に新しい要素を追加する
func addElement() {
    deviceNames.append("iPad mini 4")
}

/// 配列の最後に他の配列の要素を追加する
func addMultipleElements() {
    deviceNames.append(contentsOf: ["iPad Air 2", "iPad Pro"])
}

/// 指定した位置に新しい要素を挿入する
func insertElement() {
    deviceNames.insert("iPhone 6", at: 0)
}

/// 指定した位置に他の配列の要素を挿入する
func insertMultipleElements() {
    deviceNames.insert(contentsOf: ["iPhone 6 Plus", "iPhone 6s", "iPhone 6s Plus"], at: 1)
}

/// 指定した位置にある要素を削除する
func removeElement() {
    deviceNames.remove(at: 1)
}

/// 配列の最初の要素を削除する
func removeFirstElement() {
    osVersions.removeFirst()
}

/// 配列の最後の要素を削除する
func removeLastElement() {
    osVersions.removeLast()
}

//MARK:- others

/// 配列のコピーを操作する
func copiesOfArrays() {
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
func accessArrayValues() {
    for deviceName in deviceNames {

        // for-inの場合はbreak可能（forEachでは不可）
        if deviceName == "iPhone 7" {
            break
        }

        print("I have \(deviceName).")
    }
}

accessArrayValues()

// forEachを使って配列のすべての要素に対して操作する
deviceNames.forEach { print("I have \($0).") }

// 元の配列を操作した配列を作る（別の配列が作られる）
let mapedDeviceNames = deviceNames.map { "😊" + $0 + "😊" }
print(mapedDeviceNames)

// 元の配列から条件に合うものを抽出した配列を作る
let filteredDeviceNames = deviceNames.filter { $0.characters.count > 8 }

// 指定した要素が配列に含まれているか？
_ = deviceNames.contains("iPhone 7")
_ = deviceNames.contains("iPad")

var intArray = [4, 9, 10, 355, 2, 8, 28, 6]
// 配列の最小値を取得する
_ = intArray.min()
// 配列の最大値を取得する
_ = intArray.max()

// 元の配列をソートした配列を作る
// 元の配列に影響を与えない（別の配列を作る）
let sortedIntArray = intArray.sorted { $0 < $1 }
print("sorted後のintArray: \(intArray)")
print("sortedIntArray: \(sortedIntArray)")
// 元の配列を変更する
intArray.sort { $0 > $1}
print("sort後のintArray: \(intArray)")

// 配列の要素をまとめる（下記は初期値0, 要素を全て足しあわせている）
_ = intArray.reduce(0, +)
_ = 4 + 9 + 10 + 355 + 2 + 8 + 28 + 6 // 確認用

/*
 map と flatMap の違い
 参考 http://qiita.com/yosan/items/33f74736810bb52b349a
 */

/* 
 オプショナル
 */
let numberString: String? = "123"

let mapNumber = numberString.map { (s: String) -> Int? in
    return Int(s)
}
print(mapNumber as Any)

let flatMapNumber = numberString.flatMap { (s: String) -> Int? in
    return Int(s)
}
print(flatMapNumber as Any)

/*
 配列
 */
// クロージャの返り値がオプショナル
let numberStrings: [String] = ["123", "456", "789"]

let mapOptionalNumbers = numberStrings.map { (s: String) -> Int? in
    return Int(s)
}
print(mapOptionalNumbers)

let flatMapOptionalNumbers = numberStrings.flatMap { (s: String) -> Int? in
    return Int(s)
}
print(flatMapOptionalNumbers)

// クロージャの返り値がSequenceType
let numbers: [Int] = [123, 456, 789]

let mapNumbers = numbers.map { (number: Int) -> [Int] in
    return [number, number]
}
print(mapNumbers)

let flatMapNumbers = numbers.flatMap { (number: Int) -> [Int] in
    return [number, number]
}
print(flatMapNumbers)

// クロージャの返り値にnilが含まれる場合
let strings = ["demo", "123", "テスト", "456", "😊", "789"]

let mapStrings = strings.map { (s: String) -> Int? in
    return Int(s)
}
print(mapStrings)

let flatMapStrings = strings.flatMap { (s: String) -> Int? in
    return Int(s)
}
print(flatMapStrings)
