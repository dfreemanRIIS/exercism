class Hamming {
	static func compute(_ strand: String, against other: String) -> Int! {

		///Make sure strands are the same lenght
		let length1 = strand.characters.count
		let length2 = other.characters.count
		if length1 != length2 {
			return nil
		}

		///Find Hamming Distance
		var hammingDistance = 0
		let strand1c = Array(strand.characters)
		let strand2c = Array(other.characters)
		for i in 0..<length1 {
			if strand1c[i] != strand2c[i] {
				hammingDistance = hammingDistance + 1
			}
		}

		return hammingDistance
	}
}
