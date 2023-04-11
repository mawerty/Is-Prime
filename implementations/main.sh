#!/bin/bash

function is_prime() {
    return 1
}

function main() {
    if is_prime $1; then
        echo "Prime"
    else
        echo "Not Prime"
    fi
}

