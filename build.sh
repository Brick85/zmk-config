#!/bin/env bash
cd ~/zmk
mkdir -p build
. ./venv-zmk/bin/activate
cd zmk/app
west build -b nice_nano_v2 -d build/q_left -- -DSHIELD=qily60_left -DZMK_CONFIG=/home/vital/zmk/zmk-config/config -DZMK_EXTRA_MODULES=/home/vital/zmk/zmk-config
cp build/q_left/zephyr/zmk.uf2 ../../build/qily60_left.uf2
# west build -b nice_nano_v2 -d build/q_right -- -DSHIELD=qily60_right -DZMK_CONFIG=/zmk/zmk-config/config -DZMK_EXTRA_MODULES=/zmk/zmk-config
# cp build/q_right/zephyr/zmk.uf2 ../../build/qily60_right.uf2
