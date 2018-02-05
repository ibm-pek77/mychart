#!/bin/bash

helm package traderchart/
helm package notificationchart/
helm package traderchart/charts/portfoliochart/
helm package traderchart/charts/portfoliochart/charts/stockquotechart
helm package traderchart/charts/portfoliochart/charts/loyaltylevelchart
mv -f *.tgz docs
helm repo index docs --url https://ibm-pek77.github.io/mychart
