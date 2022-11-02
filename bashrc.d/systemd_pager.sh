#!/bin/bash

# Systemd utilities should not pretend that we told them to send their output
# to less/more

export SYSTEMD_PAGER=
