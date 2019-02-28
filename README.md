## A Simple Utility for Script Management ### 

To use: 

Step 1: Add Reload Function to the head of your .bash_profile

reload ()
{
    echo "Reloading Bash Profile";
    source $HOME/.bash_profile
}

Step 2: Point an alias to the script files
Ex. `alias srun='source $SCRIPTDIR/choose-script.sh'`

Step 3: 
Usage: Type `srun` in terminal

![Example](sample.jpg)

Some tools available:
* A semi-persistent enviornmental varaible exporter
* Quick access to a "Main" or "Working directory"
* A color viewer