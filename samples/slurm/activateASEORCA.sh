#!/bin/bash

module purge
module load StdEnv/2020 gcc/10.3.0 openmpi/4.1.1
module load orca/5.0.4
module load python/3.11.5 scipy-stack

if [[ $(module list | grep 'intel/2023.2.1') == ""  || $(module list | grep 'python/3.11.5') == "" || $(module list | grep 'orca/5.0.4') == "" ]]; then
	echo "Your modules are not loaded correctly for ORCA. Cancelling job... "
	exit 1
else
	echo "Your modules are loaded correctly for ORCA. Proceeding to activate ASE..."
	export PATH="${EBROOTORCA}/:$PATH"
fi

echo "Changing directory to ~/software/python/virtualenvs/ase ..."
cd ~/software/python/virtualenvs/ase || exit

function load_ase() {
	source ~/software/python/virtualenvs/ase/bin/activate
}

if [[ $(pwd | grep 'ase') == */software/python/virtualenvs/ase ]]; then
	pwd
	echo "You are in the right location! Activating ase..."
	load_ase
else
	echo "Please ensure you have the correct directory struture (~/software/python/virtualenvs/ase)..."
	echo "Exiting"
	exit 1
fi
