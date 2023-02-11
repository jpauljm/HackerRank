//Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.

func miniMaxSum(arr: [Int]) -> Void {
    let sortedArr = arr.sorted()
    let minimumSum = sortedArr[0]+sortedArr[1]+sortedArr[2]+sortedArr[3]
    let maximumSum = 
    sortedArr[sortedArr.count-1] +
    sortedArr[sortedArr.count-2] +
    sortedArr[sortedArr.count-3] +
    sortedArr[sortedArr.count-4]
    print("\(minimumSum) \(maximumSum)")
}