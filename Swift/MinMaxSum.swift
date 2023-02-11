//Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.

func minMaxSum(arr: [Int]) -> Void {
    let numberOfItems = 4
    let ascArr = arr.sorted()
    let descArr = Array(ascArr.reversed())
    var minimumSum = 0
    var maximumSum = 0
    for index in 0..<numberOfItems {
        minimumSum += ascArr[index]
        maximumSum += descArr[index]
    }
    print("\(minimumSum) \(maximumSum)")
}