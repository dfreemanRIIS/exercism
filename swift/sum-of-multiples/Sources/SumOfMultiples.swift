class SumOfMultiples {

	static func toLimit(_ inputTarget:Int, inMultiples:[Int]) -> Int {

		var sum = 0

		for multiple in inMultiples{

			for i in 0...inputTarget {

				if(i % multiple  == 0) {
					sum = sum + i
				}
			}
		}
		return sum
	}
}
