/*https://www.hackerrank.com/challenges/apple-and-orange/

Sam's house has an apple tree and an orange tree that yield an abundance of fruit. Using the information given below, determine the number of apples and oranges that land on Sam's house.

In the diagram below:
The UNDERLINE region denotes the house, where s is the start point, and t is the endpoint. The apple tree a is to the left of the house, and the orange tree b is to its right.
When a fruit falls from its tree, it lands d units of distance from its tree of origin along the x-axis. *A negative value of d means the fruit fell d units to the tree's left, and a positive value of d means it falls d units to the tree's right. *
a------->  s_____________t  <-------b
    d                           d

Given the value of d for m apples and n oranges, determine how many apples and oranges will fall on Sam's house (i.e., in the inclusive range [s,t]).
*/

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let houseApples = apples.map{a+$0}.filter{$0>=s && $0<=t}
    let houseOranges = oranges.map{b+$0}.filter{$0>=s && $0<=t}
    print(houseApples.count)
    print(houseOranges.count)
}