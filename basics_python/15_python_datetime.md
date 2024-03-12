# python has got datetime module to handle date and time

from datetime import datetime 

print(dir(datetime))

# With dir or help built-in commands it is possible to know the available functions in a certain module.

# Getting datetime Information

from datetime import datetime
now = datetime.now()
print(now)
day = now.day
month = now.month
year = now.year
hour = now.hour
minute = now.minute
second = now.second
timestamp = now.timestamp()
print(day, month, year, hour, minute)
print("timestamp", timestamp)
print(f"{day}/{month}/{year}, {hour}:{minute}")

# Formatting Date Output Using strftime

new_year = datetime(2020, 1, 1)
print(new_year)
day = new_year.day
month = new_year.month
year = new_year.year
hour = new_year.hour
minute = new_year.minute
second = new_year.second
print(day, month, year, hour, minute)
print(f"{day}/{month}/{year}, {hour}:{minute}")

# Formatting Date time using strftime

now = datetime.now()
t = now.strftime("%H:%M:%S")
print("time:", t)
time = now.strftime("%T")
print(time)
time_one = now.strftime("%m/%d/%Y, %H:%M:%S")
print("time one:", time_one)
time_two = now.strftime("%d/%m/%Y, %H:%M:%S")
print("time two:", time_two)

# string to time Using strptime

date_string = "5 December, 2019"
print("date_string =", date_string)
date_object = datetime.strptime(date_string, "%d %B, %Y")
print("date_object =", date_object)

# Using date from daterime

from datetime import date
d = date(2020, 1, 1)
print(d)
print("current date:", d.today())

today = date.today()
print("Current year:", today.year)
print("current month:", today.month)
print("Current day: ", today.day)

# Time Objects to represent time

from datetime import time 

a = time()
print("a =", a)

b = time(10, 30, 50)
print("b =", b)

c = time(hour=10, minute=30, second=50)
print("c =", c)

d = time(10, 30, 50, 200555)
print("d =", d)

# Difference between two points in tieme using datetime

today = date(year=2024, month=1, day=18)
new_year = date(year=2025, month=1, day=1)
time_left_for_newyear = new_year - today
print("time left for new year: ", time_left_for_newyear)

t1 = datetime(year = 2024, month = 1, day = 18, hour = 10, minute = 50, second = 20)
t2 = datetime(year = 2025, month = 1, day = 1, hour = 0, minute = 0, second = 0)
diff = t2 -t1
print("time left for new year:", diff)

# Difference between two points in time using timedelta

from datetime import timedelta
t1 = timedelta(weeks=12, days=10, hours=4, seconds=20)
t2 = timedelta(days=7, hours=5, minutes=3, seconds=30)
t3 = t1 - t2
print("t3 =", t3)






































#basics_python
