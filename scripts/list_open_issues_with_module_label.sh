#!/bin/bash

#PYTHONPATH=$(pwd) scripts/scrape_github_issues_url 'https://github.com/ansible/ansible/issues?q=is%3Aopen%20label%3Amodule'
curl -s -X POST \
    --header "Content-Type: application/json" \
    --data '{"query": "repo:ansible/ansible is:open is:issue label:module key:url key:number"}' \
    'http://dash.tannerjc.net/api/search'
