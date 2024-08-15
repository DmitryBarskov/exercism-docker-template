# Exercism repository template

The idea is to automate installation of everything required for the solving
exercises on exercism.

## How to start

You must have docker installed and running.

1. Run `bin/configure <YOUR_TOKEN>` (you can get your token in [settings][1])
2. Download your exercise, e.g. `bin/exercism download --track=java --exercise=hello-world`
3. Solve the exercise in the downloaded folder, e.g. in `java/hello-world`.
4. Run tests `bin/test java/hello-world`
5. Submit your solution `bin/submit java/hello-world`

[1]: https://exercism.org/settings/api_cli
