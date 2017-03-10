class SpaceAge {
	var seconds = 0.0
	var onEarth = 0.0
	var onMercury = 0.0
	var onVenus = 0.0
	var onMars = 0.0
	var onJupiter = 0.0
	var onSaturn = 0.0
	var onUranus = 0.0
	var onNeptune = 0.0

	let earthYearInSeconds = 31557600.0
	let mercYearInEarthYear = 0.2408467
	let venusYearInEarthYear = 0.61519726
	let marsYearInEarthYear = 1.8808158
	let jupYearInEarthYear = 11.862615
	let satYearInEarthYear = 29.447498
	let uranusYearInEarthYear = 84.016846
	let neptuneYearInEarthYear = 164.79132

	init(_ input:Double) {
		seconds = input

		onEarth = seconds / earthYearInSeconds
		onMercury = onEarth / mercYearInEarthYear
		onVenus = onEarth / venusYearInEarthYear
		onMars = onEarth / marsYearInEarthYear
		onJupiter = onEarth / jupYearInEarthYear
		onSaturn = onEarth / satYearInEarthYear
		onUranus = onEarth / uranusYearInEarthYear
		onNeptune = onEarth / neptuneYearInEarthYear
	}
}
