#!/usr/bin/env bash
#
# maclock CLI Installer
#
# MIT LICENSE - Copyright (c) May 2015 Rouble Matta
#
# Permission is hereby  granted, free of charge, to  any person obtaining a copy
# of this software and associated documentation files (the "Software"), to  deal
# in  the Software without restriction, including  without limitation the rights
# to use,  copy,  modify,  merge,  publish, distribute, sublicense,  and/or sell
# copies  of  the  Software, and  to permit  persons  to  whom  the  Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS  PROVIDED  "AS IS",  WITHOUT WARRANTY  OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT  NOT  LIMITED  TO  THE  WARRANTIES  OF MERCHANTABILITY,
# FITNESS FOR  A  PARTICULAR PURPOSE  AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS  OR  COPYRIGHT  HOLDERS  BE LIABLE FOR  ANY  CLAIM,  DAMAGES  OR OTHER
# LIABILITY,  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE  OR OTHER DEALINGS IN THE
# SOFTWARE.

APP_NAME='maclock'
URL='https://raw.githubusercontent.com/roubles/maclock/master/scripts/maclock'
INSTALL_PATH="/usr/local/bin/$APP_NAME"

function create_usrlocalbin() {
    if [ ! -d /usr/local/bin/ ]; then
        echo "Creating /usr/local/bin ..."
        mkdir -p /usr/local/bin/ 
    fi
}

function download_script() {
    echo "Downloading script from: $URL..."
    curl -sSL $URL > $INSTALL_PATH
    if [ ! -f $INSTALL_PATH ]; then
        echo "Error installing script."
        exit 4
    fi
}

function chmod_script() {
  chmod a+x $INSTALL_PATH
}

create_usrlocalbin
download_script
chmod_script
echo 'Installation complete!'
echo "Please execute the command: '$APP_NAME --help' in your terminal."
exit 0
