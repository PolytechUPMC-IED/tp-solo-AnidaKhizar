#!/bin/bash

./id3v2 -L | grep $1 | cut -d":" -f1 
