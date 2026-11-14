#!/bin/bash

echo "Starting application tests..."

if [ ! -f index.html ]; then
    echo "FAILED: index.html is missing"
    exit 1
fi

if grep -q "Welcome to CI/CD Project!" index.html; then
    echo "PASSED: Website heading found"
else
    echo "FAILED: Website heading missing"
    exit 1
fi

if grep -q "deployed automatically using Jenkins" index.html; then
    echo "PASSED: Deployment message found"
else
    echo "FAILED: Deployment message missing"
    exit 1
fi

echo "ALL TESTS PASSED!"
exit 0
