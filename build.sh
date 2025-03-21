#!/usr/bin/env bash

function build() {
    postcss src/resume.css -o dist/resume.css
}
function copystatic() {
    cp src/*.svg dist/
    cp src/*.html dist/
}

case $1 in
    build)
        build
        ;;
    post)
        copystatic
        ;;
    *)
        echo "unknown build option $1"
        exit -1
        ;;
esac
