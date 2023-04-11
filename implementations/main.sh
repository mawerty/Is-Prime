#!/bin/bash

function is_prime() {
    return 1
}

function main() {
    if isPrime $1; then
        echo "Prime"
    else
        echo "Not Prime"
    fi
}

