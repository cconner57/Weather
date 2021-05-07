import SwiftUI

struct ContentView: View {
	
	//api.openweathermap.org/data/2.5/weather?q={city name},{state code}&appid={API key}
	
	var body: some View {
		
		VStack {
			Text(Date(), style: .date)
				.font(.largeTitle)
				.padding(.top, 60)
			GeometryReader	{ geometry in
				VStack {
					HStack(spacing: 60) {
						VStack(alignment: .leading) {
							Text("Los Angeles")
								.font(.title2)
							Text("78°")
								.font(.largeTitle)
						}
						.padding()
						Image(systemName: "sun.min.fill")
							.foregroundColor(Color(.systemYellow))
							.font(.system(size: 100))
							.padding()
					}
					.frame(height: geometry.size.height * 0.23)
					HStack(spacing: 28) {
						WeekItem(date: "Now", temp: "78")
						WeekItem(date: "12pm", temp: "78")
						WeekItem(date: "1pm", temp: "78")
						WeekItem(date: "2pm", temp: "78")
						WeekItem(date: "3pm", temp: "78")
					}
					.font(.headline)
					.frame(height: geometry.size.height * 0.22)
					HStack(spacing: 32) {
						VStack(alignment: .leading) {
							Text("Humidity")
							Text("80%")
								.bold()
						}
						VStack(alignment: .leading) {
							Text("Wind")
							Text("3 m/s")
								.bold()
						}
						VStack(alignment: .leading) {
							Text("Air Pressure")
							Text("560.0 mm")
								.bold()
						}
						VStack(alignment: .leading) {
							Text("UV")
							Text("0")
								.bold()
						}
					}
					.frame(height: geometry.size.height * 0.05)
					VStack(spacing: 12) {
						DayItem(date: "Saturday", tempHigh: "78", tempLow: "52")
						DayItem(date: "Sunday", tempHigh: "78", tempLow: "52")
						DayItem(date: "Monday", tempHigh: "78", tempLow: "52")
						DayItem(date: "Tuesday", tempHigh: "78", tempLow: "52")
						DayItem(date: "Wednesday", tempHigh: "78", tempLow: "52")
						DayItem(date: "Thursday", tempHigh: "78", tempLow: "52")
					}
					.padding(30)
					.background(Color(hue: 0.569, saturation: 0.8, brightness: 1, opacity: 1))
					.cornerRadius(25)
					.font(.title3)
					.frame(height: geometry.size.height * 0.50)
				}
			}
			
		}
		.background(Color.blue)
		.foregroundColor(.white)
		.ignoresSafeArea()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
