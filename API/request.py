import requests
url = 'http://127.0.0.1:5000/car-plate'
my_img = {'image': open('plate4.jpg', 'rb')}
r = requests.post(url, files=my_img)

# convert server response into JSON format.
with open("test.txt", "w", encoding='utf-8') as f:
    f.write(str(r.json()))