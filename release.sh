#!/bin/bash
helm lint github-action-dashboard 
helm package -d docs github-action-dashboard 
helm repo index docs --url https://mms-gianni.github.io/github-action-dashboard-helm