import serial, time #pip install pyserial ile indirebilirsin

PORT = "COM1" #bunu arduino ideden falan bakıp arduinoya göre değiştir
BAUDRATE = "9600" #bunu arduino ideden falan bakıp arduinoya göre değiştir

serial_port = serial.Serial(port=PORT, baudrate=BAUDRATE,timeout=0.1)
time.sleep(1) #bağlantı için 1s bekleme

while True:
    data = serial_port.readline() #readline \n görene kadar okuyo o yüzden arduinoda serial.print() kullanırken sonuna \n ekle veya println kullan
    if data:
        print(data)