# devsu_api_demoblaze_karate

# How execute project

## Use Gradle

Open a command window and run:

MacOs:
./gradlew test

Windows:
gradlew test

## Running tests by tags, be aware of the Operating System

    ./gradlew clean test -Dtags='<TAG>'

## Viewing the reports

Both of the commands provided above will produce a Serenity test report in the `target/cucumber-html-reports/overview-features.html` directory. 

Note that you can also check the report in the following path `build/karate-reports/karate-summary.html`

Go take a look!