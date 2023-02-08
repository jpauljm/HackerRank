//Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero.

func plusMinus(arr: [Int]) -> Void {
    var positiveArr = [Int]()
    var negativeArr = [Int]()
    var zeroArr = [Int]()
    arr.map { element in
        if element < 0 { negativeArr.append(element) }
        else if element > 0 { positiveArr.append(element) }
        else { zeroArr.append(element) }
    }
    let total = arr.count
    print(Float(positiveArr.count) / Float(total))
    print(Float(negativeArr.count) / Float(total))
    print(Float(zeroArr.count) / Float(total))
}

let arr = [1, -2, -7, 9, 1, -8, -5]
plusMinus(arr: arr)

