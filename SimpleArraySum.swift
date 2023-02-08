//Given an array of integers, find the sum of its elements.

func simpleArraySum(for arr: [Int]) -> Int {
    var sum = 0
    for value in arr {
        sum += value
    }
    return sum
}

let arr = [1,2,3]
let sum = simpleArraySum(for: arr)
