---
title: Enabling Code Coverage in VSCode and GitLab
---

Code coverage is a useful metric for seeing how much of your code has been walked by unit tests. Not going to go into further detail here!

In this article, I’ll describe how to turn on code coverage in VSCode and Gitlab

Recently, I had to turn on code coverage

## Context

We had a client project at work that’s been going at such a lick, that we’ve fallen very far behind on our unit/integration tests, and had never enabled code coverage either.

Now, we’re trying to catch up on our test coverage, and so have turned it on, and using

Currently, Jest is the most popular test runner, and it’s what we’re using. Jest has code coverage built in (provisioned using Instanbul), which is turned with either cli flag `—coverage`, or similar flag in jest config file.

— running jest in vscode
— how to toggle code coverage overlay

— adding text/text-summary coverage report in jest

— adding to gitlab pipeline text (provide docs link)

— adding in gitlab diff view (provide docs link and github issue link)

And that’s where we’re at now. Having it in gitlab isn’t a massive benefit; I think the greatest value of code coverage is the aforementioned ability to toggle overlay in editor to direct yourself to where to add unit tests in local development, but having it in diff view for others to view it is a nice thing to have too.
