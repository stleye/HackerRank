//
//  ExtraLongFactorials.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 04/03/2024.
//

import Foundation

struct ExtraLongFactorials {
    
    func solve() {
        extraLongFactorials(n: 25)
    }
    
    func extraLongFactorials(n: Int) -> Void {
        var res = BigInt(1)
        for i in 1...n {
            res = res * BigInt(i)
        }
        print(res)
    }
    
    struct BigInt: CustomStringConvertible {
        
        var description: String {
            value.map { String($0) }.joined()
        }
        
        var value: [Int]
        
        init(value: [Int]) {
            self.value = value
        }

        init(_ n: Int) {
            self.value = Self.digits(of: n)
        }

        static func * (left: BigInt, right: BigInt) -> BigInt {
            let n1 = left.value.count
            let n2 = right.value.count
            var res = [BigInt]()

            var c = 0
            for j in stride(from: n2-1, through: 0, by: -1) {
                let bn = left * right.value[j]
                res.append(addZeros(bn, c))
                c += 1
            }

            return res.reduce(BigInt(0), +)
        }

        static func * (left: BigInt, right: Int) -> BigInt {
            var arr = [Int]()
            var carry = 0
            for d in left.value.reversed() {
                let mul = d * right + carry
                let remainder = mul % 10
                carry = mul / 10
                arr.insert(remainder, at: 0)
            }
            if carry > 0 {
                arr.insert(carry, at: 0)
            }
            return BigInt(value: arr)
        }
        
        static func + (left: BigInt, right: BigInt) -> BigInt {

            let sizeL = left.value.count
            let sizeR = right.value.count

            var left = left
            var right = right

            if sizeL < sizeR {
                left.value.insert(contentsOf: Array(repeating: 0, count: sizeR-sizeL), at: 0)
            } else {
                right.value.insert(contentsOf: Array(repeating: 0, count: sizeL-sizeR), at: 0)
            }

            var resArr = [Int]()
            var carry = 0
            for i in stride(from: left.value.count-1, through: 0, by: -1) {
                let sum = left.value[i] + right.value[i] + carry
                if sum > 9 {
                    carry = 1
                } else {
                    carry = 0
                }
                resArr.insert(sum % 10, at: 0)
            }
            if carry > 0 {
                resArr.insert(carry, at: 0)
            }
            return BigInt(value: resArr)
        }
        
        private static func addZeros(_ bi: BigInt, _ z: Int) -> BigInt {
            if z == 0 { return bi }
            var bi = bi
            bi.value.append(contentsOf: Array(repeating: 0, count: z))
            return bi
        }

        private static func digits(of number: Int) -> [Int] {
            if number == 0 { return [0] }
            var digitsArray = [Int]()
            var num = number
            if num < 0 {
                num *= -1
            }
            while num > 0 {
                let digit = num % 10
                digitsArray.insert(digit, at: 0) // Insert at the beginning to maintain correct order
                num /= 10
            }
            return digitsArray
        }
    }
    
}
