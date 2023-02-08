/*
 Compare 2 triplets and return the result in points.
    If a[i] > b[i], then a is awarded 1 point.
    If a[i] < b[i], then b is awarded 1 point.
    If a[i] = b[i], then neither receives a point.
*/

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aScore = 0
    var bScore = 0
    for (index, aValue) in a.enumerated() {
        let bValue = b[index]
        if aValue > bValue {
            aScore += 1
        }
        else if aValue < bValue {
            bScore += 1
        }
    }
    return [aScore,bScore]
}

let a = [5,6,7]
let b = [3,6,10]
let result = compareTriplets(a: a, b: b)

