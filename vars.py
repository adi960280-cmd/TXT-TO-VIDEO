# DON'T add anything here just add in render's secret or env section 
from os import environ

API_ID = int(environ.get("API_ID", "29115102"))
API_HASH = environ.get("API_HASH", "1a331db2b00e9d2decaa9c7276449eb6")
BOT_TOKEN = environ.get("BOT_TOKEN", "8307135566:AAGsSqM2LdcnXVMesJWCYbfE0o10oJw-vT0")

