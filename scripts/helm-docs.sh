#!/usr/bin/env bash

set -eu

rm -rf .stable

ALL_CHARTS=$(ls charts)

# Create a copy of each README.md files before running helm-docs
for CHART in $ALL_CHARTS; do
    mkdir -p ".charts/$CHART"
    cp "charts/$CHART/README.md" ".charts/$CHART/README.md"
done

# Run helm-docs to generate all README.md files from the template from base path
docker run --rm -v "${PWD}:/helm-docs" jnorwood/helm-docs:v1.9.1 --chart-search-root=charts --template-files=README.md.gotmpl --template-files=/helm-docs/_templates.gotmpl

# Check all README.md files for changes after running helm-docs
set +e
UPDATE_CHART_LIST=()
for CHART in $ALL_CHARTS; do
    echo "Checking charts/$CHART/README.md..."
    diff -s "charts/$CHART/README.md" ".charts/$CHART/README.md" > /dev/null
    if [ $? -eq 1 ]; then
        echo "🔴 Update required: file charts/$CHART/README.md needs to be updated"
        UPDATE_CHART_LIST+=("$CHART ")
    fi
done

if [[ ${#UPDATE_CHART_LIST[@]} -gt 0 ]]; then
    echo "List of pending update chart: ${UPDATE_CHART_LIST[@]}"
    git config --global user.name 'helm-doc'
    git config --global user.email 'no-reply@github.com'
    git config pull.rebase true
    
    git add charts/
    git commit -m "fix(docs): Update \`README.md\` for \`charts/\` directory [skip ci]"
else
    echo "✅ All chart README.md files are up to date"
fi

rm -rf .charts
exit 0
