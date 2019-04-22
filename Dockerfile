FROM python:3.6

LABEL "name"="pytest-with-pipenv"
LABEL "maintainer"="Moreal <dev.moreal@gmail.com>"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="Pytest with pipenv"
LABEL "com.github.actions.description"="Run pytest with pipenv"
LABEL "com.github.actions.icon"="briefcase"
LABEL "com.github.actions.color"="blue"

# Install pipenv
ADD https://raw.github.com/kennethreitz/pipenv/master/get-pipenv.py /get-pipenv.py
RUN python /get-pipenv.py && rm /get-pipenv.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]