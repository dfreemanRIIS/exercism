import Foundation

class Isogram {
	static func isIsogram(_ string:String) -> Bool {
		let newString = string.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "")
		let characters = Array(newString.characters)
		let length = newString.characters.count
		var used = ""

		for i in 0..<length {
			if used.lowercased().range(of:String(characters[i])) != nil {
				return false
			} else {
				used.append(characters[i])
			}
		}
		return true
	}
}
