#!/bin/bash
set -e
cd tumanako-inverter-fw-bootloader && make get-deps && make && cd bootupdater && make
