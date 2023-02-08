//Given a square matrix, calculate the absolute difference between the sums of its diagonals.

func diagonalDifference(arr: [[Int]]) -> Int {
    let size = arr.count
    var leftDiagonal = 0
    var rightDiagonal = 0
    for index in 0..<size {
        leftDiagonal += arr[index][index]
        let rightIndex = size - 1 - index
        rightDiagonal += arr[index][rightIndex]
    }
    return abs(rightDiagonal - leftDiagonal)
}

let arr = [[11,2,4],[4,5,6],[10,8,-12]]
let result = diagonalDifference(arr: arr)
