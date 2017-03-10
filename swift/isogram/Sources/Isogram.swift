import Foundation

//USER INPUT
print("Enter word")
let string:String = (readLine() ?? "")
let characters = Array(string.characters)
var length = string.characters.count

//USED CHAR
var used = ""

for i in 0..<length {
	if used.lowercased().range(of:characters[i]) != nil {
		print("double")
	} else {
		var.append(character[i])
		print("good")
	}
}
