class Year {
	var isLeapYear: Bool
	init(calendarYear year: Int) {

		if (year%4) == 0 {
			if (year%100) == 0 {
				if (year%400) == 0 {
					isLeapYear = true
				} else {
					isLeapYear = false
				}
			} else {
				isLeapYear = true
			}
		} else {
			isLeapYear = false
		}
	}
}
