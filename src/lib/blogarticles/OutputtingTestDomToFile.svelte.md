---
title: Outputting DOM printout to file on test failure
---

## Context

When a selector in a `@testing-library` test fails, it’ll output the entirety of the dom you’ve mounted to the console, to help you debug why the selector failed to find the element. On a recent project, this was printing a huge amount of markup (mainly antd’s fault). This made debugging slow and painful, as scrolling up and down hundreds of lines of markup was ~~pure pain~~ rather unpleasant.

### tl;dr

this experiment _diid_ work... but not in a pleasant enough way to make me use it in my daily/project workflow anytime soon.

I’m sharing this experiment in the interest of making [learning in public](https://www.swyx.io/learn-in-public/), and perhaps garnering opinions on the concept.

Read on for detail on what I tried, and a summary of the pros and cons with this strategy.

## The problem

```jsx
<gif of loads of dom output>
```

I hope you can agree, parsing so much markup over and over is painful. Especially when it's printing divs with a single classname like

```jsx
<div
  className="ant-menu-item"
></div>

// instead of
<div className="ant-menu-item"></div>
```

which bugs me greatly, because it feels unnecessary, and antd is bloated, so this happens a lot.

Furthermore, for some reason my DOM is being printed **more than once**, and sometimes with css. I haven't figured out why this is (contact me if you know why please!)

## The solution

Testing-library has a function called [prettyDOM](https://testing-library.com/docs/dom-testing-library/api-debugging/#prettydom), which is a wrapper around jest/pretty-format.

We can configure testing-library to not print the DOM on error, as detailed in [this stackoverflow answer](https://stackoverflow.com/a/64155473/15471471) (and here's [testing-library configuration docs](https://testing-library.com/docs/dom-testing-library/api-configuration/) for reference).

Then

Print to a file - I placed this in project and gitignored, but could generate it anywhere really? If no process for automatic file cleanup, then keeping it in project folder would make it less likely to forget about I suppose.

```
<show code here>
```

### Conclusion

Overall, while I'm glad I tried this, I think it's a bad idea. Whilst it solves one problem, it adds more with managing the files you're generating.

**Pros:**

- **compact markup** - easier to scroll and debug
- **familiar syntax/theme highlighting** in markup (by virtue of being viewed from code editor)
- DOM output printed in **different location** to console (I like the separation)

**Cons:**

- **VSCode jest —watch interference** (could be configured differently to avoid)
- I don’t think the flow of ‘perform default operation of printing DOM to console’ is working quite right?
- The process is **clunky** and at it’s heart, a **hack**. Therefore, I didn’t feel comfortable asking colleagues to adopt it on project
- DOM output printed in **different location** to console (the separation does introduce a whole other bunch of maintenance problems)

The other takeaway I have for you today, is to just not use antd. While it does bring benefits of speedy development and slick design, it's bloated to all hell, and has poor accessibility.

This poor accessibility makes testing painful for another reason - it's hard to find appropriate selectors for elements. Test-ids can be added to most elements as an escape hatch, but sometimes it's impossible.

### Other thoughts/ideas:

It'd be great to find a way to make testing-library's prettyDOM print more compactly - perhaps I should raise a ticket for this/try this myself if the idea is liked?

Print each test in a test run to a separate file, delete all files on each new test run

differentiate VSCode/Manual runs
