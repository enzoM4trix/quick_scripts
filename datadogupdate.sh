#!/usr/bin/env bash
DD_AGENT_MAJOR_VERSION=7 DD_API_KEY="<API_KEY>" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)"