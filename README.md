# Array

## 概要
Arrayは、配列を利用するためのクラスです。

## 関連クラス
NSArray、NSMutableArray

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| first | 最初の要素を取得する | array.first |
| last | 最後の要素を取得する | array.last |
| count | 要素数を取得する | array.count |
| isEmpty  | 配列に要素があるかどうか判定する | array.isEmpty |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| append | 配列の最後に新しい要素を追加する | array.append("newElement") |
| insert | 指定した位置に新しい要素を挿入する | array.insert("newElement", at: 0) |
| remove | 指定した位置にある要素を削除する | array.remove(at: 1) |
| removeFirst  | 配列の最初の要素を削除する | array.removeFirst() |
| removeLast | 配列の最後の要素を削除する | array.removeLast() |

## フレームワーク
Foundation.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/swift/array
