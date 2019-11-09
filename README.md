# run-proj-script
Repository with run.sh file which builds, runs and cleans cmake projects.


*Usage
You provide executable name(optional) and output directory(obligatory) directly to the file.
When running the script command line argument one determines script's behaviour.
If argument is b, project is build and output directory is created, if needed.
If argument is br, project is built just like in the first case and run afterwards.
If argument is r, project is run if output directory exists and if the output directory does not exist, project is built and then run.
If argument is c, output directory is removed from the file system.
