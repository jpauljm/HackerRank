/*
Variation of HackerRank's exercise without blocking spaces
https://www.hackerrank.com/challenges/queens-attack-2/

You will be given a square chess board with one queen on it. Determine how many squares the queen can move.
*/

func queenMovement(boardSize: Int, queen: (x: Int, y: Int)) {
    var movements: [(x: Int,y: Int)] = []
    for x in 1...boardSize {
        for y in 1...boardSize {
            if x == queen.x ||
                y == queen.y ||
                (abs(x-queen.x) == abs(y-queen.y))
            {
                guard (x,y) != queen else {
                    continue
                }
                movements.append((x,y))
            }
        }
    }
    print(movements)
}