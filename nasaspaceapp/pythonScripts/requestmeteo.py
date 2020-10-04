import datetime as dt
import meteomatics.api as api

username = "_puetuen"
password = "7fcPpHIVl8y4S"

now = dt.datetime.utcnow().replace(hour=0, minute=0, second=0, microsecond=0)
startdate_ts = now
enddate_ts = startdate_ts + dt.timedelta(days=1)
interval_ts = dt.timedelta(hours=1)

coordinates_ts = [(47.25,9.34), (30,-4)]
parameters_ts = ['t_2m:C', "forest_fire_warning:idx", "fosberg_fire_weather_index:idx", 'precip_1h:mm', "wind_speed_10m:ms","wind_dir_10m:d" ,"msl_pressure:hPa"]


print("time series:")
try:
    df_ts = api.query_time_series(coordinates_ts, startdate_ts, enddate_ts, interval_ts,
                                  parameters_ts, username, password)
    print (df_ts.head())
except Exception as e:
    print("Failed, the exception is {}".format(e))