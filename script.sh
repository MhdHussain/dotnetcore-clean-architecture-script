# we initialize the dotnet core solution
dotnet new sln -o $1

#changing directory to the solution
cd $1

# creating the clean architecture layers (projects)
dotnet new classlib -n Domain
dotnet new classlib -n Application
dotnet new classlib -n Persistance
dotnet new webapi -n API

# The domain layer is independant

# the application layer and the persistance layer are at the same level and they both depend on
# the domain layer
# the application layer also depeends on the persistance layer
cd Application/ && dotnet add reference ../Domain && cd ..
cd Application/ && dotnet add reference ../Persistance && cd ..
cd Persistance/ && dotnet add reference ../Domain &&cd ..

# The webapi layer depepends on the application layer
cd API/ && dotnet add reference ../Application && cd ..

# initializing git repository
git init

git add .
git commit -m "Initialized ${1} project with clean architecture"
#creating the dev and test branches
git checkout -b dev
git checkout master
git checkout -b test
git checkout master