# .github

The organisation's default community files. GitHub uses each one for any repository in `valinta-hire` that has no
file of that type of its own. It holds no code and deploys nothing.

**Status: not yet in force.** GitHub applies an organisation's defaults only from a public `.github` repository, and
this one is private until the owner decides to make it public. The label script works either way. Every repository
still carries its own copies, as the
[Repository standard](https://app.notion.com/p/3fbaf1036748817da5f9e303784aeb19) requires.

## Links

- [Repository standard](https://app.notion.com/p/3fbaf1036748817da5f9e303784aeb19) in Notion: what every repository
  contains and how it is set up.
- [`valinta-hire/repo-template`](https://github.com/valinta-hire/repo-template): the template every new repository is
  created from, with every required file.
- [Keeping Notion current](https://app.notion.com/p/3faaf103674881a680ccee8b1e3a4050): the rulebook every
  repository's `CLAUDE.md` points to.

## Layout

```
SECURITY.md                         how to report a vulnerability, for the whole organisation
.github/ISSUE_TEMPLATE/             Story, Bug, Spike, Design, Decision, Hardening; blank issues off
.github/pull_request_template.md    the default pull request shape
.github/CODEOWNERS                  the owner on this repository
scripts/sync-labels.sh              applies valinta's label set to every repository, never deleting
```

## Run it locally

Nothing to run but the label script, which needs the GitHub CLI signed in with access to the organisation:

```bash
scripts/sync-labels.sh                  # every repository except valinta
scripts/sync-labels.sh valinta-voice    # one repository
scripts/sync-labels.sh --update         # also align existing labels' colours and descriptions
```

## Checks

None: there is no code to check and no CI. Changes here are documents, reviewed in a pull request.

## Deployed environments

None. GitHub reads the files on the default branch, `main`, directly.

## Where things live

| What                              | Where                                                                                   |
| --------------------------------- | --------------------------------------------------------------------------------------- |
| The rules these files follow      | Notion's [Repository standard](https://app.notion.com/p/3fbaf1036748817da5f9e303784aeb19) |
| The source of the issue templates | valinta's `.github/ISSUE_TEMPLATE/`; change them there and here in the same sitting      |
| The source of the label set       | valinta's labels; `scripts/sync-labels.sh` copies them                                  |
| Work items and bugs               | GitHub Issues, never Notion                                                             |

Last reviewed: 17 Oct 2026
