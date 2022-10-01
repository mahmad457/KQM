
# KQM 


`KQM` (kinetic and Q-matrix) is a Matlab package containing tools for testing the transition of protein conformations using interconversion-independent and interconversion-dependent kinetic models as well as Q-matrix.

- [Overview](#overview)
- [System Requirements](#system-requirements)
- [Installation Guide](#installation-guide)
- [Demo](#Demo)
- [Instruction](#Instruction)
- [License](#license)


# Overview
``KQM`` a testing package mainly used to check the conformational transition during protein-protein binding. This package uses the interconversion-independent and interconversion-dependent kinetic model to test the hypothesis. Interconversion-independent model assumes no transitions between two protein-captured substates, C1 and C2. However, interconversion-dependent model assumes transitions between protein-captured substates. These tests were benchmarked using the typical EGFR protein, it will have a convenient location for users if they would prefer to utilize those tests instead. You can also extract the transition rate constants using these  models. The package can be installed on various platforms (e.g. macOS, Windows) from GitHub.


# System Requirements
`KQM` package requires only a standard computer with sufficient RAM to support the operations.

## Software requirements
### OS requirements
This package is supported for *Windows* and *macOS*. The package has been tested on the following system:
+ Windows 10 Version 21H2 x64-based Systems 


### Matlab Dependencies
`KQM` mainly depends on the Matlab scientific stack.

```
f2State_Dep_lg
f2State_Ind_lg
negLS_Dep
negLS_Ind
```

# Installation Guide:
```
```
### Install from Github
```
git clone https://github.com/mahmad457/KQM
Run KQM
```
- SUDO, if required
- Because this program is written in Matlab, you do not need to install etxra plugin to read/write functions.
-  package install time on standard computer, 5-10 min

# Demo:
- To install and run from scratch:
  - Install [Matlab](https://www.mathworks.com/help/install/install-products.html)
     -This takes 10-15 mins
  - Navigate to the KQM directory and run KQM
  ->> cd \my\KQM\directory\
   ->> KQM
  - Change the desired parameters as per your need and check the output


# Instructions

-Here, analyte-captured time were denoted by dwell time

 -You need to replace the desired concentration of your protein analyte.
 
 -If you are unhappy with the quality of the output, try changing the main parameters.


# License
This program is free; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation. This program is distributed in the hope that it will be useful.


