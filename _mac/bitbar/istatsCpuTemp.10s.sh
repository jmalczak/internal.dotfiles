#!/bin/bash
/usr/local/bin/istats | grep "CPU temp" | awk '{ print $3 }'
