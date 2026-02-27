# Doggle
Doggle is a privacy-based browser so that your data doesn't get sold by Google, Microsoft, anything like that.
So Doggle is a Python Browser written with PyQt5 and uses Docker to make it secure. 
If you are very paranoid, you can use Linode and open up a server that you can SSH into and instead run the provided stuff inside.
So you need your prerequisites.
You will need:
* Docker or Git
* PyQt5
* Python 3

And that's it. Barely anything.
So, how do you initiate your browser?
You can run Docker.
```bash
docker build -t doggle-browser .
docker run -it \
    --env="DISPLAY=$DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --network=host \
    doggle-browser
```

Or clone the GitHub repository.
```bash
git clone github.com/akishore15/Doggle.git
cd Doggle
python3 doggle.py
```

More methods will be coming soon, but install it like this for now.

Side note: The URL Bar only accepts URLs. Later, it will be fixed. 
Another side note: This reminds me that I will be adding features like bookmarking soon.

If you read this entire document, I'm impressed.
