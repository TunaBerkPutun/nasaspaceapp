import requests

API_KEY = "ec579e6e855b4fac41b29fd43e90c257"
URL = "http://api.openweathermap.org/data/2.5/weather"
DEFAULT_UNIT = "metric"
DEFAULT_LANG = "en"

class Weather:
    def __init__(self, key, id, url, unit = DEFAULT_UNIT, lang = DEFAULT_LANG):
        self.PARAMS = {"id": id, "appid": key, "unit": unit, "lang": lang}
        self.r = requests.get(url = url, params=self.PARAMS)
        


def getCurrentWeather(key, id, url, unit = DEFAULT_UNIT, lang = DEFAULT_LANG):
    PARAMS = {"id": id, "appid": key, "unit": unit, "lang": lang}
    r = requests.get(url = url, params=PARAMS)
    return r.json()

print(getCurrentWeather(API_KEY, 745076, URL))