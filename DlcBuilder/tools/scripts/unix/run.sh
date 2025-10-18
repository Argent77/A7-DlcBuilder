#!/bin/sh
cd "replace::workingFolder::replace" && \
chmod 755 replace::tool_binary::replace && \
replace::tool_binary::replace --use-lang replace::EE_LANGUAGE::replace --make-biff "replace::biffFolder::replace"
