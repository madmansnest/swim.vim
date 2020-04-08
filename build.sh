#!/bin/bash

swift build -c release

if [[ !$? ]]; then
  cp .build/release/swim .
fi
