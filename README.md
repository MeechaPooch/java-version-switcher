# java-version-switcher
A Command line utility for switching between Java installs on Mac. The selected version persists in new shell instances. (see [use cases](#use-cases))

# Install Command:

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/MeechaPooch/java-version-switcher/main/install.sh)" && . ~/.bashrc`

Run this in a shell terminal ^ (stolen from [homebrew](https://brew.sh/) lol)

# Demo
![](https://raw.githubusercontent.com/MeechaPooch/java-version-switcher/main/demo.gif)
Demo recorded with [terminalizer](https://github.com/faressoft/terminalizer)

# Use Cases
## FRC Robot Software development on an M1 ARM Chip Mac:

I use `switch` to toggle between x86-built java-11 for running FRC gradle tasks on my m1 mac and then arm-built java-18 for school java projects. Gradle tasks only work when I set my java version using `switch` to `Java 11.0 [x86_64]`.