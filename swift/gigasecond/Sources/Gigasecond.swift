import Foundation

class Gigasecond {
	var description:String
	init?(from:String) {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
		dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
		if let date = dateFormatter.date(from: from) {
			let newDate = date.addingTimeInterval(1000000000.0)
			description = dateFormatter.string(from: newDate)
		} else {
			description = ""
		}
	}
}
