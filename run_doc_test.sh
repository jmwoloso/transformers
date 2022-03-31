#!/usr/bin/env bash
doc_file=${1}

python utils/prepare_for_doc_test.py src docs &>/dev/null && pytest -sv --doctest-modules ${doc_file} --doctest-continue-on-failure --doctest-glob="*.mdx" && python utils/prepare_for_doc_test.py src docs --remove_new_line &>/dev/null