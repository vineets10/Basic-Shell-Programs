#!/bin/bash

du --max-depth=2 | sort -n -r | head -n 10
