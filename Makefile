# Project : Data Central
# -----------------------------------------------------------------------------
# Author : Ricardo Lafuente <r@manufacturaindependente.org>
# -----------------------------------------------------------------------------
# License : GNU General Public License
# -----------------------------------------------------------------------------
# This file is part of the Data Central package.
#
# Data Central is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Data Central is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Data Central. If not, see <http://www.gnu.org/licenses/>.

# This is *heavily* based on Edouard Richard's excellent Makefiles.
# See https://github.com/jplusplus/resonate2014/blob/master/Makefile for
# the basis from where this file was created.

# your SSH target dir for rsync
SSH_PATH = "wf:~/webapps/centraldedados/"
# server port for local server
SERVER_PORT = 8002
MAIN_SCRIPT = $(wildcard generate.py)
OFFLINE_FLAG = "--offline"

build:
	. `pwd`/.env/bin/activate; python $(MAIN_SCRIPT)

build-offline:
	. `pwd`/.env/bin/activate; python $(MAIN_SCRIPT) $(OFFLINE_FLAG)

install:
	virtualenv .env --no-site-packages --distribute --prompt=\(datacentral\)
	. `pwd`/.env/bin/activate; pip install -r requirements.txt
	cp settings.conf.sample settings.conf

serve:
	. `pwd`/.env/bin/activate; cd _output && livereload -p $(SERVER_PORT)

upload:
	rsync --compress --progress --recursive --update --delete _output/ $(SSH_PATH)

clean:
	rm -fr repos _output

