#!/bin/bash

imageDir="datasets/dino"
stitchDir="stitches/dino"

./mve/apps/makescene/makescene -i datasets/dino stitches/dino
./mve/apps/sfmrecon/sfmrecon stitches/dino
./mve/apps/dmrecon/dmrecon -s2 stitches/dino
./mve/apps/scene2pset/scene2pset -F2 stitches/dino stitches/dino/pset-L2.ply
./mve/apps/fssrecon/fssrecon stitches/dino/pset-L2.ply stitches/dino/surface-L2.ply
./mve/apps/meshclean/meshclean -t10 stitches/dino/surface-L2.ply stitches/dino/surface-L2-clean.ply