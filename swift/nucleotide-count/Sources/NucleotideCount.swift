class DNA {
	let strand: String

	init?(strand: String) {
		self.strand = strand

		///Validate DNA
		for character in strand.characters {
			if (character != "T") {
				if (character != "A") {
					if (character != "C") {
						if (character != "G") {
							return nil
						}
					}
				}
			}
		}
		///End Validate DNA
	}

	func count(_ input:Character) -> Int {
		return strand.characters.filter({
			$0 == input
		}).count ///Character++
	}

	func counts() -> Dictionary<String,Int> {
		return [
			"T": count("T"),
			"A": count("A"),
			"C": count("C"),
			"G": count("G")
		]
	}
}
