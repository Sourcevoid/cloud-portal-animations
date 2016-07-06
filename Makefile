# *******************************************************
# All build targets
all: prerequisites shelf 

# Setup shell
SHELL := /bin/bash

# *******************************************************
# Targets
prerequisites:
	@mkdir -p public/
	@cd hello-prerequisites && convert -delay 120 -loop 0 *.png hello-prerequisites.gif
	@mv hello-prerequisites/hello-prerequisites.gif public/

shelf: 
	@mkdir -p public/
	@cd hello-shelf/github && convert -delay 120 -loop 0 *.png hello-shelf-github.gif
	@cd hello-shelf/archive && convert -delay 120 -loop 0 *.png hello-shelf-archive.gif
	@mv hello-shelf/github/hello-shelf-github.gif public/
	@mv hello-shelf/archive/hello-shelf-archive.gif public/

clean: 
	rm -rf public

