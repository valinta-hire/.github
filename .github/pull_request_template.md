Closes #

<!-- This is the organisation's default template, used only by a repository that has no
.github/pull_request_template.md of its own. Every repository should have its own, with its Rules list
(the Repository standard in Notion; valinta-hire/repo-template has the starting point). -->

## What this changes

<!-- The behaviour that is different after this merge, in a sentence or two. -->

## How it was verified

<!-- What you actually ran: the checks the repository's README.md lists, and anything else. -->

## Rules

Confirm the ones this change touches (the repository's `CLAUDE.md` has the reason for each):

- [ ] No secret, key, token, password or candidate data in the diff, the fixtures, the commit messages or this body.
- [ ] Formatting and logic are in separate commits.
- [ ] No test or check was skipped or disabled.

## Notion

<!-- What you updated in Notion for this change, with links, following the "Keeping Notion current" page linked from CLAUDE.md. Or "No change, because ...". If Notion could not be reached, say so and list what still needs updating. -->

## Notes for the reviewer

<!-- Anything surprising: a deliberate omission, a follow-up you want tracked, what the owner must do after the merge. -->

## Definition of Done

Tick each, or say why it does not apply.

- [ ] CI is green.
- [ ] Tests ship with the change, or the reason there are none is written here.
- [ ] README.md updated if what the repository does, how it is run, or where it deploys changed.
- [ ] CLAUDE.md updated if a constraint changed.
- [ ] An ADR in `docs/adr/` for any architecture decision.
- [ ] Notion updated as "Keeping Notion current" asks, or the Notion section above says why not.
