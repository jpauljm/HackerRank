/*
https://www.hackerrank.com/challenges/designer-pdf-viewer/

Using the letter heights given (h array has the height of all 26 letters), determine the area of the rectangle highlight in mm² assuming all letters are 1mm wide.

word = hello
|-----|
|hello|
|-----|
width = 1mm*5
height = 5mm (l has the biggest height)
rectangle area = 25mm²
*/

func highlightedText(h: [Int], word: String) -> Int {
    let unicodeAlphabetStartIndex = 97
    var height = 0
    for char in word {
        let index = Int(UnicodeScalar(String(char))!.value)-unicodeAlphabetStartIndex
        let letterHeight = h[index]
        height = letterHeight > height ? letterHeight : height
    }
    return word.count*height
}