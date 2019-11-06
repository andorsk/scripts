import os
import sys
from datetime import datetime
import pytz


timezone = os.environ.get('TZ', 'GMT')


def red(text):
    print('\033[31m', text, '\033[0m', sep='')


def green(text):
    print('\033[32m', text, '\033[0m', sep='')


def convert_date_to_epoch(datestr):
    utc_dt = datetime.strptime(datestr, '%Y-%m-%dT%H:%M:%S.%fZ')
    timestamp = (utc_dt - datetime(1970, 1, 1)).total_seconds()
    green(f"Converted {datestr} to {timestamp}")

def convert_timestamp_to_date(timestamp):
    tstring = timestamp
    try:
        timestamp = float(timestamp)
    except:
        raise

    if len(tstring) == 10:
        timefmt = 'seconds'
    elif len(tstring) == 13:
        timefmt = 'milliseconds'
        timestamp = timestamp / 1000
    else:
        red(f"""Was not able to assume timestamp format.
Please use milliseconds or seconds. There was {len(tstring)} digits""")
        return

    date = datetime.fromtimestamp(timestamp, tz=pytz.timezone(timezone))
    message = f"{tstring} is {date.strftime('%Y-%m-%dT%H:%M:%S.%fZ')} assuming {timefmt}"
    green(message)


def parse_args():
    if len(sys.argv) < 2:
        print("Please add date")
        return
    try:
        convert_timestamp_to_date(sys.argv[1])
    except ValueError:
        convert_date_to_epoch(sys.argv[1])


parse_args()
