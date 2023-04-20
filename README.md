# [Incubating] Roberc7 Chart Repository


:egg: **Incubating**: The intention of this project is to establish a fully-functioning project. In this context, incubation is about developing the process, the community, and the technology before pervasive use.



---


## Introduction

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add roberc7 https://roberc7.github.io/helm-charts/
helm repo update
helm search repo roberc7
```

You can then run `helm search repo roberc7` to see the charts.

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->

## Chart Releaser
Chart Releaser is a automated workflow to that makes this project into a self-hosted Helm chart repo, using `helm/chart-releaser` CLI tool.

:exclamation: All charts are stored in the `gh-pages` branch. Changes to that branch will be automatically created by the Chart Releaser workflow.



## Contributing

Contributions are welcome ❤️

This repository has multiple Github Actions to ensure quality is high, these include:

- [chart-testing](https://github.com/helm/chart-testing): lint and install tests
- [helm-docs](https://github.com/norwoodj/helm-docs): check all chart `README.md` have all values documented

All chart `README.md` files are generated from a template. This ensures all values are documented and that formatting is consistent. See [here](https://github.com/norwoodj/helm-docs#valuesyaml-metadata) about how the table of values is produced and how to add descriptions to your chart values.

## How to contribute
1. branch away from `main`, develop, and test your changes
2. Submit a pull request

***NOTE***: In order to make testing and merging of PRs easier, please submit changes to multiple charts in separate PRs. Automated checks will prevent you from modified multiple https://charts.releases.teleport.poc

Chart releases must be immutable. Any change to a chart warrants a chart version bump even if it is only changed to the documentation.

### README customisation

To customize a charts `README.md`, simply update the desired charts `README.me.gotmpl` template located within it's respective directory (e.g. `./charts/*/README.md.gotmpl`).
for example, [microservice-basic](./charts/k8s-cronjob/README.md.gotmpl) have the following section:
```
{{ define "extra.notes" -}}
## Notes
* extra content  
* etc...
{{- end }}
```


## Technologies Used

* Must follow [Charts best practices](https://helm.sh/docs/topics/chart_best_practices/)
* Must pass CI jobs for linting and installing changed charts with the [chart-testing](https://github.com/helm/chart-testing) tool
* Any change to a chart requires a version bump following [semver](https://semver.org/) principles. See [Immutability](#immutability) and [Versioning](#versioning) below

Once changes have been merged, the release job will automatically run to package and release changed charts.



## Versioning

The chart `version` should follow [semver](https://semver.org/).

Any charts released to production should at least be at version `1.0.0`. Any breaking (backwards incompatible) changes to a chart should:

1. Bump the version of the chart to the appropriate version. (e.g. `0.13.3` -> `1.0.0`)
2. If the new version requires additional steps to upgrade from previous versions, Update the `README.md.gotmpl`, to include a section called `Upgrading`. Describe in detail the steps necessary to upgrade to the new (specified) `MAJOR/MINOR` version 

Given a version number MAJOR.MINOR.PATCH, increment the:

- `MAJOR` version when you make incompatible API changes
- `MINOR` version when you add functionality in a backwards compatible manner
- `PATCH` version when you make backwards compatible bug fixes
- Additional labels for pre-release and build metadata are available as extensions to the `MAJOR.MINOR.PATCH` format.



## Commit Standards

This project enforces the use of [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/). View to get helpful examples.

This convention dovetails with SemVer, by describing the features, fixes, and breaking changes made in commit messages.

The commit message should be structured as follows:
```
  <type>[optional scope]: <description>

  [optional body]

  [optional footer(s)]
```
The commit contains the following structural elements, to communicate intent to the consumers of your library:

- **fix**: a commit of the type `fix` patches a bug in your codebase (this correlates with `PATCH` in Semantic Versioning).
- **feat**: a commit of the type `feat` introduces a new feature to the codebase (this correlates with `MINOR` in Semantic Versioning).
- **BREAKING CHANGE**: a commit that has a footer BREAKING CHANGE:, or appends a ! after the type/scope, introduces a breaking API change (correlating with `MAJOR` in Semantic Versioning). A BREAKING CHANGE can be part of commits of any type.
- types other than `fix:` and `feat:` are allowed, for example [@commitlint/config-conventional](https://github.com/conventional-changelog/commitlint/tree/master/%40commitlint/config-conventional) recommends `build:`, `chore:`, `ci:`, `docs:`, `style:`, `refactor:`, `perf:`, `test:`, and others.
- footers other than `BREAKING CHANGE: <description>` may be provided and follow a convention similar to [git trailer format](https://git-scm.com/docs/git-interpret-trailers).
- Additional types are not mandated by the Conventional Commits specification, and have no implicit effect in Semantic Versioning (unless they include a BREAKING CHANGE). A scope may be provided to a commit’s type, to provide additional contextual information and is contained within parenthesis, e.g., `feat(parser): add ability to parse arrays.`





## Related Projects

Check out these related projects.



## References

For additional context, refer to some of these links.





## License

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

```text
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
```



### Contributors

<!-- markdownlint-disable -->
|  [![Callum Robertson][callumccr_avatar]][callumccr_homepage]<br/>[Callum Robertson][callumccr_homepage] | [![Roberc7][roberc7_avatar]][roberc7_homepage]<br/>[Roberc7][roberc7_homepage] |
|---|---|
<!-- markdownlint-restore -->

  [callumccr_homepage]: https://github.com/callumccr
  [callumccr_avatar]: https://img.cloudposse.com/150x150/https://github.com/callumccr.png
  [roberc7_homepage]: https://github.com/roberc7
  [roberc7_avatar]: https://img.cloudposse.com/150x150/https://github.com/roberc7.png

