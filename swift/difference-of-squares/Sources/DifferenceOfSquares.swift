import Foundation

class Squares {
	var inNumber = 0
	init(_ number: Int) {
		inNumber = number
	}

	var differenceOfSquares: Int {
		get {
			return self.squareOfSums - self.sumOfSquares
		}
	}

	var sumOfSquares: Int {
		get {
			var squaredThenSummed = 0
			for number in 1...inNumber {
				squaredThenSummed = squaredThenSummed + (number * number)
			}
			return squaredThenSummed
		}
	}
    
	var squareOfSums: Int {
		get {
			var summedThenSquared = 0
			for number in 1...inNumber {
				summedThenSquared = summedThenSquared + number
			}
			return summedThenSquared * summedThenSquared
		}
	}
}
