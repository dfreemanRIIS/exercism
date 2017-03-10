import Foundation

class GradeSchool {
	var roster = [Int:Set<String>]()

	var sortedRoster:[Int:Set<String>] {
		var tempRoster = [Int:Set<String>]()

		for index in self.roster.keys.sorted() {
			let temp:Set<String> = Set<String>(self.roster[index]!)
			tempRoster[index] = temp
		}
		return tempRoster
	}

	func addStudent(_ name:String, grade:Int) {
		if roster[grade] != nil {
			roster[grade]!.insert(name)
		} else {
			roster[grade] = Set([name])
		}
	}

	func studentsInGrade(_ num:Int) -> Set<String>{
		if self.roster[num] == nil {
			return Set<String>()
		} else {
			return self.roster[num]!
		}    
	}
}
