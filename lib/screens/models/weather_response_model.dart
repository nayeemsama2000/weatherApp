import 'dart:convert';

WeatherResponseModel weatherResponseModelFromJson(String str) => WeatherResponseModel.fromJson(json.decode(str));
String weatherResponseModelToJson(WeatherResponseModel data) => json.encode(data.toJson());
class WeatherResponseModel {
  WeatherResponseModel({
      Location? location, 
      Current? current, 
      Forecast? forecast,}){
    _location = location;
    _current = current;
    _forecast = forecast;
}

  WeatherResponseModel.fromJson(dynamic json) {
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _current = json['current'] != null ? Current.fromJson(json['current']) : null;
    _forecast = json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }
  Location? _location;
  Current? _current;
  Forecast? _forecast;
WeatherResponseModel copyWith({  Location? location,
  Current? current,
  Forecast? forecast,
}) => WeatherResponseModel(  location: location ?? _location,
  current: current ?? _current,
  forecast: forecast ?? _forecast,
);
  Location? get location => _location;
  Current? get current => _current;
  Forecast? get forecast => _forecast;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_current != null) {
      map['current'] = _current?.toJson();
    }
    if (_forecast != null) {
      map['forecast'] = _forecast?.toJson();
    }
    return map;
  }

}

/// forecastday : [{"date":"2023-11-05","date_epoch":1699142400,"day":{"maxtemp_c":31.4,"maxtemp_f":88.4,"mintemp_c":22.9,"mintemp_f":73.1,"avgtemp_c":27.1,"avgtemp_f":80.7,"maxwind_mph":5.6,"maxwind_kph":9.0,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":24.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"06:35 AM","sunset":"05:34 PM","moonrise":"No moonrise","moonset":"01:19 PM","moon_phase":"Last Quarter","moon_illumination":53,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1699122600,"time":"2023-11-05 00:00","temp_c":25.5,"temp_f":77.9,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":109,"wind_dir":"ESE","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":29,"cloud":15,"feelslike_c":24.9,"feelslike_f":76.9,"windchill_c":25.5,"windchill_f":77.9,"heatindex_c":24.9,"heatindex_f":76.9,"dewpoint_c":6.1,"dewpoint_f":43.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.0,"gust_kph":4.8,"uv":1.0},{"time_epoch":1699126200,"time":"2023-11-05 01:00","temp_c":24.9,"temp_f":76.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":108,"wind_dir":"ESE","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":30,"cloud":0,"feelslike_c":24.6,"feelslike_f":76.4,"windchill_c":24.9,"windchill_f":76.8,"heatindex_c":24.6,"heatindex_f":76.4,"dewpoint_c":6.1,"dewpoint_f":42.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.0,"gust_kph":4.8,"uv":1.0},{"time_epoch":1699129800,"time":"2023-11-05 02:00","temp_c":24.1,"temp_f":75.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":54,"wind_dir":"NE","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":34,"cloud":2,"feelslike_c":24.5,"feelslike_f":76.0,"windchill_c":24.1,"windchill_f":75.4,"heatindex_c":24.5,"heatindex_f":76.0,"dewpoint_c":7.1,"dewpoint_f":44.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.3,"gust_kph":6.9,"uv":1.0},{"time_epoch":1699133400,"time":"2023-11-05 03:00","temp_c":23.7,"temp_f":74.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":48,"wind_dir":"NE","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":35,"cloud":0,"feelslike_c":24.4,"feelslike_f":75.8,"windchill_c":23.7,"windchill_f":74.7,"heatindex_c":24.4,"heatindex_f":75.8,"dewpoint_c":7.3,"dewpoint_f":45.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.6,"uv":1.0},{"time_epoch":1699137000,"time":"2023-11-05 04:00","temp_c":23.4,"temp_f":74.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":53,"wind_dir":"NE","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":36,"cloud":0,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":23.4,"windchill_f":74.1,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":7.7,"dewpoint_f":45.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.8,"gust_kph":9.3,"uv":1.0},{"time_epoch":1699140600,"time":"2023-11-05 05:00","temp_c":23.1,"temp_f":73.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":63,"wind_dir":"ENE","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":37,"cloud":0,"feelslike_c":24.2,"feelslike_f":75.6,"windchill_c":23.1,"windchill_f":73.6,"heatindex_c":24.2,"heatindex_f":75.6,"dewpoint_c":7.8,"dewpoint_f":46.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.1,"gust_kph":8.2,"uv":1.0},{"time_epoch":1699144200,"time":"2023-11-05 06:00","temp_c":22.9,"temp_f":73.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":68,"wind_dir":"ENE","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":38,"cloud":0,"feelslike_c":24.2,"feelslike_f":75.5,"windchill_c":22.9,"windchill_f":73.1,"heatindex_c":24.2,"heatindex_f":75.5,"dewpoint_c":7.9,"dewpoint_f":46.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.0,"gust_kph":6.5,"uv":1.0},{"time_epoch":1699147800,"time":"2023-11-05 07:00","temp_c":23.3,"temp_f":73.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":67,"wind_dir":"ENE","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":38,"cloud":0,"feelslike_c":24.3,"feelslike_f":75.8,"windchill_c":23.3,"windchill_f":73.9,"heatindex_c":24.3,"heatindex_f":75.8,"dewpoint_c":8.1,"dewpoint_f":46.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.8,"gust_kph":6.0,"uv":6.0},{"time_epoch":1699151400,"time":"2023-11-05 08:00","temp_c":24.8,"temp_f":76.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":36,"wind_dir":"NE","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":34,"cloud":0,"feelslike_c":24.9,"feelslike_f":76.7,"windchill_c":24.8,"windchill_f":76.7,"heatindex_c":24.9,"heatindex_f":76.7,"dewpoint_c":7.7,"dewpoint_f":45.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.4,"gust_kph":5.5,"uv":6.0},{"time_epoch":1699155000,"time":"2023-11-05 09:00","temp_c":26.5,"temp_f":79.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":46,"wind_dir":"NE","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":30,"cloud":0,"feelslike_c":25.7,"feelslike_f":78.3,"windchill_c":26.5,"windchill_f":79.6,"heatindex_c":25.7,"heatindex_f":78.3,"dewpoint_c":7.4,"dewpoint_f":45.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.6,"gust_kph":4.1,"uv":7.0},{"time_epoch":1699158600,"time":"2023-11-05 10:00","temp_c":28.1,"temp_f":82.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":16,"wind_dir":"NNE","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":0,"feelslike_c":26.6,"feelslike_f":79.9,"windchill_c":28.1,"windchill_f":82.5,"heatindex_c":26.6,"heatindex_f":79.9,"dewpoint_c":6.5,"dewpoint_f":43.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.6,"gust_kph":4.1,"uv":7.0},{"time_epoch":1699162200,"time":"2023-11-05 11:00","temp_c":29.3,"temp_f":84.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":354,"wind_dir":"N","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":0,"feelslike_c":27.2,"feelslike_f":80.9,"windchill_c":29.3,"windchill_f":84.8,"heatindex_c":27.2,"heatindex_f":80.9,"dewpoint_c":3.9,"dewpoint_f":39.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.6,"gust_kph":5.8,"uv":7.0},{"time_epoch":1699165800,"time":"2023-11-05 12:00","temp_c":30.2,"temp_f":86.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":347,"wind_dir":"NNW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":0,"feelslike_c":28.0,"feelslike_f":82.4,"windchill_c":30.2,"windchill_f":86.4,"heatindex_c":28.0,"heatindex_f":82.4,"dewpoint_c":2.8,"dewpoint_f":37.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.9,"gust_kph":7.9,"uv":8.0},{"time_epoch":1699169400,"time":"2023-11-05 13:00","temp_c":30.8,"temp_f":87.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":335,"wind_dir":"NNW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":0,"feelslike_c":28.6,"feelslike_f":83.4,"windchill_c":30.8,"windchill_f":87.5,"heatindex_c":28.6,"heatindex_f":83.4,"dewpoint_c":2.0,"dewpoint_f":35.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.9,"gust_kph":9.5,"uv":8.0},{"time_epoch":1699173000,"time":"2023-11-05 14:00","temp_c":31.2,"temp_f":88.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":327,"wind_dir":"NNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":29.0,"feelslike_f":84.2,"windchill_c":31.2,"windchill_f":88.2,"heatindex_c":29.0,"heatindex_f":84.2,"dewpoint_c":1.3,"dewpoint_f":34.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.2,"gust_kph":9.9,"uv":8.0},{"time_epoch":1699176600,"time":"2023-11-05 15:00","temp_c":31.4,"temp_f":88.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":321,"wind_dir":"NW","pressure_mb":1012.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":0,"feelslike_c":29.1,"feelslike_f":84.4,"windchill_c":31.4,"windchill_f":88.4,"heatindex_c":29.1,"heatindex_f":84.4,"dewpoint_c":0.7,"dewpoint_f":33.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.4,"gust_kph":10.4,"uv":8.0},{"time_epoch":1699180200,"time":"2023-11-05 16:00","temp_c":31.1,"temp_f":87.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":326,"wind_dir":"NNW","pressure_mb":1011.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":0,"feelslike_c":28.8,"feelslike_f":83.9,"windchill_c":31.1,"windchill_f":87.9,"heatindex_c":28.8,"heatindex_f":83.9,"dewpoint_c":0.5,"dewpoint_f":32.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.9,"gust_kph":11.1,"uv":8.0},{"time_epoch":1699183800,"time":"2023-11-05 17:00","temp_c":29.9,"temp_f":85.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":326,"wind_dir":"NNW","pressure_mb":1012.0,"pressure_in":29.88,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":27.7,"feelslike_f":81.8,"windchill_c":29.9,"windchill_f":85.8,"heatindex_c":27.7,"heatindex_f":81.8,"dewpoint_c":0.4,"dewpoint_f":32.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.6,"uv":7.0},{"time_epoch":1699187400,"time":"2023-11-05 18:00","temp_c":29.1,"temp_f":84.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":324,"wind_dir":"NW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":0,"feelslike_c":27.0,"feelslike_f":80.6,"windchill_c":29.1,"windchill_f":84.4,"heatindex_c":27.0,"heatindex_f":80.6,"dewpoint_c":0.4,"dewpoint_f":32.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.0,"gust_kph":9.6,"uv":1.0},{"time_epoch":1699191000,"time":"2023-11-05 19:00","temp_c":27.0,"temp_f":80.6,"is_day":0,"condition":{"text":"Overcast","icon":"//cdn.weatherapi.com/weather/64x64/night/122.png","code":1009},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":10,"wind_dir":"N","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":51,"cloud":0,"feelslike_c":26.5,"feelslike_f":79.7,"windchill_c":28.6,"windchill_f":83.4,"heatindex_c":26.5,"heatindex_f":79.7,"dewpoint_c":0.6,"dewpoint_f":33.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":1.8,"vis_miles":1.0,"gust_mph":4.7,"gust_kph":7.6,"uv":1.0},{"time_epoch":1699194600,"time":"2023-11-05 20:00","temp_c":28.0,"temp_f":82.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.0,"wind_kph":3.2,"wind_degree":339,"wind_dir":"NNW","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":0,"feelslike_c":26.0,"feelslike_f":78.9,"windchill_c":28.0,"windchill_f":82.5,"heatindex_c":26.0,"heatindex_f":78.9,"dewpoint_c":0.7,"dewpoint_f":33.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.7,"gust_kph":5.9,"uv":1.0},{"time_epoch":1699198200,"time":"2023-11-05 21:00","temp_c":27.3,"temp_f":81.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":1,"wind_dir":"N","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":0,"feelslike_c":25.5,"feelslike_f":77.8,"windchill_c":27.3,"windchill_f":81.2,"heatindex_c":25.5,"heatindex_f":77.8,"dewpoint_c":0.8,"dewpoint_f":33.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.1,"gust_kph":3.3,"uv":1.0},{"time_epoch":1699201800,"time":"2023-11-05 22:00","temp_c":26.4,"temp_f":79.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":39,"wind_dir":"NE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":0,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":26.4,"windchill_f":79.6,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":1.0,"dewpoint_f":33.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.7,"gust_kph":2.7,"uv":1.0},{"time_epoch":1699205400,"time":"2023-11-05 23:00","temp_c":25.7,"temp_f":78.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":32,"wind_dir":"NNE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":0,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":25.7,"windchill_f":78.3,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":1.2,"dewpoint_f":34.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.3,"gust_kph":5.3,"uv":1.0}]},{"date":"2023-11-06","date_epoch":1699228800,"day":{"maxtemp_c":31.8,"maxtemp_f":89.2,"mintemp_c":23.0,"mintemp_f":73.3,"avgtemp_c":27.2,"avgtemp_f":81.0,"maxwind_mph":3.6,"maxwind_kph":5.8,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":18.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"06:36 AM","sunset":"05:33 PM","moonrise":"12:03 AM","moonset":"01:53 PM","moon_phase":"Waning Crescent","moon_illumination":44,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1699209000,"time":"2023-11-06 00:00","temp_c":25.3,"temp_f":77.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":40,"wind_dir":"NE","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":0,"feelslike_c":24.1,"feelslike_f":75.3,"windchill_c":25.3,"windchill_f":77.5,"heatindex_c":24.1,"heatindex_f":75.3,"dewpoint_c":1.5,"dewpoint_f":34.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.0,"gust_kph":9.6,"uv":1.0},{"time_epoch":1699212600,"time":"2023-11-06 01:00","temp_c":24.7,"temp_f":76.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":63,"wind_dir":"ENE","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":22,"cloud":0,"feelslike_c":23.8,"feelslike_f":74.8,"windchill_c":24.7,"windchill_f":76.4,"heatindex_c":23.8,"heatindex_f":74.8,"dewpoint_c":1.6,"dewpoint_f":35.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.2,"gust_kph":5.1,"uv":1.0},{"time_epoch":1699216200,"time":"2023-11-06 02:00","temp_c":24.1,"temp_f":75.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.3,"wind_kph":2.2,"wind_degree":133,"wind_dir":"SE","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":0,"feelslike_c":23.6,"feelslike_f":74.4,"windchill_c":24.1,"windchill_f":75.3,"heatindex_c":23.6,"heatindex_f":74.4,"dewpoint_c":1.8,"dewpoint_f":35.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.3,"gust_kph":3.8,"uv":1.0},{"time_epoch":1699219800,"time":"2023-11-06 03:00","temp_c":23.7,"temp_f":74.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.6,"wind_kph":2.5,"wind_degree":140,"wind_dir":"SE","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":0,"feelslike_c":23.4,"feelslike_f":74.1,"windchill_c":23.7,"windchill_f":74.6,"heatindex_c":23.4,"heatindex_f":74.1,"dewpoint_c":1.9,"dewpoint_f":35.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.8,"gust_kph":4.4,"uv":1.0},{"time_epoch":1699223400,"time":"2023-11-06 04:00","temp_c":23.4,"temp_f":74.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.6,"wind_kph":2.5,"wind_degree":162,"wind_dir":"SSE","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":0,"feelslike_c":23.3,"feelslike_f":73.9,"windchill_c":23.4,"windchill_f":74.1,"heatindex_c":23.3,"heatindex_f":73.9,"dewpoint_c":1.9,"dewpoint_f":35.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.8,"gust_kph":4.4,"uv":1.0},{"time_epoch":1699227000,"time":"2023-11-06 05:00","temp_c":23.2,"temp_f":73.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.3,"wind_kph":2.2,"wind_degree":185,"wind_dir":"S","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":0,"feelslike_c":23.2,"feelslike_f":73.8,"windchill_c":23.2,"windchill_f":73.7,"heatindex_c":23.2,"heatindex_f":73.8,"dewpoint_c":1.8,"dewpoint_f":35.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.4,"gust_kph":3.9,"uv":1.0},{"time_epoch":1699230600,"time":"2023-11-06 06:00","temp_c":23.0,"temp_f":73.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":190,"wind_dir":"S","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":0,"feelslike_c":23.1,"feelslike_f":73.6,"windchill_c":23.0,"windchill_f":73.3,"heatindex_c":23.1,"heatindex_f":73.6,"dewpoint_c":1.7,"dewpoint_f":35.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.6,"gust_kph":2.6,"uv":1.0},{"time_epoch":1699234200,"time":"2023-11-06 07:00","temp_c":23.4,"temp_f":74.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":190,"wind_dir":"S","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":0,"feelslike_c":23.3,"feelslike_f":73.9,"windchill_c":23.4,"windchill_f":74.2,"heatindex_c":23.3,"heatindex_f":73.9,"dewpoint_c":1.8,"dewpoint_f":35.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.5,"gust_kph":2.4,"uv":6.0},{"time_epoch":1699237800,"time":"2023-11-06 08:00","temp_c":25.0,"temp_f":77.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":206,"wind_dir":"SSW","pressure_mb":1016.0,"pressure_in":30.01,"precip_mm":0.0,"precip_in":0.0,"humidity":22,"cloud":0,"feelslike_c":24.0,"feelslike_f":75.1,"windchill_c":25.0,"windchill_f":77.0,"heatindex_c":24.0,"heatindex_f":75.1,"dewpoint_c":1.6,"dewpoint_f":34.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.5,"gust_kph":2.4,"uv":7.0},{"time_epoch":1699241400,"time":"2023-11-06 09:00","temp_c":26.8,"temp_f":80.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.3,"wind_kph":2.2,"wind_degree":206,"wind_dir":"SSW","pressure_mb":1017.0,"pressure_in":30.02,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":0,"feelslike_c":25.1,"feelslike_f":77.1,"windchill_c":26.8,"windchill_f":80.3,"heatindex_c":25.1,"heatindex_f":77.1,"dewpoint_c":1.5,"dewpoint_f":34.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.5,"gust_kph":2.5,"uv":7.0},{"time_epoch":1699245000,"time":"2023-11-06 10:00","temp_c":28.6,"temp_f":83.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":203,"wind_dir":"SSW","pressure_mb":1016.0,"pressure_in":30.02,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":0,"feelslike_c":26.5,"feelslike_f":79.7,"windchill_c":28.6,"windchill_f":83.4,"heatindex_c":26.5,"heatindex_f":79.7,"dewpoint_c":1.2,"dewpoint_f":34.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.0,"gust_kph":1.7,"uv":7.0},{"time_epoch":1699248600,"time":"2023-11-06 11:00","temp_c":30.0,"temp_f":86.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":236,"wind_dir":"WSW","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":27.8,"feelslike_f":82.1,"windchill_c":30.0,"windchill_f":86.1,"heatindex_c":27.8,"heatindex_f":82.1,"dewpoint_c":1.0,"dewpoint_f":33.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.0,"gust_kph":1.7,"uv":8.0},{"time_epoch":1699252200,"time":"2023-11-06 12:00","temp_c":31.1,"temp_f":88.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":259,"wind_dir":"W","pressure_mb":1015.0,"pressure_in":29.96,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":0,"feelslike_c":28.9,"feelslike_f":84.0,"windchill_c":31.1,"windchill_f":88.0,"heatindex_c":28.9,"heatindex_f":84.0,"dewpoint_c":0.7,"dewpoint_f":33.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.3,"gust_kph":2.1,"uv":8.0},{"time_epoch":1699255800,"time":"2023-11-06 13:00","temp_c":31.7,"temp_f":89.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":293,"wind_dir":"WNW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":13,"cloud":0,"feelslike_c":29.5,"feelslike_f":85.0,"windchill_c":31.7,"windchill_f":89.1,"heatindex_c":29.5,"heatindex_f":85.0,"dewpoint_c":-0.5,"dewpoint_f":31.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.6,"gust_kph":4.1,"uv":8.0},{"time_epoch":1699259400,"time":"2023-11-06 14:00","temp_c":31.8,"temp_f":89.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":318,"wind_dir":"NW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":11,"cloud":0,"feelslike_c":29.5,"feelslike_f":85.2,"windchill_c":31.8,"windchill_f":89.2,"heatindex_c":29.5,"heatindex_f":85.2,"dewpoint_c":-1.8,"dewpoint_f":28.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.6,"gust_kph":5.8,"uv":8.0},{"time_epoch":1699263000,"time":"2023-11-06 15:00","temp_c":31.6,"temp_f":89.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":332,"wind_dir":"NNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":11,"cloud":0,"feelslike_c":29.4,"feelslike_f":84.9,"windchill_c":31.6,"windchill_f":89.0,"heatindex_c":29.4,"heatindex_f":84.9,"dewpoint_c":-2.3,"dewpoint_f":27.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.1,"gust_kph":6.6,"uv":8.0},{"time_epoch":1699266600,"time":"2023-11-06 16:00","temp_c":31.2,"temp_f":88.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":343,"wind_dir":"NNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":12,"cloud":0,"feelslike_c":29.0,"feelslike_f":84.1,"windchill_c":31.2,"windchill_f":88.1,"heatindex_c":29.0,"heatindex_f":84.1,"dewpoint_c":-2.0,"dewpoint_f":28.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.9,"gust_kph":6.3,"uv":8.0},{"time_epoch":1699270200,"time":"2023-11-06 17:00","temp_c":29.9,"temp_f":85.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":2,"wind_dir":"N","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":12,"cloud":0,"feelslike_c":27.7,"feelslike_f":81.9,"windchill_c":29.9,"windchill_f":85.8,"heatindex_c":27.7,"heatindex_f":81.9,"dewpoint_c":-2.0,"dewpoint_f":28.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.2,"gust_kph":6.7,"uv":7.0},{"time_epoch":1699273800,"time":"2023-11-06 18:00","temp_c":29.1,"temp_f":84.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.0,"wind_kph":3.2,"wind_degree":14,"wind_dir":"NNE","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":13,"cloud":0,"feelslike_c":27.0,"feelslike_f":80.6,"windchill_c":29.1,"windchill_f":84.5,"heatindex_c":27.0,"heatindex_f":80.6,"dewpoint_c":-1.7,"dewpoint_f":29.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.4,"gust_kph":5.4,"uv":1.0},{"time_epoch":1699277400,"time":"2023-11-06 19:00","temp_c":28.5,"temp_f":83.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":19,"wind_dir":"NNE","pressure_mb":1013.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":0,"feelslike_c":26.4,"feelslike_f":79.6,"windchill_c":28.5,"windchill_f":83.2,"heatindex_c":26.4,"heatindex_f":79.6,"dewpoint_c":-1.4,"dewpoint_f":29.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.3,"gust_kph":6.9,"uv":1.0},{"time_epoch":1699281000,"time":"2023-11-06 20:00","temp_c":27.8,"temp_f":82.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":34,"wind_dir":"NE","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":25.8,"feelslike_f":78.5,"windchill_c":27.8,"windchill_f":82.0,"heatindex_c":25.8,"heatindex_f":78.5,"dewpoint_c":-1.1,"dewpoint_f":30.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.0,"gust_kph":6.4,"uv":1.0},{"time_epoch":1699284600,"time":"2023-11-06 21:00","temp_c":27.1,"temp_f":80.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":51,"wind_dir":"NE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":0,"feelslike_c":25.3,"feelslike_f":77.5,"windchill_c":27.1,"windchill_f":80.8,"heatindex_c":25.3,"heatindex_f":77.5,"dewpoint_c":-0.9,"dewpoint_f":30.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.5,"gust_kph":7.2,"uv":1.0},{"time_epoch":1699288200,"time":"2023-11-06 22:00","temp_c":26.4,"temp_f":79.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":72,"wind_dir":"ENE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":0,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":26.4,"windchill_f":79.5,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":-0.8,"dewpoint_f":30.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.8,"gust_kph":9.3,"uv":1.0},{"time_epoch":1699291800,"time":"2023-11-06 23:00","temp_c":25.8,"temp_f":78.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":81,"wind_dir":"E","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":0,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":25.8,"windchill_f":78.4,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":-0.6,"dewpoint_f":31.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.7,"gust_kph":9.2,"uv":1.0}]},{"date":"2023-11-07","date_epoch":1699315200,"day":{"maxtemp_c":32.1,"maxtemp_f":89.9,"mintemp_c":23.1,"mintemp_f":73.5,"avgtemp_c":27.5,"avgtemp_f":81.5,"maxwind_mph":4.9,"maxwind_kph":7.9,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":17.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"06:37 AM","sunset":"05:32 PM","moonrise":"12:58 AM","moonset":"02:23 PM","moon_phase":"Waning Crescent","moon_illumination":35,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1699295400,"time":"2023-11-07 00:00","temp_c":25.2,"temp_f":77.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":92,"wind_dir":"E","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":0,"feelslike_c":23.9,"feelslike_f":75.0,"windchill_c":25.2,"windchill_f":77.3,"heatindex_c":23.9,"heatindex_f":75.0,"dewpoint_c":-0.4,"dewpoint_f":31.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.5,"gust_kph":7.2,"uv":1.0},{"time_epoch":1699299000,"time":"2023-11-07 01:00","temp_c":24.7,"temp_f":76.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.0,"wind_kph":3.2,"wind_degree":99,"wind_dir":"E","pressure_mb":1013.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":0,"feelslike_c":23.6,"feelslike_f":74.4,"windchill_c":24.7,"windchill_f":76.4,"heatindex_c":23.6,"heatindex_f":74.4,"dewpoint_c":-0.3,"dewpoint_f":31.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.7,"gust_kph":5.9,"uv":1.0},{"time_epoch":1699302600,"time":"2023-11-07 02:00","temp_c":24.2,"temp_f":75.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.3,"wind_kph":2.2,"wind_degree":100,"wind_dir":"E","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":0,"feelslike_c":23.3,"feelslike_f":73.9,"windchill_c":24.2,"windchill_f":75.5,"heatindex_c":23.3,"heatindex_f":73.9,"dewpoint_c":-0.3,"dewpoint_f":31.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.4,"gust_kph":3.9,"uv":1.0},{"time_epoch":1699306200,"time":"2023-11-07 03:00","temp_c":23.8,"temp_f":74.9,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":108,"wind_dir":"ESE","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":0,"feelslike_c":23.1,"feelslike_f":73.5,"windchill_c":23.8,"windchill_f":74.9,"heatindex_c":23.1,"heatindex_f":73.5,"dewpoint_c":-0.4,"dewpoint_f":31.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.0,"gust_kph":3.2,"uv":1.0},{"time_epoch":1699309800,"time":"2023-11-07 04:00","temp_c":23.5,"temp_f":74.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.7,"wind_kph":1.1,"wind_degree":97,"wind_dir":"E","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":0,"feelslike_c":23.0,"feelslike_f":73.3,"windchill_c":23.6,"windchill_f":74.4,"heatindex_c":23.0,"heatindex_f":73.3,"dewpoint_c":-0.3,"dewpoint_f":31.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.2,"gust_kph":1.9,"uv":1.0},{"time_epoch":1699313400,"time":"2023-11-07 05:00","temp_c":23.3,"temp_f":73.9,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":111,"wind_dir":"ESE","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":0,"feelslike_c":22.8,"feelslike_f":73.1,"windchill_c":23.3,"windchill_f":73.9,"heatindex_c":22.8,"heatindex_f":73.1,"dewpoint_c":-0.4,"dewpoint_f":31.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.6,"gust_kph":2.6,"uv":1.0},{"time_epoch":1699317000,"time":"2023-11-07 06:00","temp_c":23.1,"temp_f":73.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.6,"wind_kph":2.5,"wind_degree":152,"wind_dir":"SSE","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":0,"feelslike_c":22.7,"feelslike_f":72.9,"windchill_c":23.1,"windchill_f":73.5,"heatindex_c":22.7,"heatindex_f":72.9,"dewpoint_c":-0.5,"dewpoint_f":31.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.8,"gust_kph":4.6,"uv":1.0},{"time_epoch":1699320600,"time":"2023-11-07 07:00","temp_c":23.5,"temp_f":74.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":172,"wind_dir":"S","pressure_mb":1015.0,"pressure_in":29.96,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":3,"feelslike_c":23.0,"feelslike_f":73.3,"windchill_c":23.5,"windchill_f":74.4,"heatindex_c":23.0,"heatindex_f":73.3,"dewpoint_c":-0.2,"dewpoint_f":31.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.0,"gust_kph":4.8,"uv":6.0},{"time_epoch":1699324200,"time":"2023-11-07 08:00","temp_c":25.0,"temp_f":77.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.6,"wind_kph":2.5,"wind_degree":194,"wind_dir":"SSW","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":3,"feelslike_c":23.8,"feelslike_f":74.8,"windchill_c":25.0,"windchill_f":77.0,"heatindex_c":23.8,"heatindex_f":74.8,"dewpoint_c":-0.4,"dewpoint_f":31.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.1,"gust_kph":3.4,"uv":7.0},{"time_epoch":1699327800,"time":"2023-11-07 09:00","temp_c":26.8,"temp_f":80.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":207,"wind_dir":"SSW","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":4,"feelslike_c":25.1,"feelslike_f":77.1,"windchill_c":26.8,"windchill_f":80.3,"heatindex_c":25.1,"heatindex_f":77.1,"dewpoint_c":-0.5,"dewpoint_f":31.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.1,"gust_kph":3.3,"uv":7.0},{"time_epoch":1699331400,"time":"2023-11-07 10:00","temp_c":28.5,"temp_f":83.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":225,"wind_dir":"SW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":4,"feelslike_c":26.4,"feelslike_f":79.6,"windchill_c":28.5,"windchill_f":83.3,"heatindex_c":26.4,"heatindex_f":79.6,"dewpoint_c":-0.7,"dewpoint_f":30.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.1,"gust_kph":3.3,"uv":7.0},{"time_epoch":1699335000,"time":"2023-11-07 11:00","temp_c":30.0,"temp_f":86.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":254,"wind_dir":"WSW","pressure_mb":1014.0,"pressure_in":29.96,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":4,"feelslike_c":27.8,"feelslike_f":82.0,"windchill_c":30.0,"windchill_f":86.0,"heatindex_c":27.8,"heatindex_f":82.0,"dewpoint_c":-0.7,"dewpoint_f":30.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.1,"gust_kph":5.0,"uv":7.0},{"time_epoch":1699338600,"time":"2023-11-07 12:00","temp_c":31.0,"temp_f":87.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":272,"wind_dir":"W","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":13,"cloud":4,"feelslike_c":28.8,"feelslike_f":83.8,"windchill_c":31.0,"windchill_f":87.8,"heatindex_c":28.8,"heatindex_f":83.8,"dewpoint_c":-0.4,"dewpoint_f":31.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.9,"gust_kph":6.2,"uv":8.0},{"time_epoch":1699342200,"time":"2023-11-07 13:00","temp_c":31.7,"temp_f":89.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.0,"wind_kph":6.5,"wind_degree":285,"wind_dir":"WNW","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":13,"cloud":4,"feelslike_c":29.5,"feelslike_f":85.1,"windchill_c":31.7,"windchill_f":89.1,"heatindex_c":29.5,"heatindex_f":85.1,"dewpoint_c":-0.0,"dewpoint_f":32.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.6,"gust_kph":7.5,"uv":8.0},{"time_epoch":1699345800,"time":"2023-11-07 14:00","temp_c":32.1,"temp_f":89.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":306,"wind_dir":"NW","pressure_mb":1012.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":13,"cloud":4,"feelslike_c":29.9,"feelslike_f":85.8,"windchill_c":32.1,"windchill_f":89.8,"heatindex_c":29.9,"heatindex_f":85.8,"dewpoint_c":0.6,"dewpoint_f":33.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.7,"uv":8.0},{"time_epoch":1699349400,"time":"2023-11-07 15:00","temp_c":32.1,"temp_f":89.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":322,"wind_dir":"NW","pressure_mb":1011.0,"pressure_in":29.85,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":4,"feelslike_c":29.9,"feelslike_f":85.9,"windchill_c":32.1,"windchill_f":89.9,"heatindex_c":29.9,"heatindex_f":85.9,"dewpoint_c":1.1,"dewpoint_f":33.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.7,"gust_kph":9.1,"uv":8.0},{"time_epoch":1699353000,"time":"2023-11-07 16:00","temp_c":31.8,"temp_f":89.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":327,"wind_dir":"NNW","pressure_mb":1011.0,"pressure_in":29.84,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":4,"feelslike_c":29.6,"feelslike_f":85.2,"windchill_c":31.8,"windchill_f":89.2,"heatindex_c":29.6,"heatindex_f":85.2,"dewpoint_c":1.8,"dewpoint_f":35.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.2,"gust_kph":10.0,"uv":8.0},{"time_epoch":1699356600,"time":"2023-11-07 17:00","temp_c":30.6,"temp_f":87.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":338,"wind_dir":"NNW","pressure_mb":1011.0,"pressure_in":29.84,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":5,"feelslike_c":28.3,"feelslike_f":83.0,"windchill_c":30.6,"windchill_f":87.0,"heatindex_c":28.3,"heatindex_f":83.0,"dewpoint_c":1.9,"dewpoint_f":35.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.9,"gust_kph":9.5,"uv":8.0},{"time_epoch":1699360200,"time":"2023-11-07 18:00","temp_c":29.7,"temp_f":85.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":357,"wind_dir":"N","pressure_mb":1011.0,"pressure_in":29.86,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":5,"feelslike_c":27.6,"feelslike_f":81.6,"windchill_c":29.7,"windchill_f":85.5,"heatindex_c":27.6,"heatindex_f":81.6,"dewpoint_c":1.9,"dewpoint_f":35.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.9,"gust_kph":7.9,"uv":1.0},{"time_epoch":1699363800,"time":"2023-11-07 19:00","temp_c":29.1,"temp_f":84.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":17,"wind_dir":"NNE","pressure_mb":1012.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":5,"feelslike_c":26.9,"feelslike_f":80.5,"windchill_c":29.1,"windchill_f":84.3,"heatindex_c":26.9,"heatindex_f":80.5,"dewpoint_c":1.8,"dewpoint_f":35.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.9,"gust_kph":6.3,"uv":1.0},{"time_epoch":1699367400,"time":"2023-11-07 20:00","temp_c":28.4,"temp_f":83.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.7,"wind_kph":1.1,"wind_degree":6,"wind_dir":"N","pressure_mb":1012.0,"pressure_in":29.88,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":5,"feelslike_c":26.4,"feelslike_f":79.4,"windchill_c":28.4,"windchill_f":83.1,"heatindex_c":26.4,"heatindex_f":79.4,"dewpoint_c":2.0,"dewpoint_f":35.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.2,"gust_kph":1.9,"uv":1.0},{"time_epoch":1699371000,"time":"2023-11-07 21:00","temp_c":27.8,"temp_f":82.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.7,"wind_kph":1.1,"wind_degree":262,"wind_dir":"W","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":5,"feelslike_c":25.8,"feelslike_f":78.5,"windchill_c":27.8,"windchill_f":82.0,"heatindex_c":25.8,"heatindex_f":78.5,"dewpoint_c":2.0,"dewpoint_f":35.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.2,"gust_kph":1.9,"uv":1.0},{"time_epoch":1699374600,"time":"2023-11-07 22:00","temp_c":27.2,"temp_f":80.9,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":244,"wind_dir":"WSW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":4,"feelslike_c":25.4,"feelslike_f":77.6,"windchill_c":27.2,"windchill_f":80.9,"heatindex_c":25.4,"heatindex_f":77.6,"dewpoint_c":2.1,"dewpoint_f":35.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.7,"gust_kph":2.7,"uv":1.0},{"time_epoch":1699378200,"time":"2023-11-07 23:00","temp_c":26.6,"temp_f":79.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.7,"wind_kph":1.1,"wind_degree":282,"wind_dir":"WNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":4,"feelslike_c":24.9,"feelslike_f":76.9,"windchill_c":26.6,"windchill_f":79.8,"heatindex_c":24.9,"heatindex_f":76.9,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.3,"gust_kph":2.0,"uv":1.0}]},{"date":"2023-11-08","date_epoch":1699401600,"day":{"maxtemp_c":33.1,"maxtemp_f":91.6,"mintemp_c":24.0,"mintemp_f":75.2,"avgtemp_c":28.2,"avgtemp_f":82.8,"maxwind_mph":8.3,"maxwind_kph":13.3,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":19.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"06:38 AM","sunset":"05:32 PM","moonrise":"01:52 AM","moonset":"02:51 PM","moon_phase":"Waning Crescent","moon_illumination":26,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1699381800,"time":"2023-11-08 00:00","temp_c":25.9,"temp_f":78.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":322,"wind_dir":"NW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":22,"cloud":4,"feelslike_c":24.6,"feelslike_f":76.2,"windchill_c":25.9,"windchill_f":78.7,"heatindex_c":24.6,"heatindex_f":76.2,"dewpoint_c":2.4,"dewpoint_f":36.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.3,"gust_kph":5.3,"uv":1.0},{"time_epoch":1699385400,"time":"2023-11-08 01:00","temp_c":25.5,"temp_f":77.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":356,"wind_dir":"N","pressure_mb":1012.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":22,"cloud":4,"feelslike_c":24.3,"feelslike_f":75.8,"windchill_c":25.5,"windchill_f":77.8,"heatindex_c":24.3,"heatindex_f":75.8,"dewpoint_c":2.5,"dewpoint_f":36.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.2,"gust_kph":5.2,"uv":1.0},{"time_epoch":1699389000,"time":"2023-11-08 02:00","temp_c":25.1,"temp_f":77.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":335,"wind_dir":"NNW","pressure_mb":1011.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":5,"feelslike_c":24.1,"feelslike_f":75.5,"windchill_c":25.1,"windchill_f":77.1,"heatindex_c":24.1,"heatindex_f":75.5,"dewpoint_c":2.6,"dewpoint_f":36.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.2,"gust_kph":5.1,"uv":1.0},{"time_epoch":1699392600,"time":"2023-11-08 03:00","temp_c":24.7,"temp_f":76.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.6,"wind_kph":2.5,"wind_degree":281,"wind_dir":"WNW","pressure_mb":1011.0,"pressure_in":29.86,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":5,"feelslike_c":24.0,"feelslike_f":75.1,"windchill_c":24.7,"windchill_f":76.5,"heatindex_c":24.0,"heatindex_f":75.1,"dewpoint_c":2.6,"dewpoint_f":36.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.8,"gust_kph":4.5,"uv":1.0},{"time_epoch":1699396200,"time":"2023-11-08 04:00","temp_c":24.5,"temp_f":76.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":283,"wind_dir":"WNW","pressure_mb":1011.0,"pressure_in":29.86,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":5,"feelslike_c":23.9,"feelslike_f":74.9,"windchill_c":24.5,"windchill_f":76.0,"heatindex_c":23.9,"heatindex_f":74.9,"dewpoint_c":2.6,"dewpoint_f":36.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.8,"gust_kph":7.7,"uv":1.0},{"time_epoch":1699399800,"time":"2023-11-08 05:00","temp_c":24.2,"temp_f":75.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":304,"wind_dir":"NW","pressure_mb":1012.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":5,"feelslike_c":23.8,"feelslike_f":74.8,"windchill_c":24.2,"windchill_f":75.6,"heatindex_c":23.8,"heatindex_f":74.8,"dewpoint_c":2.7,"dewpoint_f":36.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.0,"gust_kph":9.6,"uv":1.0},{"time_epoch":1699403400,"time":"2023-11-08 06:00","temp_c":24.0,"temp_f":75.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":302,"wind_dir":"WNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":5,"feelslike_c":23.7,"feelslike_f":74.7,"windchill_c":24.0,"windchill_f":75.2,"heatindex_c":23.7,"heatindex_f":74.7,"dewpoint_c":2.8,"dewpoint_f":37.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.6,"gust_kph":9.0,"uv":1.0},{"time_epoch":1699407000,"time":"2023-11-08 07:00","temp_c":24.4,"temp_f":75.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":294,"wind_dir":"WNW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":5,"feelslike_c":23.9,"feelslike_f":75.0,"windchill_c":24.4,"windchill_f":75.8,"heatindex_c":23.9,"heatindex_f":75.0,"dewpoint_c":3.1,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.8,"gust_kph":7.7,"uv":6.0},{"time_epoch":1699410600,"time":"2023-11-08 08:00","temp_c":25.8,"temp_f":78.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":305,"wind_dir":"NW","pressure_mb":1013.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":4,"feelslike_c":24.6,"feelslike_f":76.3,"windchill_c":25.8,"windchill_f":78.5,"heatindex_c":24.6,"heatindex_f":76.3,"dewpoint_c":3.1,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.5,"gust_kph":7.2,"uv":7.0},{"time_epoch":1699414200,"time":"2023-11-08 09:00","temp_c":27.5,"temp_f":81.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.0,"wind_kph":6.5,"wind_degree":317,"wind_dir":"NW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":4,"feelslike_c":25.7,"feelslike_f":78.2,"windchill_c":27.5,"windchill_f":81.5,"heatindex_c":25.7,"heatindex_f":78.2,"dewpoint_c":3.1,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.7,"gust_kph":7.6,"uv":7.0},{"time_epoch":1699417800,"time":"2023-11-08 10:00","temp_c":29.1,"temp_f":84.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":310,"wind_dir":"NW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":4,"feelslike_c":27.0,"feelslike_f":80.6,"windchill_c":29.1,"windchill_f":84.4,"heatindex_c":27.0,"heatindex_f":80.6,"dewpoint_c":3.0,"dewpoint_f":37.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.7,"uv":7.0},{"time_epoch":1699421400,"time":"2023-11-08 11:00","temp_c":30.5,"temp_f":87.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":306,"wind_dir":"NW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":4,"feelslike_c":28.3,"feelslike_f":83.0,"windchill_c":30.6,"windchill_f":87.0,"heatindex_c":28.3,"heatindex_f":83.0,"dewpoint_c":2.9,"dewpoint_f":37.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.2,"gust_kph":9.9,"uv":8.0},{"time_epoch":1699425000,"time":"2023-11-08 12:00","temp_c":31.7,"temp_f":89.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.0,"wind_kph":9.7,"wind_degree":304,"wind_dir":"NW","pressure_mb":1012.0,"pressure_in":29.88,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":4,"feelslike_c":29.5,"feelslike_f":85.1,"windchill_c":31.7,"windchill_f":89.1,"heatindex_c":29.5,"heatindex_f":85.1,"dewpoint_c":2.7,"dewpoint_f":36.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.0,"gust_kph":11.2,"uv":8.0},{"time_epoch":1699428600,"time":"2023-11-08 13:00","temp_c":32.6,"temp_f":90.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.7,"wind_kph":10.8,"wind_degree":308,"wind_dir":"NW","pressure_mb":1011.0,"pressure_in":29.85,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":4,"feelslike_c":30.4,"feelslike_f":86.7,"windchill_c":32.6,"windchill_f":90.6,"heatindex_c":30.4,"heatindex_f":86.7,"dewpoint_c":2.5,"dewpoint_f":36.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.7,"gust_kph":12.4,"uv":8.0},{"time_epoch":1699432200,"time":"2023-11-08 14:00","temp_c":33.1,"temp_f":91.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":7.4,"wind_kph":11.9,"wind_degree":314,"wind_dir":"NW","pressure_mb":1010.0,"pressure_in":29.82,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":4,"feelslike_c":30.9,"feelslike_f":87.7,"windchill_c":33.1,"windchill_f":91.5,"heatindex_c":30.9,"heatindex_f":87.7,"dewpoint_c":2.4,"dewpoint_f":36.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.5,"gust_kph":13.7,"uv":8.0},{"time_epoch":1699435800,"time":"2023-11-08 15:00","temp_c":33.1,"temp_f":91.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":8.3,"wind_kph":13.3,"wind_degree":314,"wind_dir":"NW","pressure_mb":1009.0,"pressure_in":29.8,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":5,"feelslike_c":31.0,"feelslike_f":87.7,"windchill_c":33.1,"windchill_f":91.6,"heatindex_c":31.0,"heatindex_f":87.7,"dewpoint_c":2.1,"dewpoint_f":35.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.5,"gust_kph":15.3,"uv":8.0},{"time_epoch":1699439400,"time":"2023-11-08 16:00","temp_c":32.6,"temp_f":90.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":7.4,"wind_kph":11.9,"wind_degree":311,"wind_dir":"NW","pressure_mb":1009.0,"pressure_in":29.8,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":5,"feelslike_c":30.4,"feelslike_f":86.8,"windchill_c":32.6,"windchill_f":90.7,"heatindex_c":30.4,"heatindex_f":86.8,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.5,"gust_kph":15.3,"uv":8.0},{"time_epoch":1699443000,"time":"2023-11-08 17:00","temp_c":31.2,"temp_f":88.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":305,"wind_dir":"NW","pressure_mb":1009.0,"pressure_in":29.8,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":5,"feelslike_c":29.0,"feelslike_f":84.2,"windchill_c":31.2,"windchill_f":88.2,"heatindex_c":29.0,"heatindex_f":84.2,"dewpoint_c":2.1,"dewpoint_f":35.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.9,"gust_kph":12.7,"uv":8.0},{"time_epoch":1699446600,"time":"2023-11-08 18:00","temp_c":30.2,"temp_f":86.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":293,"wind_dir":"WNW","pressure_mb":1010.0,"pressure_in":29.82,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":5,"feelslike_c":28.0,"feelslike_f":82.4,"windchill_c":30.3,"windchill_f":86.5,"heatindex_c":28.0,"heatindex_f":82.4,"dewpoint_c":2.1,"dewpoint_f":35.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.7,"gust_kph":10.8,"uv":1.0},{"time_epoch":1699450200,"time":"2023-11-08 19:00","temp_c":29.4,"temp_f":85.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":288,"wind_dir":"WNW","pressure_mb":1011.0,"pressure_in":29.85,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":5,"feelslike_c":27.3,"feelslike_f":81.1,"windchill_c":29.4,"windchill_f":85.0,"heatindex_c":27.3,"heatindex_f":81.1,"dewpoint_c":2.1,"dewpoint_f":35.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.7,"gust_kph":12.4,"uv":1.0},{"time_epoch":1699453800,"time":"2023-11-08 20:00","temp_c":28.8,"temp_f":83.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":299,"wind_dir":"WNW","pressure_mb":1011.0,"pressure_in":29.86,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":5,"feelslike_c":26.7,"feelslike_f":80.0,"windchill_c":28.8,"windchill_f":83.8,"heatindex_c":26.7,"heatindex_f":80.0,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.5,"gust_kph":13.7,"uv":1.0},{"time_epoch":1699457400,"time":"2023-11-08 21:00","temp_c":28.2,"temp_f":82.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":311,"wind_dir":"NW","pressure_mb":1012.0,"pressure_in":29.88,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":5,"feelslike_c":26.2,"feelslike_f":79.1,"windchill_c":28.2,"windchill_f":82.8,"heatindex_c":26.2,"heatindex_f":79.1,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.5,"gust_kph":13.8,"uv":1.0},{"time_epoch":1699461000,"time":"2023-11-08 22:00","temp_c":27.7,"temp_f":81.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":314,"wind_dir":"NW","pressure_mb":1012.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":5,"feelslike_c":25.7,"feelslike_f":78.3,"windchill_c":27.7,"windchill_f":81.8,"heatindex_c":25.7,"heatindex_f":78.3,"dewpoint_c":2.1,"dewpoint_f":35.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.9,"gust_kph":12.7,"uv":1.0},{"time_epoch":1699464600,"time":"2023-11-08 23:00","temp_c":27.1,"temp_f":80.9,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.0,"wind_kph":6.5,"wind_degree":317,"wind_dir":"NW","pressure_mb":1011.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":5,"feelslike_c":25.3,"feelslike_f":77.6,"windchill_c":27.1,"windchill_f":80.9,"heatindex_c":25.3,"heatindex_f":77.6,"dewpoint_c":2.2,"dewpoint_f":35.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.6,"gust_kph":12.2,"uv":1.0}]},{"date":"2023-11-09","date_epoch":1699488000,"day":{"maxtemp_c":33.2,"maxtemp_f":91.8,"mintemp_c":24.6,"mintemp_f":76.2,"avgtemp_c":28.7,"avgtemp_f":83.6,"maxwind_mph":6.0,"maxwind_kph":9.7,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":19.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"06:39 AM","sunset":"05:31 PM","moonrise":"02:45 AM","moonset":"03:18 PM","moon_phase":"Waning Crescent","moon_illumination":18,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1699468200,"time":"2023-11-09 00:00","temp_c":26.7,"temp_f":80.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":329,"wind_dir":"NNW","pressure_mb":1011.0,"pressure_in":29.86,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":5,"feelslike_c":25.1,"feelslike_f":77.1,"windchill_c":26.7,"windchill_f":80.1,"heatindex_c":25.1,"heatindex_f":77.1,"dewpoint_c":2.4,"dewpoint_f":36.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.1,"gust_kph":11.4,"uv":1.0},{"time_epoch":1699471800,"time":"2023-11-09 01:00","temp_c":26.2,"temp_f":79.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":353,"wind_dir":"N","pressure_mb":1011.0,"pressure_in":29.85,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":6,"feelslike_c":24.7,"feelslike_f":76.5,"windchill_c":26.2,"windchill_f":79.1,"heatindex_c":24.7,"heatindex_f":76.5,"dewpoint_c":2.5,"dewpoint_f":36.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.6,"gust_kph":10.7,"uv":1.0},{"time_epoch":1699475400,"time":"2023-11-09 02:00","temp_c":25.7,"temp_f":78.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":8,"wind_dir":"N","pressure_mb":1011.0,"pressure_in":29.85,"precip_mm":0.0,"precip_in":0.0,"humidity":22,"cloud":7,"feelslike_c":24.5,"feelslike_f":76.1,"windchill_c":25.7,"windchill_f":78.3,"heatindex_c":24.5,"heatindex_f":76.1,"dewpoint_c":2.7,"dewpoint_f":36.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.5,"gust_kph":7.2,"uv":1.0},{"time_epoch":1699479000,"time":"2023-11-09 03:00","temp_c":25.4,"temp_f":77.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":321,"wind_dir":"NW","pressure_mb":1011.0,"pressure_in":29.85,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":8,"feelslike_c":24.4,"feelslike_f":75.8,"windchill_c":25.4,"windchill_f":77.7,"heatindex_c":24.4,"heatindex_f":75.8,"dewpoint_c":2.8,"dewpoint_f":37.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.0,"gust_kph":3.2,"uv":1.0},{"time_epoch":1699482600,"time":"2023-11-09 04:00","temp_c":25.0,"temp_f":77.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.2,"wind_kph":0.4,"wind_degree":178,"wind_dir":"S","pressure_mb":1011.0,"pressure_in":29.85,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":8,"feelslike_c":24.2,"feelslike_f":75.5,"windchill_c":25.0,"windchill_f":77.1,"heatindex_c":24.2,"heatindex_f":75.5,"dewpoint_c":2.9,"dewpoint_f":37.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":0.4,"gust_kph":0.6,"uv":1.0},{"time_epoch":1699486200,"time":"2023-11-09 05:00","temp_c":24.8,"temp_f":76.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":172,"wind_dir":"S","pressure_mb":1011.0,"pressure_in":29.86,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":7,"feelslike_c":24.1,"feelslike_f":75.3,"windchill_c":24.8,"windchill_f":76.6,"heatindex_c":24.1,"heatindex_f":75.3,"dewpoint_c":2.9,"dewpoint_f":37.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.6,"gust_kph":2.6,"uv":1.0},{"time_epoch":1699489800,"time":"2023-11-09 06:00","temp_c":24.6,"temp_f":76.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":185,"wind_dir":"S","pressure_mb":1012.0,"pressure_in":29.88,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":7,"feelslike_c":24.0,"feelslike_f":75.1,"windchill_c":24.6,"windchill_f":76.2,"heatindex_c":24.0,"heatindex_f":75.1,"dewpoint_c":3.0,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.1,"gust_kph":3.3,"uv":1.0},{"time_epoch":1699493400,"time":"2023-11-09 07:00","temp_c":24.9,"temp_f":76.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":219,"wind_dir":"SW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":8,"feelslike_c":24.2,"feelslike_f":75.5,"windchill_c":24.9,"windchill_f":76.8,"heatindex_c":24.2,"heatindex_f":75.5,"dewpoint_c":3.2,"dewpoint_f":37.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.5,"gust_kph":2.4,"uv":6.0},{"time_epoch":1699497000,"time":"2023-11-09 08:00","temp_c":26.4,"temp_f":79.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.3,"wind_kph":2.2,"wind_degree":255,"wind_dir":"WSW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":22,"cloud":8,"feelslike_c":25.0,"feelslike_f":77.0,"windchill_c":26.4,"windchill_f":79.6,"heatindex_c":25.0,"heatindex_f":77.0,"dewpoint_c":3.1,"dewpoint_f":37.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.8,"gust_kph":3.0,"uv":7.0},{"time_epoch":1699500600,"time":"2023-11-09 09:00","temp_c":28.1,"temp_f":82.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":259,"wind_dir":"W","pressure_mb":1013.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":8,"feelslike_c":26.1,"feelslike_f":79.0,"windchill_c":28.1,"windchill_f":82.6,"heatindex_c":26.1,"heatindex_f":79.0,"dewpoint_c":3.0,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.5,"gust_kph":7.3,"uv":7.0},{"time_epoch":1699504200,"time":"2023-11-09 10:00","temp_c":29.8,"temp_f":85.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":269,"wind_dir":"W","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":8,"feelslike_c":27.6,"feelslike_f":81.7,"windchill_c":29.8,"windchill_f":85.7,"heatindex_c":27.6,"heatindex_f":81.7,"dewpoint_c":2.8,"dewpoint_f":37.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.4,"gust_kph":7.1,"uv":7.0},{"time_epoch":1699507800,"time":"2023-11-09 11:00","temp_c":31.3,"temp_f":88.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":262,"wind_dir":"W","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":12,"feelslike_c":29.0,"feelslike_f":84.3,"windchill_c":31.3,"windchill_f":88.3,"heatindex_c":29.0,"heatindex_f":84.3,"dewpoint_c":2.8,"dewpoint_f":37.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.7,"gust_kph":9.1,"uv":8.0},{"time_epoch":1699511400,"time":"2023-11-09 12:00","temp_c":32.3,"temp_f":90.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":6.0,"wind_kph":9.7,"wind_degree":267,"wind_dir":"W","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":11,"feelslike_c":30.1,"feelslike_f":86.1,"windchill_c":32.3,"windchill_f":90.1,"heatindex_c":30.1,"heatindex_f":86.1,"dewpoint_c":2.9,"dewpoint_f":37.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.0,"gust_kph":11.2,"uv":8.0},{"time_epoch":1699515000,"time":"2023-11-09 13:00","temp_c":32.9,"temp_f":91.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":269,"wind_dir":"W","pressure_mb":1011.0,"pressure_in":29.85,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":10,"feelslike_c":30.7,"feelslike_f":87.3,"windchill_c":32.9,"windchill_f":91.2,"heatindex_c":30.7,"heatindex_f":87.3,"dewpoint_c":3.0,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.2,"gust_kph":9.9,"uv":8.0},{"time_epoch":1699518600,"time":"2023-11-09 14:00","temp_c":33.2,"temp_f":91.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":275,"wind_dir":"W","pressure_mb":1010.0,"pressure_in":29.84,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":9,"feelslike_c":31.1,"feelslike_f":88.0,"windchill_c":33.2,"windchill_f":91.8,"heatindex_c":31.1,"heatindex_f":88.0,"dewpoint_c":3.0,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.7,"gust_kph":9.1,"uv":8.0},{"time_epoch":1699522200,"time":"2023-11-09 15:00","temp_c":33.2,"temp_f":91.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.9,"wind_kph":7.9,"wind_degree":284,"wind_dir":"WNW","pressure_mb":1010.0,"pressure_in":29.83,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":8,"feelslike_c":31.1,"feelslike_f":87.9,"windchill_c":33.2,"windchill_f":91.8,"heatindex_c":31.1,"heatindex_f":87.9,"dewpoint_c":3.1,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.7,"gust_kph":9.1,"uv":8.0},{"time_epoch":1699525800,"time":"2023-11-09 16:00","temp_c":32.8,"temp_f":91.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.5,"wind_kph":7.2,"wind_degree":294,"wind_dir":"WNW","pressure_mb":1010.0,"pressure_in":29.83,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":7,"feelslike_c":30.6,"feelslike_f":87.1,"windchill_c":32.8,"windchill_f":91.0,"heatindex_c":30.6,"heatindex_f":87.1,"dewpoint_c":3.3,"dewpoint_f":38.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.8,"gust_kph":9.3,"uv":8.0},{"time_epoch":1699529400,"time":"2023-11-09 17:00","temp_c":31.4,"temp_f":88.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":305,"wind_dir":"NW","pressure_mb":1010.0,"pressure_in":29.83,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":6,"feelslike_c":29.1,"feelslike_f":84.4,"windchill_c":31.4,"windchill_f":88.4,"heatindex_c":29.1,"heatindex_f":84.4,"dewpoint_c":3.2,"dewpoint_f":37.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.1,"gust_kph":8.2,"uv":8.0},{"time_epoch":1699533000,"time":"2023-11-09 18:00","temp_c":30.6,"temp_f":87.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.0,"wind_kph":3.2,"wind_degree":317,"wind_dir":"NW","pressure_mb":1011.0,"pressure_in":29.84,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":17,"feelslike_c":28.3,"feelslike_f":83.0,"windchill_c":30.6,"windchill_f":87.0,"heatindex_c":28.3,"heatindex_f":83.0,"dewpoint_c":3.1,"dewpoint_f":37.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.5,"gust_kph":5.7,"uv":1.0},{"time_epoch":1699536600,"time":"2023-11-09 19:00","temp_c":30.1,"temp_f":86.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":263,"wind_dir":"W","pressure_mb":1011.0,"pressure_in":29.86,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":10,"feelslike_c":27.9,"feelslike_f":82.2,"windchill_c":30.1,"windchill_f":86.2,"heatindex_c":27.9,"heatindex_f":82.2,"dewpoint_c":3.1,"dewpoint_f":37.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.0,"gust_kph":3.2,"uv":1.0},{"time_epoch":1699540200,"time":"2023-11-09 20:00","temp_c":29.3,"temp_f":84.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":249,"wind_dir":"WSW","pressure_mb":1012.0,"pressure_in":29.88,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":7,"feelslike_c":27.2,"feelslike_f":80.9,"windchill_c":29.4,"windchill_f":84.8,"heatindex_c":27.2,"heatindex_f":80.9,"dewpoint_c":3.2,"dewpoint_f":37.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.6,"gust_kph":7.3,"uv":1.0},{"time_epoch":1699543800,"time":"2023-11-09 21:00","temp_c":28.5,"temp_f":83.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":293,"wind_dir":"WNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":6,"feelslike_c":26.4,"feelslike_f":79.6,"windchill_c":28.5,"windchill_f":83.3,"heatindex_c":26.4,"heatindex_f":79.6,"dewpoint_c":3.2,"dewpoint_f":37.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.0,"gust_kph":8.0,"uv":1.0},{"time_epoch":1699547400,"time":"2023-11-09 22:00","temp_c":27.8,"temp_f":82.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":332,"wind_dir":"NNW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":5,"feelslike_c":25.9,"feelslike_f":78.6,"windchill_c":27.8,"windchill_f":82.1,"heatindex_c":25.9,"heatindex_f":78.6,"dewpoint_c":3.2,"dewpoint_f":37.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.3,"gust_kph":8.5,"uv":1.0},{"time_epoch":1699551000,"time":"2023-11-09 23:00","temp_c":27.4,"temp_f":81.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":355,"wind_dir":"N","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":6,"feelslike_c":25.6,"feelslike_f":78.0,"windchill_c":27.4,"windchill_f":81.3,"heatindex_c":25.6,"heatindex_f":78.0,"dewpoint_c":3.0,"dewpoint_f":37.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.0,"gust_kph":6.4,"uv":1.0}]},{"date":"2023-11-10","date_epoch":1699574400,"day":{"maxtemp_c":33.1,"maxtemp_f":91.6,"mintemp_c":24.7,"mintemp_f":76.4,"avgtemp_c":27.8,"avgtemp_f":82.0,"maxwind_mph":5.6,"maxwind_kph":9.0,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":21.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"06:39 AM","sunset":"05:31 PM","moonrise":"03:38 AM","moonset":"03:45 PM","moon_phase":"Waning Crescent","moon_illumination":11,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1699554600,"time":"2023-11-10 00:00","temp_c":26.9,"temp_f":80.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":6,"wind_dir":"N","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":6,"feelslike_c":25.3,"feelslike_f":77.5,"windchill_c":26.9,"windchill_f":80.5,"heatindex_c":25.3,"heatindex_f":77.5,"dewpoint_c":3.0,"dewpoint_f":37.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.0,"gust_kph":3.2,"uv":1.0},{"time_epoch":1699558200,"time":"2023-11-10 01:00","temp_c":26.4,"temp_f":79.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.7,"wind_kph":1.1,"wind_degree":270,"wind_dir":"W","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":22,"cloud":8,"feelslike_c":25.0,"feelslike_f":77.0,"windchill_c":26.4,"windchill_f":79.6,"heatindex_c":25.0,"heatindex_f":77.0,"dewpoint_c":3.1,"dewpoint_f":37.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.2,"gust_kph":1.9,"uv":1.0},{"time_epoch":1699561800,"time":"2023-11-10 02:00","temp_c":26.0,"temp_f":78.9,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.0,"wind_kph":3.2,"wind_degree":245,"wind_dir":"WSW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":8,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":26.0,"windchill_f":78.9,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":3.2,"dewpoint_f":37.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.5,"gust_kph":5.6,"uv":1.0},{"time_epoch":1699565400,"time":"2023-11-10 03:00","temp_c":25.7,"temp_f":78.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":272,"wind_dir":"W","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":9,"feelslike_c":24.6,"feelslike_f":76.2,"windchill_c":25.7,"windchill_f":78.2,"heatindex_c":24.6,"heatindex_f":76.2,"dewpoint_c":3.2,"dewpoint_f":37.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.6,"gust_kph":7.4,"uv":1.0},{"time_epoch":1699569000,"time":"2023-11-10 04:00","temp_c":25.3,"temp_f":77.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":290,"wind_dir":"WNW","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":9,"feelslike_c":24.4,"feelslike_f":75.8,"windchill_c":25.3,"windchill_f":77.5,"heatindex_c":24.4,"heatindex_f":75.8,"dewpoint_c":3.3,"dewpoint_f":37.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.9,"gust_kph":9.4,"uv":1.0},{"time_epoch":1699572600,"time":"2023-11-10 05:00","temp_c":24.7,"temp_f":76.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":322,"wind_dir":"NW","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":26,"cloud":9,"feelslike_c":24.1,"feelslike_f":75.4,"windchill_c":24.7,"windchill_f":76.4,"heatindex_c":24.1,"heatindex_f":75.4,"dewpoint_c":3.7,"dewpoint_f":38.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.3,"gust_kph":11.8,"uv":1.0},{"time_epoch":1699576200,"time":"2023-11-10 06:00","temp_c":25.1,"temp_f":77.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":222,"wind_dir":"SW","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":9,"feelslike_c":24.4,"feelslike_f":75.9,"windchill_c":25.1,"windchill_f":77.2,"heatindex_c":24.4,"heatindex_f":75.9,"dewpoint_c":3.9,"dewpoint_f":39.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.6,"uv":1.0},{"time_epoch":1699579800,"time":"2023-11-10 07:00","temp_c":25.5,"temp_f":77.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":123,"wind_dir":"ESE","pressure_mb":1014.0,"pressure_in":29.96,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":9,"feelslike_c":24.6,"feelslike_f":76.3,"windchill_c":25.5,"windchill_f":77.9,"heatindex_c":24.6,"heatindex_f":76.3,"dewpoint_c":4.1,"dewpoint_f":39.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.4,"gust_kph":5.4,"uv":7.0},{"time_epoch":1699583400,"time":"2023-11-10 08:00","temp_c":25.9,"temp_f":78.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":23,"wind_dir":"NNE","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":8,"feelslike_c":24.9,"feelslike_f":76.8,"windchill_c":25.9,"windchill_f":78.6,"heatindex_c":24.9,"heatindex_f":76.8,"dewpoint_c":4.4,"dewpoint_f":39.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.5,"gust_kph":2.4,"uv":7.0},{"time_epoch":1699587000,"time":"2023-11-10 09:00","temp_c":27.6,"temp_f":81.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":121,"wind_dir":"ESE","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":8,"feelslike_c":26.2,"feelslike_f":79.2,"windchill_c":27.6,"windchill_f":81.7,"heatindex_c":26.2,"heatindex_f":79.2,"dewpoint_c":4.3,"dewpoint_f":39.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.0,"gust_kph":3.2,"uv":7.0},{"time_epoch":1699590600,"time":"2023-11-10 10:00","temp_c":29.3,"temp_f":84.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":218,"wind_dir":"SW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":8,"feelslike_c":27.5,"feelslike_f":81.5,"windchill_c":29.3,"windchill_f":84.7,"heatindex_c":27.5,"heatindex_f":81.5,"dewpoint_c":4.2,"dewpoint_f":39.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.7,"gust_kph":4.3,"uv":7.0},{"time_epoch":1699594200,"time":"2023-11-10 11:00","temp_c":31.0,"temp_f":87.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":315,"wind_dir":"NW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":8,"feelslike_c":28.8,"feelslike_f":83.8,"windchill_c":31.0,"windchill_f":87.9,"heatindex_c":28.8,"heatindex_f":83.8,"dewpoint_c":4.1,"dewpoint_f":39.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.4,"gust_kph":5.4,"uv":8.0},{"time_epoch":1699597800,"time":"2023-11-10 12:00","temp_c":31.7,"temp_f":89.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":324,"wind_dir":"NW","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":8,"feelslike_c":29.5,"feelslike_f":85.1,"windchill_c":31.7,"windchill_f":89.1,"heatindex_c":29.5,"heatindex_f":85.1,"dewpoint_c":3.9,"dewpoint_f":39.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.5,"gust_kph":7.2,"uv":8.0},{"time_epoch":1699601400,"time":"2023-11-10 13:00","temp_c":32.4,"temp_f":90.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":334,"wind_dir":"NNW","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":7,"feelslike_c":30.3,"feelslike_f":86.5,"windchill_c":32.4,"windchill_f":90.3,"heatindex_c":30.3,"heatindex_f":86.5,"dewpoint_c":3.7,"dewpoint_f":38.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.6,"uv":8.0},{"time_epoch":1699605000,"time":"2023-11-10 14:00","temp_c":33.1,"temp_f":91.6,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":343,"wind_dir":"NNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":7,"feelslike_c":31.0,"feelslike_f":87.8,"windchill_c":33.1,"windchill_f":91.6,"heatindex_c":31.0,"heatindex_f":87.8,"dewpoint_c":3.5,"dewpoint_f":38.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.4,"gust_kph":10.4,"uv":8.0},{"time_epoch":1699608600,"time":"2023-11-10 15:00","temp_c":32.6,"temp_f":90.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":348,"wind_dir":"NNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":7,"feelslike_c":30.5,"feelslike_f":86.9,"windchill_c":32.6,"windchill_f":90.7,"heatindex_c":30.5,"heatindex_f":86.9,"dewpoint_c":3.5,"dewpoint_f":38.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.5,"gust_kph":10.4,"uv":8.0},{"time_epoch":1699612200,"time":"2023-11-10 16:00","temp_c":32.1,"temp_f":89.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":354,"wind_dir":"N","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":8,"feelslike_c":29.9,"feelslike_f":85.8,"windchill_c":32.1,"windchill_f":89.8,"heatindex_c":29.9,"heatindex_f":85.8,"dewpoint_c":3.6,"dewpoint_f":38.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.5,"gust_kph":10.4,"uv":8.0},{"time_epoch":1699615800,"time":"2023-11-10 17:00","temp_c":31.6,"temp_f":88.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":359,"wind_dir":"N","pressure_mb":1012.0,"pressure_in":29.88,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":8,"feelslike_c":29.4,"feelslike_f":84.9,"windchill_c":31.6,"windchill_f":88.9,"heatindex_c":29.4,"heatindex_f":84.9,"dewpoint_c":3.6,"dewpoint_f":38.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.4,"gust_kph":10.4,"uv":8.0},{"time_epoch":1699619400,"time":"2023-11-10 18:00","temp_c":30.9,"temp_f":87.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":356,"wind_dir":"N","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":9,"feelslike_c":28.7,"feelslike_f":83.7,"windchill_c":30.9,"windchill_f":87.6,"heatindex_c":28.7,"heatindex_f":83.7,"dewpoint_c":3.9,"dewpoint_f":39.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.7,"gust_kph":10.8,"uv":1.0},{"time_epoch":1699623000,"time":"2023-11-10 19:00","temp_c":30.2,"temp_f":86.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.5,"wind_kph":7.2,"wind_degree":353,"wind_dir":"N","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":9,"feelslike_c":28.0,"feelslike_f":82.4,"windchill_c":30.2,"windchill_f":86.4,"heatindex_c":28.0,"heatindex_f":82.4,"dewpoint_c":4.2,"dewpoint_f":39.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.9,"gust_kph":11.2,"uv":1.0},{"time_epoch":1699626600,"time":"2023-11-10 20:00","temp_c":29.5,"temp_f":85.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.5,"wind_kph":7.2,"wind_degree":350,"wind_dir":"N","pressure_mb":1015.0,"pressure_in":29.96,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":10,"feelslike_c":27.3,"feelslike_f":81.2,"windchill_c":29.5,"windchill_f":85.0,"heatindex_c":27.3,"heatindex_f":81.2,"dewpoint_c":4.5,"dewpoint_f":40.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.1,"gust_kph":11.5,"uv":1.0},{"time_epoch":1699630200,"time":"2023-11-10 21:00","temp_c":28.7,"temp_f":83.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":4.0,"wind_kph":6.5,"wind_degree":238,"wind_dir":"WSW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":21,"cloud":8,"feelslike_c":26.8,"feelslike_f":80.2,"windchill_c":28.7,"windchill_f":83.7,"heatindex_c":26.8,"heatindex_f":80.2,"dewpoint_c":4.4,"dewpoint_f":39.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.7,"gust_kph":10.8,"uv":1.0},{"time_epoch":1699633800,"time":"2023-11-10 22:00","temp_c":28.0,"temp_f":82.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":126,"wind_dir":"SE","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":22,"cloud":7,"feelslike_c":26.2,"feelslike_f":79.2,"windchill_c":28.0,"windchill_f":82.4,"heatindex_c":26.2,"heatindex_f":79.2,"dewpoint_c":4.3,"dewpoint_f":39.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.3,"gust_kph":10.1,"uv":1.0},{"time_epoch":1699637400,"time":"2023-11-10 23:00","temp_c":27.3,"temp_f":81.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":14,"wind_dir":"NNE","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":5,"feelslike_c":25.7,"feelslike_f":78.2,"windchill_c":27.3,"windchill_f":81.1,"heatindex_c":25.7,"heatindex_f":78.2,"dewpoint_c":4.2,"dewpoint_f":39.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.7,"gust_kph":9.1,"uv":1.0}]},{"date":"2023-11-11","date_epoch":1699660800,"day":{"maxtemp_c":32.5,"maxtemp_f":90.5,"mintemp_c":24.7,"mintemp_f":76.5,"avgtemp_c":27.9,"avgtemp_f":82.3,"maxwind_mph":11.0,"maxwind_kph":17.6,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":19.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0},"astro":{"sunrise":"06:40 AM","sunset":"05:30 PM","moonrise":"04:32 AM","moonset":"04:13 PM","moon_phase":"Waning Crescent","moon_illumination":6,"is_moon_up":1,"is_sun_up":0},"hour":[{"time_epoch":1699641000,"time":"2023-11-11 00:00","temp_c":26.7,"temp_f":80.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":125,"wind_dir":"SE","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":5,"feelslike_c":25.4,"feelslike_f":77.7,"windchill_c":26.7,"windchill_f":80.1,"heatindex_c":25.4,"heatindex_f":77.7,"dewpoint_c":4.1,"dewpoint_f":39.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.6,"gust_kph":9.0,"uv":1.0},{"time_epoch":1699644600,"time":"2023-11-11 01:00","temp_c":26.2,"temp_f":79.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":236,"wind_dir":"WSW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":5,"feelslike_c":25.0,"feelslike_f":77.0,"windchill_c":26.2,"windchill_f":79.2,"heatindex_c":25.0,"heatindex_f":77.0,"dewpoint_c":3.9,"dewpoint_f":39.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.6,"uv":1.0},{"time_epoch":1699648200,"time":"2023-11-11 02:00","temp_c":25.7,"temp_f":78.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":347,"wind_dir":"NNW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":5,"feelslike_c":24.7,"feelslike_f":76.4,"windchill_c":25.7,"windchill_f":78.3,"heatindex_c":24.7,"heatindex_f":76.4,"dewpoint_c":3.8,"dewpoint_f":38.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.6,"uv":1.0},{"time_epoch":1699651800,"time":"2023-11-11 03:00","temp_c":25.4,"temp_f":77.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":337,"wind_dir":"NNW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":3,"feelslike_c":24.5,"feelslike_f":76.1,"windchill_c":25.4,"windchill_f":77.7,"heatindex_c":24.5,"heatindex_f":76.1,"dewpoint_c":3.8,"dewpoint_f":38.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.6,"uv":1.0},{"time_epoch":1699655400,"time":"2023-11-11 04:00","temp_c":25.0,"temp_f":77.0,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":328,"wind_dir":"NNW","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":2,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":25.0,"windchill_f":77.0,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":3.8,"dewpoint_f":38.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.1,"gust_kph":8.3,"uv":1.0},{"time_epoch":1699659000,"time":"2023-11-11 05:00","temp_c":24.7,"temp_f":76.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.9,"wind_kph":4.7,"wind_degree":319,"wind_dir":"NW","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":26,"cloud":0,"feelslike_c":24.2,"feelslike_f":75.5,"windchill_c":24.7,"windchill_f":76.5,"heatindex_c":24.2,"heatindex_f":75.5,"dewpoint_c":3.8,"dewpoint_f":38.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.2,"gust_kph":8.3,"uv":1.0},{"time_epoch":1699662600,"time":"2023-11-11 06:00","temp_c":25.2,"temp_f":77.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":320,"wind_dir":"NW","pressure_mb":1016.0,"pressure_in":30.01,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":0,"feelslike_c":24.5,"feelslike_f":76.1,"windchill_c":25.2,"windchill_f":77.4,"heatindex_c":24.5,"heatindex_f":76.1,"dewpoint_c":4.0,"dewpoint_f":39.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.6,"uv":1.0},{"time_epoch":1699666200,"time":"2023-11-11 07:00","temp_c":25.7,"temp_f":78.3,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.8,"wind_kph":6.1,"wind_degree":321,"wind_dir":"NW","pressure_mb":1017.0,"pressure_in":30.03,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":0,"feelslike_c":24.7,"feelslike_f":76.5,"windchill_c":25.7,"windchill_f":78.3,"heatindex_c":24.7,"heatindex_f":76.5,"dewpoint_c":4.2,"dewpoint_f":39.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.6,"gust_kph":9.0,"uv":7.0},{"time_epoch":1699669800,"time":"2023-11-11 08:00","temp_c":26.2,"temp_f":79.1,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":322,"wind_dir":"NW","pressure_mb":1017.0,"pressure_in":30.04,"precip_mm":0.0,"precip_in":0.0,"humidity":24,"cloud":0,"feelslike_c":25.0,"feelslike_f":77.1,"windchill_c":26.2,"windchill_f":79.1,"heatindex_c":25.0,"heatindex_f":77.1,"dewpoint_c":4.4,"dewpoint_f":39.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.7,"gust_kph":9.1,"uv":7.0},{"time_epoch":1699673400,"time":"2023-11-11 09:00","temp_c":27.6,"temp_f":81.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":319,"wind_dir":"NW","pressure_mb":1017.0,"pressure_in":30.04,"precip_mm":0.0,"precip_in":0.0,"humidity":23,"cloud":0,"feelslike_c":26.1,"feelslike_f":79.0,"windchill_c":27.6,"windchill_f":81.7,"heatindex_c":26.1,"heatindex_f":79.0,"dewpoint_c":4.2,"dewpoint_f":39.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.8,"gust_kph":9.4,"uv":7.0},{"time_epoch":1699677000,"time":"2023-11-11 10:00","temp_c":29.1,"temp_f":84.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":315,"wind_dir":"NW","pressure_mb":1017.0,"pressure_in":30.03,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":0,"feelslike_c":27.2,"feelslike_f":81.0,"windchill_c":29.1,"windchill_f":84.4,"heatindex_c":27.2,"heatindex_f":81.0,"dewpoint_c":4.1,"dewpoint_f":39.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.3,"gust_kph":10.1,"uv":7.0},{"time_epoch":1699680600,"time":"2023-11-11 11:00","temp_c":30.6,"temp_f":87.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":311,"wind_dir":"NW","pressure_mb":1017.0,"pressure_in":30.03,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":0,"feelslike_c":28.3,"feelslike_f":83.0,"windchill_c":30.6,"windchill_f":87.0,"heatindex_c":28.3,"heatindex_f":83.0,"dewpoint_c":3.9,"dewpoint_f":39.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.4,"gust_kph":10.4,"uv":8.0},{"time_epoch":1699684200,"time":"2023-11-11 12:00","temp_c":31.2,"temp_f":88.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":7.4,"wind_kph":11.9,"wind_degree":311,"wind_dir":"NW","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":0,"feelslike_c":29.0,"feelslike_f":84.2,"windchill_c":31.2,"windchill_f":88.2,"heatindex_c":29.0,"heatindex_f":84.2,"dewpoint_c":3.1,"dewpoint_f":37.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":8.5,"gust_kph":13.7,"uv":8.0},{"time_epoch":1699687800,"time":"2023-11-11 13:00","temp_c":31.8,"temp_f":89.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.2,"wind_kph":14.8,"wind_degree":311,"wind_dir":"NW","pressure_mb":1015.0,"pressure_in":29.96,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":29.6,"feelslike_f":85.3,"windchill_c":31.8,"windchill_f":89.2,"heatindex_c":29.6,"heatindex_f":85.3,"dewpoint_c":2.3,"dewpoint_f":36.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":10.5,"gust_kph":16.9,"uv":8.0},{"time_epoch":1699691400,"time":"2023-11-11 14:00","temp_c":32.5,"temp_f":90.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":11.0,"wind_kph":17.6,"wind_degree":312,"wind_dir":"NW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":0,"feelslike_c":30.3,"feelslike_f":86.5,"windchill_c":32.5,"windchill_f":90.5,"heatindex_c":30.3,"heatindex_f":86.5,"dewpoint_c":1.5,"dewpoint_f":34.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":12.6,"gust_kph":20.3,"uv":8.0},{"time_epoch":1699695000,"time":"2023-11-11 15:00","temp_c":31.8,"temp_f":89.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":10.1,"wind_kph":16.2,"wind_degree":315,"wind_dir":"NW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":0,"feelslike_c":29.6,"feelslike_f":85.3,"windchill_c":31.8,"windchill_f":89.2,"heatindex_c":29.6,"heatindex_f":85.3,"dewpoint_c":1.3,"dewpoint_f":34.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":12.8,"gust_kph":20.5,"uv":8.0},{"time_epoch":1699698600,"time":"2023-11-11 16:00","temp_c":31.1,"temp_f":88.0,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":9.2,"wind_kph":14.8,"wind_degree":319,"wind_dir":"NW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":28.9,"feelslike_f":84.0,"windchill_c":31.1,"windchill_f":88.0,"heatindex_c":28.9,"heatindex_f":84.0,"dewpoint_c":1.0,"dewpoint_f":33.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":13.0,"gust_kph":20.9,"uv":8.0},{"time_epoch":1699702200,"time":"2023-11-11 17:00","temp_c":30.4,"temp_f":86.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":8.3,"wind_kph":13.3,"wind_degree":323,"wind_dir":"NW","pressure_mb":1013.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":28.2,"feelslike_f":82.7,"windchill_c":30.4,"windchill_f":86.7,"heatindex_c":28.2,"heatindex_f":82.7,"dewpoint_c":0.8,"dewpoint_f":33.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":13.0,"gust_kph":20.9,"uv":1.0},{"time_epoch":1699705800,"time":"2023-11-11 18:00","temp_c":29.5,"temp_f":85.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":7.4,"wind_kph":11.9,"wind_degree":322,"wind_dir":"NW","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":27.4,"feelslike_f":81.3,"windchill_c":29.5,"windchill_f":85.1,"heatindex_c":27.4,"heatindex_f":81.3,"dewpoint_c":0.2,"dewpoint_f":32.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":11.9,"gust_kph":19.1,"uv":1.0},{"time_epoch":1699709400,"time":"2023-11-11 19:00","temp_c":28.6,"temp_f":83.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":6.5,"wind_kph":10.4,"wind_degree":321,"wind_dir":"NW","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":26.6,"feelslike_f":79.9,"windchill_c":28.6,"windchill_f":83.5,"heatindex_c":26.6,"heatindex_f":79.9,"dewpoint_c":-0.5,"dewpoint_f":31.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":10.7,"gust_kph":17.3,"uv":1.0},{"time_epoch":1699713000,"time":"2023-11-11 20:00","temp_c":27.7,"temp_f":81.9,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":319,"wind_dir":"NW","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":25.8,"feelslike_f":78.4,"windchill_c":27.7,"windchill_f":81.9,"heatindex_c":25.8,"heatindex_f":78.4,"dewpoint_c":-1.1,"dewpoint_f":30.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.7,"gust_kph":15.6,"uv":1.0},{"time_epoch":1699716600,"time":"2023-11-11 21:00","temp_c":27.0,"temp_f":80.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":314,"wind_dir":"NW","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":25.3,"feelslike_f":77.5,"windchill_c":27.0,"windchill_f":80.6,"heatindex_c":25.3,"heatindex_f":77.5,"dewpoint_c":-1.4,"dewpoint_f":29.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.8,"gust_kph":15.8,"uv":1.0},{"time_epoch":1699720200,"time":"2023-11-11 22:00","temp_c":26.4,"temp_f":79.5,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":308,"wind_dir":"NW","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":0,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":26.4,"windchill_f":79.5,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":-1.8,"dewpoint_f":28.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.8,"gust_kph":15.8,"uv":1.0},{"time_epoch":1699723800,"time":"2023-11-11 23:00","temp_c":25.7,"temp_f":78.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":5.8,"wind_kph":9.4,"wind_degree":302,"wind_dir":"WNW","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":0,"feelslike_c":24.2,"feelslike_f":75.6,"windchill_c":25.7,"windchill_f":78.2,"heatindex_c":24.2,"heatindex_f":75.6,"dewpoint_c":-2.2,"dewpoint_f":28.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":9.9,"gust_kph":15.9,"uv":1.0}]}]

Forecast forecastFromJson(String str) => Forecast.fromJson(json.decode(str));
String forecastToJson(Forecast data) => json.encode(data.toJson());
class Forecast {
  Forecast({
      List<Forecastday>? forecastday,}){
    _forecastday = forecastday;
}

  Forecast.fromJson(dynamic json) {
    if (json['forecastday'] != null) {
      _forecastday = [];
      json['forecastday'].forEach((v) {
        _forecastday?.add(Forecastday.fromJson(v));
      });
    }
  }
  List<Forecastday>? _forecastday;
Forecast copyWith({  List<Forecastday>? forecastday,
}) => Forecast(  forecastday: forecastday ?? _forecastday,
);
  List<Forecastday>? get forecastday => _forecastday;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_forecastday != null) {
      map['forecastday'] = _forecastday?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// date : "2023-11-05"
/// date_epoch : 1699142400
/// day : {"maxtemp_c":31.4,"maxtemp_f":88.4,"mintemp_c":22.9,"mintemp_f":73.1,"avgtemp_c":27.1,"avgtemp_f":80.7,"maxwind_mph":5.6,"maxwind_kph":9.0,"totalprecip_mm":0.0,"totalprecip_in":0.0,"totalsnow_cm":0.0,"avgvis_km":10.0,"avgvis_miles":6.0,"avghumidity":24.0,"daily_will_it_rain":0,"daily_chance_of_rain":0,"daily_will_it_snow":0,"daily_chance_of_snow":0,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"uv":7.0}
/// astro : {"sunrise":"06:35 AM","sunset":"05:34 PM","moonrise":"No moonrise","moonset":"01:19 PM","moon_phase":"Last Quarter","moon_illumination":53,"is_moon_up":1,"is_sun_up":0}
/// hour : [{"time_epoch":1699122600,"time":"2023-11-05 00:00","temp_c":25.5,"temp_f":77.9,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":109,"wind_dir":"ESE","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":29,"cloud":15,"feelslike_c":24.9,"feelslike_f":76.9,"windchill_c":25.5,"windchill_f":77.9,"heatindex_c":24.9,"heatindex_f":76.9,"dewpoint_c":6.1,"dewpoint_f":43.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.0,"gust_kph":4.8,"uv":1.0},{"time_epoch":1699126200,"time":"2023-11-05 01:00","temp_c":24.9,"temp_f":76.8,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":108,"wind_dir":"ESE","pressure_mb":1012.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":30,"cloud":0,"feelslike_c":24.6,"feelslike_f":76.4,"windchill_c":24.9,"windchill_f":76.8,"heatindex_c":24.6,"heatindex_f":76.4,"dewpoint_c":6.1,"dewpoint_f":42.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.0,"gust_kph":4.8,"uv":1.0},{"time_epoch":1699129800,"time":"2023-11-05 02:00","temp_c":24.1,"temp_f":75.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":54,"wind_dir":"NE","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":34,"cloud":2,"feelslike_c":24.5,"feelslike_f":76.0,"windchill_c":24.1,"windchill_f":75.4,"heatindex_c":24.5,"heatindex_f":76.0,"dewpoint_c":7.1,"dewpoint_f":44.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.3,"gust_kph":6.9,"uv":1.0},{"time_epoch":1699133400,"time":"2023-11-05 03:00","temp_c":23.7,"temp_f":74.7,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.4,"wind_kph":5.4,"wind_degree":48,"wind_dir":"NE","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":35,"cloud":0,"feelslike_c":24.4,"feelslike_f":75.8,"windchill_c":23.7,"windchill_f":74.7,"heatindex_c":24.4,"heatindex_f":75.8,"dewpoint_c":7.3,"dewpoint_f":45.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.4,"gust_kph":8.6,"uv":1.0},{"time_epoch":1699137000,"time":"2023-11-05 04:00","temp_c":23.4,"temp_f":74.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":53,"wind_dir":"NE","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":36,"cloud":0,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":23.4,"windchill_f":74.1,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":7.7,"dewpoint_f":45.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.8,"gust_kph":9.3,"uv":1.0},{"time_epoch":1699140600,"time":"2023-11-05 05:00","temp_c":23.1,"temp_f":73.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":63,"wind_dir":"ENE","pressure_mb":1013.0,"pressure_in":29.92,"precip_mm":0.0,"precip_in":0.0,"humidity":37,"cloud":0,"feelslike_c":24.2,"feelslike_f":75.6,"windchill_c":23.1,"windchill_f":73.6,"heatindex_c":24.2,"heatindex_f":75.6,"dewpoint_c":7.8,"dewpoint_f":46.1,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.1,"gust_kph":8.2,"uv":1.0},{"time_epoch":1699144200,"time":"2023-11-05 06:00","temp_c":22.9,"temp_f":73.1,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":68,"wind_dir":"ENE","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":38,"cloud":0,"feelslike_c":24.2,"feelslike_f":75.5,"windchill_c":22.9,"windchill_f":73.1,"heatindex_c":24.2,"heatindex_f":75.5,"dewpoint_c":7.9,"dewpoint_f":46.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.0,"gust_kph":6.5,"uv":1.0},{"time_epoch":1699147800,"time":"2023-11-05 07:00","temp_c":23.3,"temp_f":73.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.5,"wind_kph":4.0,"wind_degree":67,"wind_dir":"ENE","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":38,"cloud":0,"feelslike_c":24.3,"feelslike_f":75.8,"windchill_c":23.3,"windchill_f":73.9,"heatindex_c":24.3,"heatindex_f":75.8,"dewpoint_c":8.1,"dewpoint_f":46.6,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.8,"gust_kph":6.0,"uv":6.0},{"time_epoch":1699151400,"time":"2023-11-05 08:00","temp_c":24.8,"temp_f":76.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.7,"wind_kph":4.3,"wind_degree":36,"wind_dir":"NE","pressure_mb":1015.0,"pressure_in":29.98,"precip_mm":0.0,"precip_in":0.0,"humidity":34,"cloud":0,"feelslike_c":24.9,"feelslike_f":76.7,"windchill_c":24.8,"windchill_f":76.7,"heatindex_c":24.9,"heatindex_f":76.7,"dewpoint_c":7.7,"dewpoint_f":45.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.4,"gust_kph":5.5,"uv":6.0},{"time_epoch":1699155000,"time":"2023-11-05 09:00","temp_c":26.5,"temp_f":79.7,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":46,"wind_dir":"NE","pressure_mb":1016.0,"pressure_in":30.0,"precip_mm":0.0,"precip_in":0.0,"humidity":30,"cloud":0,"feelslike_c":25.7,"feelslike_f":78.3,"windchill_c":26.5,"windchill_f":79.6,"heatindex_c":25.7,"heatindex_f":78.3,"dewpoint_c":7.4,"dewpoint_f":45.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.6,"gust_kph":4.1,"uv":7.0},{"time_epoch":1699158600,"time":"2023-11-05 10:00","temp_c":28.1,"temp_f":82.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":16,"wind_dir":"NNE","pressure_mb":1016.0,"pressure_in":29.99,"precip_mm":0.0,"precip_in":0.0,"humidity":25,"cloud":0,"feelslike_c":26.6,"feelslike_f":79.9,"windchill_c":28.1,"windchill_f":82.5,"heatindex_c":26.6,"heatindex_f":79.9,"dewpoint_c":6.5,"dewpoint_f":43.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.6,"gust_kph":4.1,"uv":7.0},{"time_epoch":1699162200,"time":"2023-11-05 11:00","temp_c":29.3,"temp_f":84.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":3.1,"wind_kph":5.0,"wind_degree":354,"wind_dir":"N","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":0,"feelslike_c":27.2,"feelslike_f":80.9,"windchill_c":29.3,"windchill_f":84.8,"heatindex_c":27.2,"heatindex_f":80.9,"dewpoint_c":3.9,"dewpoint_f":39.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.6,"gust_kph":5.8,"uv":7.0},{"time_epoch":1699165800,"time":"2023-11-05 12:00","temp_c":30.2,"temp_f":86.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.3,"wind_kph":6.8,"wind_degree":347,"wind_dir":"NNW","pressure_mb":1014.0,"pressure_in":29.93,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":0,"feelslike_c":28.0,"feelslike_f":82.4,"windchill_c":30.2,"windchill_f":86.4,"heatindex_c":28.0,"heatindex_f":82.4,"dewpoint_c":2.8,"dewpoint_f":37.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":4.9,"gust_kph":7.9,"uv":8.0},{"time_epoch":1699169400,"time":"2023-11-05 13:00","temp_c":30.8,"temp_f":87.5,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.1,"wind_kph":8.3,"wind_degree":335,"wind_dir":"NNW","pressure_mb":1013.0,"pressure_in":29.91,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":0,"feelslike_c":28.6,"feelslike_f":83.4,"windchill_c":30.8,"windchill_f":87.5,"heatindex_c":28.6,"heatindex_f":83.4,"dewpoint_c":2.0,"dewpoint_f":35.5,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":5.9,"gust_kph":9.5,"uv":8.0},{"time_epoch":1699173000,"time":"2023-11-05 14:00","temp_c":31.2,"temp_f":88.2,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.4,"wind_kph":8.6,"wind_degree":327,"wind_dir":"NNW","pressure_mb":1012.0,"pressure_in":29.89,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":29.0,"feelslike_f":84.2,"windchill_c":31.2,"windchill_f":88.2,"heatindex_c":29.0,"heatindex_f":84.2,"dewpoint_c":1.3,"dewpoint_f":34.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.2,"gust_kph":9.9,"uv":8.0},{"time_epoch":1699176600,"time":"2023-11-05 15:00","temp_c":31.4,"temp_f":88.4,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":321,"wind_dir":"NW","pressure_mb":1012.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":0,"feelslike_c":29.1,"feelslike_f":84.4,"windchill_c":31.4,"windchill_f":88.4,"heatindex_c":29.1,"heatindex_f":84.4,"dewpoint_c":0.7,"dewpoint_f":33.3,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.4,"gust_kph":10.4,"uv":8.0},{"time_epoch":1699180200,"time":"2023-11-05 16:00","temp_c":31.1,"temp_f":87.9,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":5.6,"wind_kph":9.0,"wind_degree":326,"wind_dir":"NNW","pressure_mb":1011.0,"pressure_in":29.87,"precip_mm":0.0,"precip_in":0.0,"humidity":14,"cloud":0,"feelslike_c":28.8,"feelslike_f":83.9,"windchill_c":31.1,"windchill_f":87.9,"heatindex_c":28.8,"heatindex_f":83.9,"dewpoint_c":0.5,"dewpoint_f":32.9,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.9,"gust_kph":11.1,"uv":8.0},{"time_epoch":1699183800,"time":"2023-11-05 17:00","temp_c":29.9,"temp_f":85.8,"is_day":1,"condition":{"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000},"wind_mph":4.7,"wind_kph":7.6,"wind_degree":326,"wind_dir":"NNW","pressure_mb":1012.0,"pressure_in":29.88,"precip_mm":0.0,"precip_in":0.0,"humidity":15,"cloud":0,"feelslike_c":27.7,"feelslike_f":81.8,"windchill_c":29.9,"windchill_f":85.8,"heatindex_c":27.7,"heatindex_f":81.8,"dewpoint_c":0.4,"dewpoint_f":32.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":7.2,"gust_kph":11.6,"uv":7.0},{"time_epoch":1699187400,"time":"2023-11-05 18:00","temp_c":29.1,"temp_f":84.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":3.6,"wind_kph":5.8,"wind_degree":324,"wind_dir":"NW","pressure_mb":1013.0,"pressure_in":29.9,"precip_mm":0.0,"precip_in":0.0,"humidity":16,"cloud":0,"feelslike_c":27.0,"feelslike_f":80.6,"windchill_c":29.1,"windchill_f":84.4,"heatindex_c":27.0,"heatindex_f":80.6,"dewpoint_c":0.4,"dewpoint_f":32.8,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":6.0,"gust_kph":9.6,"uv":1.0},{"time_epoch":1699191000,"time":"2023-11-05 19:00","temp_c":27.0,"temp_f":80.6,"is_day":0,"condition":{"text":"Overcast","icon":"//cdn.weatherapi.com/weather/64x64/night/122.png","code":1009},"wind_mph":2.2,"wind_kph":3.6,"wind_degree":10,"wind_dir":"N","pressure_mb":1015.0,"pressure_in":29.97,"precip_mm":0.0,"precip_in":0.0,"humidity":51,"cloud":0,"feelslike_c":26.5,"feelslike_f":79.7,"windchill_c":28.6,"windchill_f":83.4,"heatindex_c":26.5,"heatindex_f":79.7,"dewpoint_c":0.6,"dewpoint_f":33.0,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":1.8,"vis_miles":1.0,"gust_mph":4.7,"gust_kph":7.6,"uv":1.0},{"time_epoch":1699194600,"time":"2023-11-05 20:00","temp_c":28.0,"temp_f":82.4,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":2.0,"wind_kph":3.2,"wind_degree":339,"wind_dir":"NNW","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":17,"cloud":0,"feelslike_c":26.0,"feelslike_f":78.9,"windchill_c":28.0,"windchill_f":82.5,"heatindex_c":26.0,"heatindex_f":78.9,"dewpoint_c":0.7,"dewpoint_f":33.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.7,"gust_kph":5.9,"uv":1.0},{"time_epoch":1699198200,"time":"2023-11-05 21:00","temp_c":27.3,"temp_f":81.2,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.1,"wind_kph":1.8,"wind_degree":1,"wind_dir":"N","pressure_mb":1014.0,"pressure_in":29.94,"precip_mm":0.0,"precip_in":0.0,"humidity":18,"cloud":0,"feelslike_c":25.5,"feelslike_f":77.8,"windchill_c":27.3,"windchill_f":81.2,"heatindex_c":25.5,"heatindex_f":77.8,"dewpoint_c":0.8,"dewpoint_f":33.4,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":2.1,"gust_kph":3.3,"uv":1.0},{"time_epoch":1699201800,"time":"2023-11-05 22:00","temp_c":26.4,"temp_f":79.6,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":0.9,"wind_kph":1.4,"wind_degree":39,"wind_dir":"NE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":19,"cloud":0,"feelslike_c":24.8,"feelslike_f":76.6,"windchill_c":26.4,"windchill_f":79.6,"heatindex_c":24.8,"heatindex_f":76.6,"dewpoint_c":1.0,"dewpoint_f":33.7,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":1.7,"gust_kph":2.7,"uv":1.0},{"time_epoch":1699205400,"time":"2023-11-05 23:00","temp_c":25.7,"temp_f":78.3,"is_day":0,"condition":{"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000},"wind_mph":1.8,"wind_kph":2.9,"wind_degree":32,"wind_dir":"NNE","pressure_mb":1014.0,"pressure_in":29.95,"precip_mm":0.0,"precip_in":0.0,"humidity":20,"cloud":0,"feelslike_c":24.3,"feelslike_f":75.7,"windchill_c":25.7,"windchill_f":78.3,"heatindex_c":24.3,"heatindex_f":75.7,"dewpoint_c":1.2,"dewpoint_f":34.2,"will_it_rain":0,"chance_of_rain":0,"will_it_snow":0,"chance_of_snow":0,"vis_km":10.0,"vis_miles":6.0,"gust_mph":3.3,"gust_kph":5.3,"uv":1.0}]

Forecastday forecastdayFromJson(String str) => Forecastday.fromJson(json.decode(str));
String forecastdayToJson(Forecastday data) => json.encode(data.toJson());
class Forecastday {
  Forecastday({
      String? date, 
      num? dateEpoch, 
      Day? day, 
      Astro? astro, 
      List<Hour>? hour,}){
    _date = date;
    _dateEpoch = dateEpoch;
    _day = day;
    _astro = astro;
    _hour = hour;
}

  Forecastday.fromJson(dynamic json) {
    _date = json['date'];
    _dateEpoch = json['date_epoch'];
    _day = json['day'] != null ? Day.fromJson(json['day']) : null;
    _astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      _hour = [];
      json['hour'].forEach((v) {
        _hour?.add(Hour.fromJson(v));
      });
    }
  }
  String? _date;
  num? _dateEpoch;
  Day? _day;
  Astro? _astro;
  List<Hour>? _hour;
Forecastday copyWith({  String? date,
  num? dateEpoch,
  Day? day,
  Astro? astro,
  List<Hour>? hour,
}) => Forecastday(  date: date ?? _date,
  dateEpoch: dateEpoch ?? _dateEpoch,
  day: day ?? _day,
  astro: astro ?? _astro,
  hour: hour ?? _hour,
);
  String? get date => _date;
  num? get dateEpoch => _dateEpoch;
  Day? get day => _day;
  Astro? get astro => _astro;
  List<Hour>? get hour => _hour;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['date_epoch'] = _dateEpoch;
    if (_day != null) {
      map['day'] = _day?.toJson();
    }
    if (_astro != null) {
      map['astro'] = _astro?.toJson();
    }
    if (_hour != null) {
      map['hour'] = _hour?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// time_epoch : 1699122600
/// time : "2023-11-05 00:00"
/// temp_c : 25.5
/// temp_f : 77.9
/// is_day : 0
/// condition : {"text":"Clear","icon":"//cdn.weatherapi.com/weather/64x64/night/113.png","code":1000}
/// wind_mph : 1.8
/// wind_kph : 2.9
/// wind_degree : 109
/// wind_dir : "ESE"
/// pressure_mb : 1013.0
/// pressure_in : 29.9
/// precip_mm : 0.0
/// precip_in : 0.0
/// humidity : 29
/// cloud : 15
/// feelslike_c : 24.9
/// feelslike_f : 76.9
/// windchill_c : 25.5
/// windchill_f : 77.9
/// heatindex_c : 24.9
/// heatindex_f : 76.9
/// dewpoint_c : 6.1
/// dewpoint_f : 43.0
/// will_it_rain : 0
/// chance_of_rain : 0
/// will_it_snow : 0
/// chance_of_snow : 0
/// vis_km : 10.0
/// vis_miles : 6.0
/// gust_mph : 3.0
/// gust_kph : 4.8
/// uv : 1.0

Hour hourFromJson(String str) => Hour.fromJson(json.decode(str));
String hourToJson(Hour data) => json.encode(data.toJson());
class Hour {
  Hour({
      num? timeEpoch, 
      String? time, 
      num? tempC, 
      num? tempF, 
      num? isDay, 
      Condition? condition, 
      num? windMph, 
      num? windKph, 
      num? windDegree, 
      String? windDir, 
      num? pressureMb, 
      num? pressureIn, 
      num? precipMm, 
      num? precipIn, 
      num? humidity, 
      num? cloud, 
      num? feelslikeC, 
      num? feelslikeF, 
      num? windchillC, 
      num? windchillF, 
      num? heatindexC, 
      num? heatindexF, 
      num? dewpointC, 
      num? dewpointF, 
      num? willItRain, 
      num? chanceOfRain, 
      num? willItSnow, 
      num? chanceOfSnow, 
      num? visKm, 
      num? visMiles, 
      num? gustMph, 
      num? gustKph, 
      num? uv,}){
    _timeEpoch = timeEpoch;
    _time = time;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _windchillC = windchillC;
    _windchillF = windchillF;
    _heatindexC = heatindexC;
    _heatindexF = heatindexF;
    _dewpointC = dewpointC;
    _dewpointF = dewpointF;
    _willItRain = willItRain;
    _chanceOfRain = chanceOfRain;
    _willItSnow = willItSnow;
    _chanceOfSnow = chanceOfSnow;
    _visKm = visKm;
    _visMiles = visMiles;
    _gustMph = gustMph;
    _gustKph = gustKph;
    _uv = uv;
}

  Hour.fromJson(dynamic json) {
    _timeEpoch = json['time_epoch'];
    _time = json['time'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _windchillC = json['windchill_c'];
    _windchillF = json['windchill_f'];
    _heatindexC = json['heatindex_c'];
    _heatindexF = json['heatindex_f'];
    _dewpointC = json['dewpoint_c'];
    _dewpointF = json['dewpoint_f'];
    _willItRain = json['will_it_rain'];
    _chanceOfRain = json['chance_of_rain'];
    _willItSnow = json['will_it_snow'];
    _chanceOfSnow = json['chance_of_snow'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
    _uv = json['uv'];
  }
  num? _timeEpoch;
  String? _time;
  num? _tempC;
  num? _tempF;
  num? _isDay;
  Condition? _condition;
  num? _windMph;
  num? _windKph;
  num? _windDegree;
  String? _windDir;
  num? _pressureMb;
  num? _pressureIn;
  num? _precipMm;
  num? _precipIn;
  num? _humidity;
  num? _cloud;
  num? _feelslikeC;
  num? _feelslikeF;
  num? _windchillC;
  num? _windchillF;
  num? _heatindexC;
  num? _heatindexF;
  num? _dewpointC;
  num? _dewpointF;
  num? _willItRain;
  num? _chanceOfRain;
  num? _willItSnow;
  num? _chanceOfSnow;
  num? _visKm;
  num? _visMiles;
  num? _gustMph;
  num? _gustKph;
  num? _uv;
Hour copyWith({  num? timeEpoch,
  String? time,
  num? tempC,
  num? tempF,
  num? isDay,
  Condition? condition,
  num? windMph,
  num? windKph,
  num? windDegree,
  String? windDir,
  num? pressureMb,
  num? pressureIn,
  num? precipMm,
  num? precipIn,
  num? humidity,
  num? cloud,
  num? feelslikeC,
  num? feelslikeF,
  num? windchillC,
  num? windchillF,
  num? heatindexC,
  num? heatindexF,
  num? dewpointC,
  num? dewpointF,
  num? willItRain,
  num? chanceOfRain,
  num? willItSnow,
  num? chanceOfSnow,
  num? visKm,
  num? visMiles,
  num? gustMph,
  num? gustKph,
  num? uv,
}) => Hour(  timeEpoch: timeEpoch ?? _timeEpoch,
  time: time ?? _time,
  tempC: tempC ?? _tempC,
  tempF: tempF ?? _tempF,
  isDay: isDay ?? _isDay,
  condition: condition ?? _condition,
  windMph: windMph ?? _windMph,
  windKph: windKph ?? _windKph,
  windDegree: windDegree ?? _windDegree,
  windDir: windDir ?? _windDir,
  pressureMb: pressureMb ?? _pressureMb,
  pressureIn: pressureIn ?? _pressureIn,
  precipMm: precipMm ?? _precipMm,
  precipIn: precipIn ?? _precipIn,
  humidity: humidity ?? _humidity,
  cloud: cloud ?? _cloud,
  feelslikeC: feelslikeC ?? _feelslikeC,
  feelslikeF: feelslikeF ?? _feelslikeF,
  windchillC: windchillC ?? _windchillC,
  windchillF: windchillF ?? _windchillF,
  heatindexC: heatindexC ?? _heatindexC,
  heatindexF: heatindexF ?? _heatindexF,
  dewpointC: dewpointC ?? _dewpointC,
  dewpointF: dewpointF ?? _dewpointF,
  willItRain: willItRain ?? _willItRain,
  chanceOfRain: chanceOfRain ?? _chanceOfRain,
  willItSnow: willItSnow ?? _willItSnow,
  chanceOfSnow: chanceOfSnow ?? _chanceOfSnow,
  visKm: visKm ?? _visKm,
  visMiles: visMiles ?? _visMiles,
  gustMph: gustMph ?? _gustMph,
  gustKph: gustKph ?? _gustKph,
  uv: uv ?? _uv,
);
  num? get timeEpoch => _timeEpoch;
  String? get time => _time;
  num? get tempC => _tempC;
  num? get tempF => _tempF;
  num? get isDay => _isDay;
  Condition? get condition => _condition;
  num? get windMph => _windMph;
  num? get windKph => _windKph;
  num? get windDegree => _windDegree;
  String? get windDir => _windDir;
  num? get pressureMb => _pressureMb;
  num? get pressureIn => _pressureIn;
  num? get precipMm => _precipMm;
  num? get precipIn => _precipIn;
  num? get humidity => _humidity;
  num? get cloud => _cloud;
  num? get feelslikeC => _feelslikeC;
  num? get feelslikeF => _feelslikeF;
  num? get windchillC => _windchillC;
  num? get windchillF => _windchillF;
  num? get heatindexC => _heatindexC;
  num? get heatindexF => _heatindexF;
  num? get dewpointC => _dewpointC;
  num? get dewpointF => _dewpointF;
  num? get willItRain => _willItRain;
  num? get chanceOfRain => _chanceOfRain;
  num? get willItSnow => _willItSnow;
  num? get chanceOfSnow => _chanceOfSnow;
  num? get visKm => _visKm;
  num? get visMiles => _visMiles;
  num? get gustMph => _gustMph;
  num? get gustKph => _gustKph;
  num? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time_epoch'] = _timeEpoch;
    map['time'] = _time;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['windchill_c'] = _windchillC;
    map['windchill_f'] = _windchillF;
    map['heatindex_c'] = _heatindexC;
    map['heatindex_f'] = _heatindexF;
    map['dewpoint_c'] = _dewpointC;
    map['dewpoint_f'] = _dewpointF;
    map['will_it_rain'] = _willItRain;
    map['chance_of_rain'] = _chanceOfRain;
    map['will_it_snow'] = _willItSnow;
    map['chance_of_snow'] = _chanceOfSnow;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    map['uv'] = _uv;
    return map;
  }

}

/// text : "Clear"
/// icon : "//cdn.weatherapi.com/weather/64x64/night/113.png"
/// code : 1000

Condition conditionFromJson(String str) => Condition.fromJson(json.decode(str));
String conditionToJson(Condition data) => json.encode(data.toJson());
class Condition {
  Condition({
      String? text, 
      String? icon, 
      num? code,}){
    _text = text;
    _icon = icon;
    _code = code;
}

  Condition.fromJson(dynamic json) {
    _text = json['text'];
    _icon = json['icon'];
    _code = json['code'];
  }
  String? _text;
  String? _icon;
  num? _code;
Condition copyWith({  String? text,
  String? icon,
  num? code,
}) => Condition(  text: text ?? _text,
  icon: icon ?? _icon,
  code: code ?? _code,
);
  String? get text => _text;
  String? get icon => _icon;
  num? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['icon'] = _icon;
    map['code'] = _code;
    return map;
  }

}

/// sunrise : "06:35 AM"
/// sunset : "05:34 PM"
/// moonrise : "No moonrise"
/// moonset : "01:19 PM"
/// moon_phase : "Last Quarter"
/// moon_illumination : 53
/// is_moon_up : 1
/// is_sun_up : 0

Astro astroFromJson(String str) => Astro.fromJson(json.decode(str));
String astroToJson(Astro data) => json.encode(data.toJson());
class Astro {
  Astro({
      String? sunrise, 
      String? sunset, 
      String? moonrise, 
      String? moonset, 
      String? moonPhase, 
      num? moonIllumination, 
      num? isMoonUp, 
      num? isSunUp,}){
    _sunrise = sunrise;
    _sunset = sunset;
    _moonrise = moonrise;
    _moonset = moonset;
    _moonPhase = moonPhase;
    _moonIllumination = moonIllumination;
    _isMoonUp = isMoonUp;
    _isSunUp = isSunUp;
}

  Astro.fromJson(dynamic json) {
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _moonrise = json['moonrise'];
    _moonset = json['moonset'];
    _moonPhase = json['moon_phase'];
    _moonIllumination = json['moon_illumination'];
    _isMoonUp = json['is_moon_up'];
    _isSunUp = json['is_sun_up'];
  }
  String? _sunrise;
  String? _sunset;
  String? _moonrise;
  String? _moonset;
  String? _moonPhase;
  num? _moonIllumination;
  num? _isMoonUp;
  num? _isSunUp;
Astro copyWith({  String? sunrise,
  String? sunset,
  String? moonrise,
  String? moonset,
  String? moonPhase,
  num? moonIllumination,
  num? isMoonUp,
  num? isSunUp,
}) => Astro(  sunrise: sunrise ?? _sunrise,
  sunset: sunset ?? _sunset,
  moonrise: moonrise ?? _moonrise,
  moonset: moonset ?? _moonset,
  moonPhase: moonPhase ?? _moonPhase,
  moonIllumination: moonIllumination ?? _moonIllumination,
  isMoonUp: isMoonUp ?? _isMoonUp,
  isSunUp: isSunUp ?? _isSunUp,
);
  String? get sunrise => _sunrise;
  String? get sunset => _sunset;
  String? get moonrise => _moonrise;
  String? get moonset => _moonset;
  String? get moonPhase => _moonPhase;
  num? get moonIllumination => _moonIllumination;
  num? get isMoonUp => _isMoonUp;
  num? get isSunUp => _isSunUp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['moonrise'] = _moonrise;
    map['moonset'] = _moonset;
    map['moon_phase'] = _moonPhase;
    map['moon_illumination'] = _moonIllumination;
    map['is_moon_up'] = _isMoonUp;
    map['is_sun_up'] = _isSunUp;
    return map;
  }

}

/// maxtemp_c : 31.4
/// maxtemp_f : 88.4
/// mintemp_c : 22.9
/// mintemp_f : 73.1
/// avgtemp_c : 27.1
/// avgtemp_f : 80.7
/// maxwind_mph : 5.6
/// maxwind_kph : 9.0
/// totalprecip_mm : 0.0
/// totalprecip_in : 0.0
/// totalsnow_cm : 0.0
/// avgvis_km : 10.0
/// avgvis_miles : 6.0
/// avghumidity : 24.0
/// daily_will_it_rain : 0
/// daily_chance_of_rain : 0
/// daily_will_it_snow : 0
/// daily_chance_of_snow : 0
/// condition : {"text":"Sunny","icon":"//cdn.weatherapi.com/weather/64x64/day/113.png","code":1000}
/// uv : 7.0

Day dayFromJson(String str) => Day.fromJson(json.decode(str));
String dayToJson(Day data) => json.encode(data.toJson());
class Day {
  Day({
      num? maxtempC, 
      num? maxtempF, 
      num? mintempC, 
      num? mintempF, 
      num? avgtempC, 
      num? avgtempF, 
      num? maxwindMph, 
      num? maxwindKph, 
      num? totalprecipMm, 
      num? totalprecipIn, 
      num? totalsnowCm, 
      num? avgvisKm, 
      num? avgvisMiles, 
      num? avghumidity, 
      num? dailyWillItRain, 
      num? dailyChanceOfRain, 
      num? dailyWillItSnow, 
      num? dailyChanceOfSnow, 
      Condition? condition, 
      num? uv,}){
    _maxtempC = maxtempC;
    _maxtempF = maxtempF;
    _mintempC = mintempC;
    _mintempF = mintempF;
    _avgtempC = avgtempC;
    _avgtempF = avgtempF;
    _maxwindMph = maxwindMph;
    _maxwindKph = maxwindKph;
    _totalprecipMm = totalprecipMm;
    _totalprecipIn = totalprecipIn;
    _totalsnowCm = totalsnowCm;
    _avgvisKm = avgvisKm;
    _avgvisMiles = avgvisMiles;
    _avghumidity = avghumidity;
    _dailyWillItRain = dailyWillItRain;
    _dailyChanceOfRain = dailyChanceOfRain;
    _dailyWillItSnow = dailyWillItSnow;
    _dailyChanceOfSnow = dailyChanceOfSnow;
    _condition = condition;
    _uv = uv;
}

  Day.fromJson(dynamic json) {
    _maxtempC = json['maxtemp_c'];
    _maxtempF = json['maxtemp_f'];
    _mintempC = json['mintemp_c'];
    _mintempF = json['mintemp_f'];
    _avgtempC = json['avgtemp_c'];
    _avgtempF = json['avgtemp_f'];
    _maxwindMph = json['maxwind_mph'];
    _maxwindKph = json['maxwind_kph'];
    _totalprecipMm = json['totalprecip_mm'];
    _totalprecipIn = json['totalprecip_in'];
    _totalsnowCm = json['totalsnow_cm'];
    _avgvisKm = json['avgvis_km'];
    _avgvisMiles = json['avgvis_miles'];
    _avghumidity = json['avghumidity'];
    _dailyWillItRain = json['daily_will_it_rain'];
    _dailyChanceOfRain = json['daily_chance_of_rain'];
    _dailyWillItSnow = json['daily_will_it_snow'];
    _dailyChanceOfSnow = json['daily_chance_of_snow'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _uv = json['uv'];
  }
  num? _maxtempC;
  num? _maxtempF;
  num? _mintempC;
  num? _mintempF;
  num? _avgtempC;
  num? _avgtempF;
  num? _maxwindMph;
  num? _maxwindKph;
  num? _totalprecipMm;
  num? _totalprecipIn;
  num? _totalsnowCm;
  num? _avgvisKm;
  num? _avgvisMiles;
  num? _avghumidity;
  num? _dailyWillItRain;
  num? _dailyChanceOfRain;
  num? _dailyWillItSnow;
  num? _dailyChanceOfSnow;
  Condition? _condition;
  num? _uv;
Day copyWith({  num? maxtempC,
  num? maxtempF,
  num? mintempC,
  num? mintempF,
  num? avgtempC,
  num? avgtempF,
  num? maxwindMph,
  num? maxwindKph,
  num? totalprecipMm,
  num? totalprecipIn,
  num? totalsnowCm,
  num? avgvisKm,
  num? avgvisMiles,
  num? avghumidity,
  num? dailyWillItRain,
  num? dailyChanceOfRain,
  num? dailyWillItSnow,
  num? dailyChanceOfSnow,
  Condition? condition,
  num? uv,
}) => Day(  maxtempC: maxtempC ?? _maxtempC,
  maxtempF: maxtempF ?? _maxtempF,
  mintempC: mintempC ?? _mintempC,
  mintempF: mintempF ?? _mintempF,
  avgtempC: avgtempC ?? _avgtempC,
  avgtempF: avgtempF ?? _avgtempF,
  maxwindMph: maxwindMph ?? _maxwindMph,
  maxwindKph: maxwindKph ?? _maxwindKph,
  totalprecipMm: totalprecipMm ?? _totalprecipMm,
  totalprecipIn: totalprecipIn ?? _totalprecipIn,
  totalsnowCm: totalsnowCm ?? _totalsnowCm,
  avgvisKm: avgvisKm ?? _avgvisKm,
  avgvisMiles: avgvisMiles ?? _avgvisMiles,
  avghumidity: avghumidity ?? _avghumidity,
  dailyWillItRain: dailyWillItRain ?? _dailyWillItRain,
  dailyChanceOfRain: dailyChanceOfRain ?? _dailyChanceOfRain,
  dailyWillItSnow: dailyWillItSnow ?? _dailyWillItSnow,
  dailyChanceOfSnow: dailyChanceOfSnow ?? _dailyChanceOfSnow,
  condition: condition ?? _condition,
  uv: uv ?? _uv,
);
  num? get maxtempC => _maxtempC;
  num? get maxtempF => _maxtempF;
  num? get mintempC => _mintempC;
  num? get mintempF => _mintempF;
  num? get avgtempC => _avgtempC;
  num? get avgtempF => _avgtempF;
  num? get maxwindMph => _maxwindMph;
  num? get maxwindKph => _maxwindKph;
  num? get totalprecipMm => _totalprecipMm;
  num? get totalprecipIn => _totalprecipIn;
  num? get totalsnowCm => _totalsnowCm;
  num? get avgvisKm => _avgvisKm;
  num? get avgvisMiles => _avgvisMiles;
  num? get avghumidity => _avghumidity;
  num? get dailyWillItRain => _dailyWillItRain;
  num? get dailyChanceOfRain => _dailyChanceOfRain;
  num? get dailyWillItSnow => _dailyWillItSnow;
  num? get dailyChanceOfSnow => _dailyChanceOfSnow;
  Condition? get condition => _condition;
  num? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maxtemp_c'] = _maxtempC;
    map['maxtemp_f'] = _maxtempF;
    map['mintemp_c'] = _mintempC;
    map['mintemp_f'] = _mintempF;
    map['avgtemp_c'] = _avgtempC;
    map['avgtemp_f'] = _avgtempF;
    map['maxwind_mph'] = _maxwindMph;
    map['maxwind_kph'] = _maxwindKph;
    map['totalprecip_mm'] = _totalprecipMm;
    map['totalprecip_in'] = _totalprecipIn;
    map['totalsnow_cm'] = _totalsnowCm;
    map['avgvis_km'] = _avgvisKm;
    map['avgvis_miles'] = _avgvisMiles;
    map['avghumidity'] = _avghumidity;
    map['daily_will_it_rain'] = _dailyWillItRain;
    map['daily_chance_of_rain'] = _dailyChanceOfRain;
    map['daily_will_it_snow'] = _dailyWillItSnow;
    map['daily_chance_of_snow'] = _dailyChanceOfSnow;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['uv'] = _uv;
    return map;
  }

}

/// last_updated_epoch : 1699192800
/// last_updated : "2023-11-05 19:30"
/// temp_c : 27.0
/// temp_f : 80.6
/// is_day : 0
/// condition : {"text":"Overcast","icon":"//cdn.weatherapi.com/weather/64x64/night/122.png","code":1009}
/// wind_mph : 2.2
/// wind_kph : 3.6
/// wind_degree : 10
/// wind_dir : "N"
/// pressure_mb : 1015.0
/// pressure_in : 29.97
/// precip_mm : 0.0
/// precip_in : 0.0
/// humidity : 51
/// cloud : 0
/// feelslike_c : 25.2
/// feelslike_f : 77.4
/// vis_km : 1.8
/// vis_miles : 1.0
/// uv : 1.0
/// gust_mph : 4.7
/// gust_kph : 7.6

Current currentFromJson(String str) => Current.fromJson(json.decode(str));
String currentToJson(Current data) => json.encode(data.toJson());
class Current {
  Current({
      num? lastUpdatedEpoch, 
      String? lastUpdated, 
      num? tempC, 
      num? tempF, 
      num? isDay, 
      Condition? condition, 
      num? windMph, 
      num? windKph, 
      num? windDegree, 
      String? windDir, 
      num? pressureMb, 
      num? pressureIn, 
      num? precipMm, 
      num? precipIn, 
      num? humidity, 
      num? cloud, 
      num? feelslikeC, 
      num? feelslikeF, 
      num? visKm, 
      num? visMiles, 
      num? uv, 
      num? gustMph, 
      num? gustKph,}){
    _lastUpdatedEpoch = lastUpdatedEpoch;
    _lastUpdated = lastUpdated;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _visKm = visKm;
    _visMiles = visMiles;
    _uv = uv;
    _gustMph = gustMph;
    _gustKph = gustKph;
}

  Current.fromJson(dynamic json) {
    _lastUpdatedEpoch = json['last_updated_epoch'];
    _lastUpdated = json['last_updated'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _uv = json['uv'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
  }
  num? _lastUpdatedEpoch;
  String? _lastUpdated;
  num? _tempC;
  num? _tempF;
  num? _isDay;
  Condition? _condition;
  num? _windMph;
  num? _windKph;
  num? _windDegree;
  String? _windDir;
  num? _pressureMb;
  num? _pressureIn;
  num? _precipMm;
  num? _precipIn;
  num? _humidity;
  num? _cloud;
  num? _feelslikeC;
  num? _feelslikeF;
  num? _visKm;
  num? _visMiles;
  num? _uv;
  num? _gustMph;
  num? _gustKph;
Current copyWith({  num? lastUpdatedEpoch,
  String? lastUpdated,
  num? tempC,
  num? tempF,
  num? isDay,
  Condition? condition,
  num? windMph,
  num? windKph,
  num? windDegree,
  String? windDir,
  num? pressureMb,
  num? pressureIn,
  num? precipMm,
  num? precipIn,
  num? humidity,
  num? cloud,
  num? feelslikeC,
  num? feelslikeF,
  num? visKm,
  num? visMiles,
  num? uv,
  num? gustMph,
  num? gustKph,
}) => Current(  lastUpdatedEpoch: lastUpdatedEpoch ?? _lastUpdatedEpoch,
  lastUpdated: lastUpdated ?? _lastUpdated,
  tempC: tempC ?? _tempC,
  tempF: tempF ?? _tempF,
  isDay: isDay ?? _isDay,
  condition: condition ?? _condition,
  windMph: windMph ?? _windMph,
  windKph: windKph ?? _windKph,
  windDegree: windDegree ?? _windDegree,
  windDir: windDir ?? _windDir,
  pressureMb: pressureMb ?? _pressureMb,
  pressureIn: pressureIn ?? _pressureIn,
  precipMm: precipMm ?? _precipMm,
  precipIn: precipIn ?? _precipIn,
  humidity: humidity ?? _humidity,
  cloud: cloud ?? _cloud,
  feelslikeC: feelslikeC ?? _feelslikeC,
  feelslikeF: feelslikeF ?? _feelslikeF,
  visKm: visKm ?? _visKm,
  visMiles: visMiles ?? _visMiles,
  uv: uv ?? _uv,
  gustMph: gustMph ?? _gustMph,
  gustKph: gustKph ?? _gustKph,
);
  num? get lastUpdatedEpoch => _lastUpdatedEpoch;
  String? get lastUpdated => _lastUpdated;
  num? get tempC => _tempC;
  num? get tempF => _tempF;
  num? get isDay => _isDay;
  Condition? get condition => _condition;
  num? get windMph => _windMph;
  num? get windKph => _windKph;
  num? get windDegree => _windDegree;
  String? get windDir => _windDir;
  num? get pressureMb => _pressureMb;
  num? get pressureIn => _pressureIn;
  num? get precipMm => _precipMm;
  num? get precipIn => _precipIn;
  num? get humidity => _humidity;
  num? get cloud => _cloud;
  num? get feelslikeC => _feelslikeC;
  num? get feelslikeF => _feelslikeF;
  num? get visKm => _visKm;
  num? get visMiles => _visMiles;
  num? get uv => _uv;
  num? get gustMph => _gustMph;
  num? get gustKph => _gustKph;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = _lastUpdatedEpoch;
    map['last_updated'] = _lastUpdated;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['uv'] = _uv;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    return map;
  }

}

/// name : "New Delhi"
/// region : "Delhi"
/// country : "India"
/// lat : 28.6
/// lon : 77.2
/// tz_id : "Asia/Kolkata"
/// localtime_epoch : 1699193318
/// localtime : "2023-11-05 19:38"

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());
class Location {
  Location({
      String? name, 
      String? region, 
      String? country, 
      num? lat, 
      num? lon, 
      String? tzId, 
      num? localtimeEpoch, 
      String? localtime,}){
    _name = name;
    _region = region;
    _country = country;
    _lat = lat;
    _lon = lon;
    _tzId = tzId;
    _localtimeEpoch = localtimeEpoch;
    _localtime = localtime;
}

  Location.fromJson(dynamic json) {
    _name = json['name'];
    _region = json['region'];
    _country = json['country'];
    _lat = json['lat'];
    _lon = json['lon'];
    _tzId = json['tz_id'];
    _localtimeEpoch = json['localtime_epoch'];
    _localtime = json['localtime'];
  }
  String? _name;
  String? _region;
  String? _country;
  num? _lat;
  num? _lon;
  String? _tzId;
  num? _localtimeEpoch;
  String? _localtime;
Location copyWith({  String? name,
  String? region,
  String? country,
  num? lat,
  num? lon,
  String? tzId,
  num? localtimeEpoch,
  String? localtime,
}) => Location(  name: name ?? _name,
  region: region ?? _region,
  country: country ?? _country,
  lat: lat ?? _lat,
  lon: lon ?? _lon,
  tzId: tzId ?? _tzId,
  localtimeEpoch: localtimeEpoch ?? _localtimeEpoch,
  localtime: localtime ?? _localtime,
);
  String? get name => _name;
  String? get region => _region;
  String? get country => _country;
  num? get lat => _lat;
  num? get lon => _lon;
  String? get tzId => _tzId;
  num? get localtimeEpoch => _localtimeEpoch;
  String? get localtime => _localtime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['region'] = _region;
    map['country'] = _country;
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['tz_id'] = _tzId;
    map['localtime_epoch'] = _localtimeEpoch;
    map['localtime'] = _localtime;
    return map;
  }

}