# qr8_standard_deviation coding exercise
A Ruby on Rails api for calculating the standard devation of an array of values.  
The previously stored calculations can be viewed via a simple standalone react web application.

## Starting the api
from the /standard_deviation_api directory run:
```
bundle install
rake db:migrate
rails s
```
The api can be found at localhost:3000 by default

### suported api methods

```GET localhost:3000/standard_deviations ```

to retrieve all stored standard devation calculations

example json response body
```
[
    {
        "id": 5,
        "values": "[1, 2, 3]",
        "result": "0.8165",
        "created_at": "2020-01-24T21:39:14.241Z",
        "updated_at": "2020-01-24T21:39:14.241Z"
    },
    {
        "id": 6,
        "values": "[1.11, 2.22, 3.33]",
        "result": "0.9063",
        "created_at": "2020-01-24T21:39:31.636Z",
        "updated_at": "2020-01-24T21:39:31.636Z"
    }
]
```

```POST localhost:3000/standard_deviations```

to calculate a new standard deviation

Example json request body
```
{
        "values": [1.11, 2.22, 3.33]
}
```

## Starting the web application
from the /standard_deviation_web directory run:
```
npm install
npm start
```
The the web application can be found at localhost:3080 by default
