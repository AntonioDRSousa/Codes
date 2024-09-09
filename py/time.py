import time

tsec = 0

def my_time():
    global tsec
    tsec+=1
    seconds = tsec%60
    minutes = (tsec//60)%60
    hours = (minutes//60)
    time_string =  f"{hours:02}:{minutes:02}:{seconds:02}"
    print(time_string)
    time.sleep(1)

while True:
    my_time()
