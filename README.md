# Exercism repository template

Automate installation of everything required for the solving
exercises on exercism.

## How to start

### CLI

Docker is the only required installation.

0. Use this repository as a template, fork it or clone it ❤️
1. Run `bin/configure <YOUR_TOKEN>` (you can get your token in [settings][1])
2. Download your exercise, e.g. `bin/exercism download --track=java --exercise=hello-world`
3. Solve the exercise in the downloaded folder, e.g. in `java/hello-world`.
4. Run tests `bin/test java/hello-world`
5. Submit your solution `bin/submit java/hello-world`

### DevContainers (vscode, intellij idea, codespaces, gitpod, dev container cli)

0. Use this repository as a template, fork it or clone it ⭐️
1. Open track directory in a supported tool
2. Follow the workflow of your tool of choice. E. g. vscode suggest to reopen \
    the track in a container

[1]: https://exercism.org/settings/api_cli
