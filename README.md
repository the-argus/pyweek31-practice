# Pyweek 31 Practice Project

## Setup with virtual environment
Clone this repository and enter directory.

Create and activate a virtual environment:<br>
https://docs.python.org/3/tutorial/venv.html

Install requirements with:<br>
`pip install -r requirements.txt`

Run game: <br>
`python run_game.py`

## Setup with docker
Install docker: <br>
https://docs.docker.com/get-docker/

Create image: <br>
`docker build --rm -t pyweek .`

Start container and run app: <br>
`docker run -ti --net=host -e DISPLAY -v /tmp/.X11-unix pyweek python3 app.py`

If that doesn't work I used this link for reference: <br>
https://www.tutorialspoint.com/running-gui-applications-on-docker-in-linux
