# DevOps Project - QA Consulting

## Project Deliverables
You are to design and build a CI pipeline including Java, Maven, Git, Jira, Jenkins, Puppet and Vagrant. As a group, you are to create a virtualised environment making full use of Vagrant and the Vagrantfile to automate the process of provisioning and installing the applications listed above.
Your project will include a readme file, of the exact steps that the trainer must take to start up your virtualised project. If that contains just one command, or twenty they must be included.
Once this is done, you are to use the skills developed in your Cloud Foundry training to deploy your Python application with any dependencies to the cloud.
You will also include the additional requirements, in your Git Repo (or flash drive) when delivering this to your trainer.
You are to construct a presentation for this and deliver said presentation at the end as another deliverable.


## Team Members

Are project team consisted of the following members;
- Edward Stevens
- Thomas Reilly
- Ameen-Ul Haq
- Kayleigh Bellis
- Gemma Irving
- Chibuzo Nwobiri

## Installing Git
### Purpose
In essence the Git tool will be used for the management of versions of the source code. 

### Installation instructions
You will need to specify unique details custom to you the user as a substitute of the angular brace (as a paramter).

**1. Run GitBash**
   - If Gitbash is already installed (discoverable in all programs).
<p align="center">
    _Run GitBash_
</p> <br />
   - To download and install Git
<p align="center">
    _Download and install it from https://git-for-windows.github.io/_
</p> <br />
   - Alternative you can download from the source. You can use the following link as any guide;
<p align="center">
    _https://git-scm.com/book/en/v2/Getting-Started-Installing-Git_
</p> <br />

**2. Setting up the directory** 

To create a bidirectional link between the chosen local directory and the Github repository. You can use either of the following options;

 - Navigating to an exisitng directory
<p align="center">
    _CD + `<DIRECTORY PATH>`_
</p> <br />

 - Create a new directory and then navigate to it
<p align="center">
    _MKDIR + `<NEW DIRECTORY NAME>` + && CD + `<DIRECTORY PATH>`_
</p> <br />

**3. Initialising Git**
  - In the current directory
<p align="center">
    _GIT INIT_
</p> <br />

  - Similarly, we can use the following to start recording revisions of the project in a specified directory.
<p align="center">
    _GIT INIT + `<DIRECTORY PATH>`_
</p> <br />

**4. Clone directory**
  - In the current directory
<p align="center">
    _GIT CLONE + `<REPOSITORY LINK>`_
</p> <br />

  - Similarly, we can mirror the repository locally without navigating manually through the following.
<p align="center">
    _GIT CLONE + `<REPOSITORY LINK>` + `<DIRECTORY PATH>`_
</p> <br />

A repository link can be found by following the image example below;
<!--<div style="text-align:center"><img src="https://raw.githubusercontent.com/ameenhaq/VernacularPlaceNameFinder-Project/master/img/3.png" width="600" height="400" /></div>-->
<div><img  src="https://raw.githubusercontent.com/KayleighB94/DevOpsProject/master/img/1.png"  /></div>

## Setting up Vagrant
### Purpose
To automate machine provisioning and installation of applications. 

### Installation instructions
**0. Prerequisite**
  - Git is installed
  - Github repository has successfully been cloned

**1. Creating a Vagrant Folder**
Copy the exisitng Vagrant folder and rename it 'vagrant<your name>' and save it in the same directory. 
<p align="center">
    _cp -R + `<EXISTING FOLDER>` + `<NEW FOLDER NAME>`_
</p> <br />
This can also be achieved manually.

**2. Creating a Vagrant Folder**
We can now manually open the vagrant file located in your new vagrant directory and edit the Ip address
<p align="center">
    _192.168.1. + `<a free IP>`_
</p> <br />

You can discover a free IP using the 'ping' command followed by the IP desired in the command prompt. You must then change the hostname to a unique name.

<p align="center">
    _agent + `<yourname or some name>` + .qac.local_
</p> <br />

**3. Run Vagrant**
Now we run vagrant using the following
<p align="center">
    _vagrant up_
</p> <br />

### Puppet
The bootstrap agent installs puppet automatically thus there is no needed to use seperate command to install puppet


## Setting up Master and Agent on Ubuntu
**1. Connect Agent to Master**
<p align="center">
    _sudo agent --test --server=ammaster3.qac.local_
</p> <br />
This pulls everything that needs to be provisioned - python, jenkins server, maven etc will be installed using this command.



<!--**Steps to run the virtualised project**-->


<!--- Open gitbash and from the command line type-->
 
<!--cd Documents-->

<!--git clone https://github.com/KayleighB94/DevOpsProject.git-->

<!--cd Vagrant-->

<!--Vagrant up-->

<!--- This will setup the virtual machines-->

