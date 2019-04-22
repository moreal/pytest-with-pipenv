FROM kennethreitz/pipenv

LABEL "name"="pytest-with-pipenv"
LABEL "maintainer"="Moreal <dev.moreal@gmail.com>"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="Pytest with pipenv"
LABEL "com.github.actions.description"="Run pytest with pipenv"
LABEL "com.github.actions.icon"="briefcase"
LABEL "com.github.actions.color"="blue"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]