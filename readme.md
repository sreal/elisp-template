Source Readme
======

This is a emacs lisp project.


## Included major tools
* Cask
* ert-runner
* ecukes


## Testing

    cask exec ert-runner --reporter ert
    cask exec ecukes --reporter magnars


## Setup

    ## Cask in windows sucks. Spin up container.
    ## `~/projects` because it's auto shared by Virtua

    ## Connect to Docker
    Docker-SSH;
    # or...
    docker-machine start 'docker-machine-vm'
    docker-machine env 'docker-machine-vm' | Invoke-Expression
    docker-machine ssh 'docker-machine-vm'

    ## Start the container
    docker run -it -v /c/Users/simon/projects/:/root/projects debian /bin/bash
    # or..
    docker start `docker ps -l -q`
    docker attach `docker ps -l -q`

    ## Install Tools
    apt-get update -y;
    apt-get install python curl git emacs -y;
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python;
    export PATH=`"/root/.cask/bin:`$PATH`"

    # Install Dependencies
    cd /root/projects/PROJECTNAME/src/elisp/$name/
    cask install


## Contact
* Homepage: http://sreal.github.io/jekyll
* e-mail: simon.richard.eames@gmail.com
* Twitter: [@sreal](https://twitter.com/sreal "sreal on twitter")

----
[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=sreal&url=https://bitbucket.org/sreal/sim-frost)
----
