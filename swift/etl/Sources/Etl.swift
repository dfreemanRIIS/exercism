class ETL {
	static func transform(_ old:[Int:[String]]) -> [String:Int] {
		var dictionary:[String:Int] = [:]
		for key in old.keys {
			for letter in old[key]! {
				let temp = letter.lowercased()
				dictionary[temp] = key
			}
		}
		if (dictionary != nil) {
			return dictionary
		}
		return[:]
	}
}
