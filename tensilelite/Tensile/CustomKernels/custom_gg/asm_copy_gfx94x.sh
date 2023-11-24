#!/bin/bash

for asm in *short*.s; do
    inFileName=$(echo $asm | cut -d "." -f 1)

    cp $inFileName.s $inFileName"_gfx941.s"
    sed -i "s/gfx942/gfx941/g" $inFileName"_gfx941.s"
    sed -i "s/$inFileName/$inFileName"_gfx941"/g" $inFileName"_gfx941.s"

    mv $inFileName.s $inFileName"_gfx942.s"
    sed -i "s/$inFileName/$inFileName"_gfx942"/g" $inFileName"_gfx942.s"
done