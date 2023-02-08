//Given a square matrix, calculate the absolute difference between the sums of its diagonals.

func diagonalDifference(arr: [[Int]]) -> Int {
    var leftDiag = 0
    var rightDiag = 0
    
    for (jIndex, jArr) in arr.enumerated() {
        for (index, element) in jArr.enumerated() {
            if index == jIndex {
                leftDiag += element
            }
            if (index+jIndex == arr.count-1) {
                rightDiag += element
            }
        }
    }
    return abs(rightDiag - leftDiag)
}

let arr = [[11,2,4],[4,5,6],[10,8,-12]]
let result = diagonalDifference(arr: arr)
