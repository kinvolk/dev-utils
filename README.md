# Kinvolk Dev Utils <img align="right" src="https://avatars2.githubusercontent.com/u/14073052?s=200&v=4" alt="Kinvolk" width="160">

Common development utilities for Kinvolk's projects.

We have needs that are consistent across Kinvolk's projects, and thus this
repository has tools and utilities for making the development of those projects
easier and more consistent both by Volks (Kinvolk employees) and as well as
community participants.

## Utilities

The utilities will be soon listed here.

## Installation

Please refer to each utility's README file for more information on how to
install it.

Ideally there will be an `install.sh` script that will install the tools
and files related to each utility. This `install.sh` script should, as much as
possible, use symbolic links to the repo's files so the tools can be easily
updated (i.e. a git hook should be installed as a symlink to the hook, rather
than having the file copied).

## Structure

Utilities should be organized under a folder for the tool they refer to, and
any specifications per team or project should be organized under a folder for
that. E.g.:

  * git/ : Git related utilities
    * hooks: Git hooks that a useful across the company
      * team_cni: Git hooks that are useful (mostly) within the CNI team.
        These may override the hooks defined in the folder above.

## Proposing new utilities

We encourage Volks and community participants to propose new utilities in
this repo. Keep in mind though that there is an acceptance criteria:

  * The utility can be used easily and is useful for many developers;
  * The utility makes something easier or more consistent within a project
    or projects;
  * The utility has a REAME file or entry in their respective folder's README
    file;

Here are a couple of examples of what should and should not be included:

  * Emacs command for running a linter: As much useful as your Emacs's
    configuration may be, it is in the end a matter of taste and something
    more personal. So you should rather use a "stash" for that (your own
    repo of utilities), and **not** Kinvolk's `dev-utils`;
  * Git commit hook running a Go linter: Git is a tool every developer uses,
    and thus, a hook running a linter that's agreed among several proejcts
    is something that is useful to have here.

For proposing new tools, please open a Pull Request.

### Commit guidelines

For the general guidelines on making PRs/commits easier to review, please check
out Kinvolk's
[contribution guidelines on git](https://github.com/kinvolk/contribution/tree/master/topics/git.md).

## Code of Conduct

Please refer to the Kinvolk
[Code of Conduct](https://github.com/kinvolk/contribution/blob/master/CODE_OF_CONDUCT.md).

## License

Kinvolk Dev Utils are licensed under
[Apache 2.0](https://github.com/kinvolk/kinvolk-dev-utils/blob/master/LICENSE) or under
the license specified in their respective README file.
