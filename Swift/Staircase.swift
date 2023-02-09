/*
Write a program that prints a staircase of size n.
Eg.: Staircase of size n=4
   #
  ##
 ###
####
*/

func staircase(n: Int) -> Void {
    for row in 1...n {
        let spaces = String(repeating: " ", count: n-row)
        let hashes = String(repeating: "#", count: row)
        print(spaces + hashes)
    }
}