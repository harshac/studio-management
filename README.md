In the root folder run 
```docker build . -t studio```

Go to ./studio and run  
```docker run --rm -v $(pwd):/app composer:latest install --no-dev```

To run the application:
```docker run -p 8000:8000 -v $PWD/studio:/studio studio```
