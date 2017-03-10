import Foundation

class Bob {
	static func hey(_ input:String) -> String {
		var isBob = false
		var hasQ = false
		var isAllCaps = false
		var isBlankString = false

		if input == "" {
			return "Fine, be that way."
		}

		if(input.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty){
			isBlankString = true
		}

		let num = Int(input)
		if num != nil {
			return "Whatever."
		}

		if (input.lowercased() == "bob") {
			isBob = true
		}
		if (input == input.uppercased()) {
			isAllCaps = true
		}

		let lastChar:Character = input.characters.last!
		if lastChar == "?" {

			let shortInput = input.substring(to: input.index(before: input.endIndex))
			let num = Int(shortInput)
			if num != nil {
				return "Sure."
			}

			hasQ = true
		}

		//Test Only numbers

		if isBlankString == true {
			return "Fine, be that way."
		} else if isAllCaps == true {
			return "Woah, chill out!"
		} else if isBob == true {
			return "Fine. Be that way!"
		} else if hasQ == true {
			return "Sure."
		} else {
			return "Whatever."
		}
	}
}
