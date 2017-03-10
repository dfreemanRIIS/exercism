class Nucleotide {

	var input = ""
	init(_ userInput: String) {
		input = userInput
	}

	var complementOfDNA: String {
		var outputStrand = ""

		for character in input.characters {
			switch character {
				case "G":
					outputStrand = outputStrand + "C"
				case "C":
					outputStrand = outputStrand + "G"
				case "T":
					outputStrand = outputStrand + "A"
				case "A":
					outputStrand = outputStrand + "U"
				default:
					outputStrand = outputStrand + ""
			}
		}
		return outputStrand
	}
}
