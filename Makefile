##
# Utility Makefile for [HashDoc][hashdoc] organization documentation.
#
# @author Andrew Vaughan [gh:andrewvaughan] <hello@andrewvaughan.io>
# @since  0.1.0




## -------------------------------------------------------------------------------------------------------------------
# @section Configuration Parameters


##
# Defaults for various parameters that can be provided. Can be overridden with an environment variable.
#
# @type {string=4040}
#
# @access protected
# @since  0.1.0
JEKYLL_PORT ?= 4040




## -------------------------------------------------------------------------------------------------------------------
# @section Constants
# @access  private


##
# Configure terminal colors, based on the operating system.
#
# @var {string=\e} COL_CHAR - The escape character to use for color on this system.
# @const
#
# @access private
# @since  0.1.0
ifeq ($(UNAME_S),Darwin)
COL_CHAR   := \x1B
endif

COL_CHAR   ?= \e


##
# Terminal value for bold text.
#
# @type {string=[1m}
# @const
#
# @access private
# @since  0.1.0
COL_BOLD   := ${COL_CHAR}[1m


##
# Terminal value for inverted text.
#
# @type {string=[7m}
# @const
#
# @access private
# @since  0.1.0
COL_INVERT := ${COL_CHAR}[7m


##
# Terminal value to reset all terminal text changes.
#
# @type {string=[0m}
# @const
#
# @access private
# @since  0.1.0
COL_RESET  := ${COL_CHAR}[0m




## -------------------------------------------------------------------------------------------------------------------
# @section Utility Functions
# @access private


##
# Print a formatted title header to console.
#
# @access private
# @since  0.1.0
define _title
	@printf "\n$(COL_BOLD)$(COL_INVERT)%-80s$(COL_RESET)\n\n" "$(strip $(1))"
endef




## -------------------------------------------------------------------------------------------------------------------
# @section Main Targets


.PHONY: all server check

##
# Default make target to build the server.
#
# @since 0.1.0
all: server


##
# Runs the Jekyll server locally and opens a browser to the documentation.
#
# @param {int=4040} JEKYLL_PORT - The port to launch the local server on.
#
# @since 0.1.0
server: dependencies
	$(call _title, Launching Jekyll server at http://localhost:$(JEKYLL_PORT) with live-reload enabled...)
	@bundle exec jekyll serve --port $(JEKYLL_PORT) --watch --livereload --open-url




## -------------------------------------------------------------------------------------------------------------------
# @section Test Utilities


.PHONY: test test-meta test-docs

##
# Runs the entire suite of tests for this repository, including linting and functional testing.
#
# @since 0.1.0
test: test-meta test-docs


##
# Runs meta tests on expected documentation and resources for this repository.
#
# @since 0.1.0
test-meta: dependencies
	@echo "@TODO - test-meta"


##
# Runs all tests against the documentation for HashDocs.
#
# @since 0.1.0
test-docs: dependencies
	@echo "@TODO - test"




## --------------------------------------------------------------------------------------------------------------------
# @section Dependency Management


.PHONY: dependencies

##
# Intermediate filename so dependencies are not run multiple times.
#
# @type   {string}
# @access private
DEPENDENCY_SINGLETON := $(shell mktemp -u -t .hashdocs.github.io-dependencies-)


##
# Installs dependencies required to develop on this project locally.
#
# @since 0.1.0
dependencies: $(DEPENDENCY_SINGLETON)


##
# File created to mark when dependencies have been installed, so that if dependencies are called multiple times in one
# Make request, dependencies are skipped on subsequent calls.
#
# @access private
# @since  0.1.0
$(DEPENDENCY_SINGLETON): Gemfile
	@if ! [ -x "$(shell command -v gem)" ]; then \
		echo "The executable 'gem' was not available in your PATH. Please install Ruby on your platform to continue. Exiting."; \
		exit 1; \
	fi

	$(call _title, Installing bundler dependency manager)
	@gem install bundler

	$(call _title, Installing development dependencies)
	@bundle install

	@touch $(DEPENDENCY_SINGLETON)




## --------------------------------------------------------------------------------------------------------------------
# @section Cleanup


##
# Cleanup all temporary files created with other commands.
#
# @since 0.1.0
clean:
	rm -rf *.hashdocs.github.io-dependences-*
	rm -rf _site
	rm -rf .sass-cache
	rm -rf .jekyll-cache
	rm -rf .jekyll-metadata





##
# @references
#
# [hashdocs]:  https://hashdocs.github.io
