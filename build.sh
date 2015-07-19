#!/bin/bash

pandoc \
    outline.rst \
    --read=rst \
    --write=revealjs \
    --slide-level 1 \
    --variable theme="black" \
    --variable transition="fade" \
    --variable center="false" \
    --standalone \
  | tidy \
        -indent \
        -wrap 0 \
        -quiet \
        --doctype html5  \
        --indent-spaces 4 \
  | sed '/<style /a \
            .reveal .slides section .fragment.current-visible.current-fragment.collapsable-fragment { display: initial; } \
            .reveal .slides section .fragment.current-visible.collapsable-fragment { display: none; } \
    ' \
  > index.html \
;
