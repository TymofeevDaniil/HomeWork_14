import Foundation
import RealmSwift

class WeatherData {

//MARK: - Init params
//    var name = "name"
//    var description = "description"
//    var icon = "icon"
//    var tempMin = 0
//    var tempMax = 0
//    var day1 = "day1"
//    var day2 = "day2"
//    var day3 = "day3"
//    var day4 = "day4"
//    var day5 = "day5"
//    var tempDay1 = 0
//    var tempDay2 = 0
//    var tempDay3 = 0
//    var tempDay4 = 0
//    var tempDay5 = 0

//MARK: - JSON form
    func jsonOpen(data: NSDictionary){
    //init?(data: NSDictionary){
        guard let cityContainer = data["city"] as? NSDictionary,
              let name = cityContainer["name"] as? String,

              let listContainer = data["list"] as? [NSDictionary],
              let day1Container = listContainer[0] as? NSDictionary,
              let mainContainerDay1 = day1Container["main"] as? NSDictionary,
              let tempMin = mainContainerDay1["temp_min"] as? Double,
              let tempMax = mainContainerDay1["temp_max"] as? Double,
              let tempDay1 = mainContainerDay1["temp"] as? Double,

              let weatherContainerArray = day1Container["weather"] as? [NSDictionary],
              let weatherContainer = weatherContainerArray[0] as? NSDictionary,
              let description = weatherContainer["description"] as? String,
              let icon = weatherContainer["icon"] as? String,
              let day1 = day1Container["dt_txt"] as? String,

              let day2Container = listContainer[8] as? NSDictionary,
              let mainContainerDay2 = day2Container["main"] as? NSDictionary,
              let tempDay2 = mainContainerDay2["temp"] as? Double,
              let day2 = day2Container["dt_txt"] as? String,

              let day3Container = listContainer[16] as? NSDictionary,
              let mainContainerDay3 = day3Container["main"] as? NSDictionary,
              let tempDay3 = mainContainerDay3["temp"] as? Double,
              let day3 = day3Container["dt_txt"] as? String,

              let day4Container = listContainer[24] as? NSDictionary,
              let mainContainerDay4 = day4Container["main"] as? NSDictionary,
              let tempDay4 = mainContainerDay4["temp"] as? Double,
              let day4 = day4Container["dt_txt"] as? String,

              let day5Container = listContainer[32] as? NSDictionary,
              let mainContainerDay5 = day5Container["main"] as? NSDictionary,
              let tempDay5 = mainContainerDay5["temp"] as? Double,
              let day5 = day5Container["dt_txt"] as? String
        else {
            return print("json not loaded")
        }
        SavedWeather.shared.save(newData: (name, description, icon, Int(tempMin), Int(tempMax), day1, day2, day3, day4, day5, Int(tempDay1), Int(tempDay2), Int(tempDay3), Int(tempDay4), Int(tempDay5)))
//        (self.name, self.description, self.icon, self.tempMin, self.tempMax, self.day1, self.day2, self.day3, self.day4, self.day5, self.tempDay1, self.tempDay2, self.tempDay3, self.tempDay4, self.tempDay5) = SavedWeather.shared.load()!
//        self.name = name
//        self.description = description
//        self.icon = icon
//        self.tempMin = Int(tempMin)
//        self.tempMax = Int(tempMax)
//        self.tempDay1 = Int(tempDay1)
//        self.day1 = day1
//        self.day2 = day2
//        self.day3 = day3
//        self.day4 = day4
//        self.day5 = day5
//        self.tempDay1 = Int(tempDay1)
//        self.tempDay2 = Int(tempDay2)
//        self.tempDay3 = Int(tempDay3)
//        self.tempDay4 = Int(tempDay4)
//        self.tempDay5 = Int(tempDay5)
    }
}
