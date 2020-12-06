# Dotnet Core Clean Architecture solution setup

## What this script does

    - Creates a solution with the passed name
    - Creates 4 projects namely (Application , Domain , Persistance , API)
    - All projects are classlib type except the API project, it is of the webapi type

    - The Domain project is independant
    - The Application project depends on the Domain and the Persistance projects
    - The Persistance project depends on the Domain project
    - The API project depends on the Application project

    - The script also initializes a git repository
    - It also creates 2 branches a test branch and a dev branch
