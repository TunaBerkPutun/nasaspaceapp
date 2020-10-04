import pandas as pd
import meteomatics.api as api
import datetime as dt
import seaborn as sns
import matplotlib.pyplot as plt

USERNAME = "roboun_erkan"
PASSWORD = "Us5OWNh4B8xmd"

fires = [
    [35.38, -120.45, 2020, 8, 1, 2020, 8, 8, "Pond"],
    [40.65, -120.58, 2020, 8, 2, 2020, 8, 10, "North"],
    [35.34, -118.72, 2020, 8, 3, 2020, 8, 16, "Stagecoach"],
    [36.24, -121.31, 2020, 8, 18, 2020, 8, 28, "Dolan"],
    [38.04, -122.74, 2020, 8, 19, 2020, 9, 19, "Woodward"],
    [36.23, -118.8, 2020, 8, 19, 2020, 9, 30, "SQF Complex"],
    [38.02, -119.94, 2020, 8, 20, 2020, 8, 30, "Moc"],
    [38.58, -119.8, 2020, 8, 20, 2020, 9, 27, "Slink"],
    [37.916667, -118.866667, 2020, 8, 20, 2020, 9, 27, "Slink"]
]


class Meteo:
    def __init__(self, fire_data):
        username = USERNAME
        password = PASSWORD
        lat = fire_data[0]
        lon = fire_data[1]
        startdate = dt.datetime(
            fire_data[2], fire_data[3], fire_data[4]) - dt.timedelta(days=3)
        enddate = dt.datetime(fire_data[5], fire_data
                              [6], fire_data[7]) + dt.timedelta(days=3)
        interval = dt.timedelta(days=1)
        parameters = ["t_2m:C", "relative_humidity_2m:p"]
        self.dataframe = api.query_time_series(
            [(lat, lon)], startdate, enddate, interval, parameters, username, password)

    def plot(self):
        sns.lineplot(x="validdate", y="relative_humidity_2m:p",
                     data=self.dataframe)
        plt.show()


fire1 = Meteo(fires[1])
fire1.plot()
