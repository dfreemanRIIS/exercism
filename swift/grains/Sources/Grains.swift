import Foundation

class Grains {

	static var total:UInt64 {
		var varTotal:UInt64 = 1
		var chessboard:[UInt64] = []
		chessboard.append(1)
		for i in 1..<64 {
			chessboard.append(chessboard[i-1] * 2)
			varTotal = varTotal + (chessboard[i-1] * 2)
		}
		return varTotal
	}

	static func square(_ input: Int) throws -> UInt64 {
		if input > 64 {
			throw GrainsError.inputTooHigh(input: "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)")
		} else if input < 1 {
			throw GrainsError.inputTooLow(input: "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)")
		}

		var chessboard:[UInt64] = []
		chessboard.append(1)
		for i in 1..<64 {
			chessboard.append(chessboard[i-1] * 2)
		}
		return chessboard[input - 1]
	}

	enum GrainsError: Error {
		case inputTooHigh(input: String)
		case inputTooLow(input: String)
	}
}
