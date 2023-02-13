//Given an array with all candle's sizes, return how many candles are tallest.

func birthdayCakeCandles(candles: [Int]) -> Int {
    let tallest = candles.max() 
    return candles.filter{$0==tallest}.count
}