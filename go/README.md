# Go utilities

## Linter

We use the [golangci-lint](https://github.com/golangci/golangci-lint) tool
with a [config file](./linter/.golangci.yml) that sets may of the linters
turned on and is used as a base for Kinvolk's Go projects.

The [gofumpt](https://github.com/mvdan/gofumpt) formatter should be installed
as it's one of the linters set up by the linter configuration.

### Installation

Since the linter config may require changes that are custom to each project
(e.g. skipping certain directories), projects should use the mentioned
[config file](./linter/.golangci.yml) as a base and adapt it to include any
needed changes. This will certainly end up in different states between this
repo's version and what projects use, but it's still good to have a common
base to start with.
