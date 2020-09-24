#! /bin/bash

DIR=$(cd `dirname $0` && pwd)
ln -sf $DIR/.editorconfig $HOME/.editorconfig
ln -sf $DIR/.lintr $HOME/.lintr
ln -sf $DIR/.radian_profile $HOME/.radian_profile
ln -sf $DIR/.Rprofile $HOME/.Rprofile
