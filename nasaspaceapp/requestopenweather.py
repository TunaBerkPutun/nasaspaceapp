import requests

API_KEY = "ec579e6e855b4fac41b29fd43e90c257"
URL = "http://api.openweathermap.org/data/2.5/weather"
DEFAULT_UNIT = "metric"
DEFAULT_LANG = "en"
CITY_ID = "745042" #istanbulun id'si

class Weather:
    def __init__(self, key, id, url, unit = DEFAULT_UNIT, lang = DEFAULT_LANG):
        self.PARAMS = {"id": id, "appid": key, "unit": unit, "lang": lang}
        self.r = requests.get(url = url, params=self.PARAMS).json()

    def returnWeather(self):
        return self.r

        
hava = Weather(API_KEY, CITY_ID, URL)
print(hava.returnWeather())