class Raindrops {

	var input = 0

	init(_ userInput:Int) {
		input = userInput
	}

	var sounds:String {

		///If 1 return 1
		if input == 1 {
			return "1"
		}

		var output = ""

		for i in 2...(input) {
			if ((input % i) == 0) {
				if i == 3 {
					output = output + "Pling"
				}
				if i == 5 {
					output = output + "Plang"
				}
				if i == 7 {
					output = output + "Plong"
				}
			}
		}

		///If no matches return input
		if output == "" {
			return String(input)
		}

		return output
	}
}
