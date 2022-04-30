import logging
try:
    import requests
    HAS_REQUESTS = True
except ImportError:
    HAS_REQUESTS = False

log = logging.getLogger(__name__)

__virtual_name__ = 'weather'

def __virtual__():
    '''
    Only load weather if requests is available
    '''
    if HAS_REQUESTS:
        return __virtual_name__
    else:
        return False, 'The weather module cannot be loaded: requests package unavailable.'

def get(coordinates=None):
    '''
    Gets the Current Weather

    CLI Example::

        salt '*' weather.get lat,long
    '''
    log.debug(coordinates)
    return_value = {}
    coordinates = coordinates.split(',')
    return_value = _make_request(coordinates[0],coordinates[1])
    return return_value

def _make_request(lat,long):
    '''
    The function that makes the request for weather data from the National Weather Service.
    '''
    request = requests.get('https://api.open-meteo.com/v1/forecast?latitude='+str(lat)+'&longitude='+str(long)+'&current_weather=true')
    conditions = {
        "time:": request.json()["current_weather"]["time"],
        "temperature": round(request.json()["current_weather"]["temperature"], 1)
    }
    return conditions

