import Foundation

class Bob {
	static func hey(_ input:String) -> String {
		var isBob = false
		var hasQ = false
		var isAllCaps = false
		var isBlankString = false
		var isQuestionWithNumbers = false
		var isOnlyNumbers = false

		///Check for null input and escape
		///(Needs to return now to prevent breaking in future loops)
		if input == "" {
			return "Fine, be that way."
		}

		///Is it all white space
		if(input.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty){
			isBlankString = true
		}

		///Check for all numbers
		let num = Int(input)
		if num != nil {
			isOnlyNumbers = true
		}

		///Check if input just says Bob
		if (input.lowercased() == "bob") {
			isBob = true
		}

		///Check if input is shouting
		if (input == input.uppercased()) {
			isAllCaps = true
		}

		///Check to see if its just a question
		let lastChar:Character = input.characters.last!
		if lastChar == "?" {

			let shortInput = input.substring(to: input.index(before: input.endIndex))
			let num = Int(shortInput)
			///Check for null input
			if num != nil {
				isQuestionWithNumbers = true
			}
			hasQ = true
		}

		if isOnlyNumbers == true {
			return "Whatever."
		} else if isQuestionWithNumbers == true {
			return "Sure."
		} else if isBlankString == true {
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
