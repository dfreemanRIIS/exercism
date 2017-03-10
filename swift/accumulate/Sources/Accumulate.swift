import Foundation

extension Array{
	func accumulate<T>(_ operation: (Element) -> T) -> [T]{
		var returnArray = [T]()  ///new array
		for input in self {  ///for each input
			let temp = operation(input)  ///do the operation on the input
			returnArray.append(temp)  ///then append the result
		}
		return returnArray
	}
}
