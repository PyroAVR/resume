#!/usr/bin/env bash

function build() {
    npx postcss src/resume.css -o dist/resume.css
}
function copystatic() {
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
