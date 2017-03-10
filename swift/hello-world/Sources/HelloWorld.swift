class HelloWorld {
	static func hello(_ input: String? = "") -> String {
		if input != "" {
			return "Hello, \(input)!";
		} else {
			return "Hello World!"
		}
	}
}
