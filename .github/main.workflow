workflow "on push" {
    on = "push"
    resolves = ["Pytest"]
}

action "Pytest" {
    uses = "moreal/pytest-with-pipenv@master"
}