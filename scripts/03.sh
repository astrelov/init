#!/bin/bash
ls -lS | grep "^-" | awk '{print $5,$9}' | column -t
