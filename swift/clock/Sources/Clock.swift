import Foundation

class Clock : CustomStringConvertible, Equatable {

	var Minutes:Int = 0
	var Hours:Int = 0

	var description: String {
		let minutesLeftAfterHours = self.Minutes%60
		self.Hours = self.Minutes/60
		return String(format:"%02d:%02d", self.Hours, minutesLeftAfterHours)
	}

	init(hours:Int, minutes:Int = 0) {
		var temp = self.add(minutes: minutes + hours*60)
	}

	func add(minutes:Int) -> Clock {
		self.Minutes = (minutes + self.Minutes) % 1440
		if self.Minutes < 0 {
			self.Minutes = self.Minutes + 1440
		}
		return self
	}

	func subtract(minutes:Int) -> Clock {
		let temp = -minutes
		return add(minutes: temp)
	}

	static func == (clock1: Clock, clock2: Clock) -> Bool {
		return String(describing: clock1) == String(describing: clock2)
	}
}

