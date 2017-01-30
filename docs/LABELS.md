# Labels

We got a specific list of available labels within our GitHub repositories. To
update or add our labels you should simply use [ghi](https://github.com/stephencelis/ghi)
to make it as easy as possible available via the CLI. The installation of this
tool is out of the scope of this documentation.

## List

* in progress
* kind/api
* kind/bug
* kind/deployment
* kind/docs
* kind/enhancement
* kind/feature
* kind/lint
* kind/proposal
* kind/question
* kind/security
* kind/testing
* kind/ui
* lgtm/done
* lgtm/need 1
* lgtm/need 2
* priority/critical
* priority/low
* priority/maybe
* priority/medium
* reviewed/duplicate
* reviewed/invalid
* reviewed/wontfix
* status/blocked
* status/needs-feedback
* status/wip

## Update

To update the list of labels you have to get into the folder of the specific
cloned repository, than you can simply execute the following commands.

```
ghi label -D 'help wanted'

ghi label 'bug' -c ee0701 -r kind/bug
ghi label 'duplicate' -c cccccc -r reviewed/duplicate
ghi label 'enhancement' -c 84b6eb -r kind/enhancement
ghi label 'invalid' -c e6e6e6 -r reviewed/invalid
ghi label 'question' -c cc317c -r kind/question
ghi label 'wontfix' -c ffffff -r reviewed/wontfix

ghi label 'in progress' -c ededed
ghi label 'kind/deployment' -c c5def5
ghi label 'kind/docs' -c c2e0c6
ghi label 'kind/feature' -c 006b75
ghi label 'kind/lint' -c f9d0c4
ghi label 'kind/proposal' -c 5319e7
ghi label 'kind/security' -c 0052cc
ghi label 'kind/testing' -c d4c5f9
ghi label 'kind/translation' -c c0c0c0
ghi label 'kind/ui' -c fef2c0
ghi label 'lgtm/done' -c 0e8a16
ghi label 'lgtm/need 1' -c f9d0c4
ghi label 'lgtm/need 2' -c d93f0b
ghi label 'priority/critical' -c fbca04
ghi label 'priority/low' -c bfd4f2
ghi label 'priority/maybe' -c fef2c0
ghi label 'priority/medium' -c fbca04
ghi label 'status/blocked' -c d4c5f9
ghi label 'status/needs-feedback' -c 1d76db
ghi label 'status/wip' -c fbca04
```
