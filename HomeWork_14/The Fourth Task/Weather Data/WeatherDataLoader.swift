
import Foundation
import Alamofire

class WeatherDataLoader {
    var customUrl: String = "https://api.openweathermap.org/data/2.5/forecast?id=5202009&units=metric&appid=7b92543413e935f9b9ae8273cb2f54d2&lang=RU"
    
    func loadWeatherAlamofire(completion: @escaping (WeatherData) -> Void){
        request(customUrl).responseJSON { jsonData in
            if let data = jsonData.result.value,
               let jsonDic = data as? NSDictionary{
                    guard let weatherData = WeatherData(data: jsonDic) else {
                        print("WEATHER ERROR"); return
                    }
                    DispatchQueue.main.async { completion(weatherData) }
            }
        }
    }
    func cityDataLoader(url: String, completion: @escaping (WeatherData) -> Void){
        request(url).responseJSON { jsonData in
            if let data = jsonData.result.value,
               let jsonDic = data as? NSDictionary{
                    guard let weatherData = WeatherData(data: jsonDic) else {
                        print("WEATHER ERROR"); return
                    }
                    DispatchQueue.main.async { completion(weatherData) }
            }
        }
    }
}

