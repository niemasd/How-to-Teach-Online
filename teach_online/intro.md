---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

(welcome)=
# Welcome!

```{note}
Source Code: [`teach_online/intro.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/intro.md)
```

Welcome to *How to Teach Online*!
This is an online training module to provide instructors guidance in developing and offering fully-online and hybrid courses.
Even instructors of in-person courses with online components
(e.g. discussion board, online assessments, etc.)
might find some useful information!

```{code-cell} ipython3
:tags: ["remove-input"]
from datetime import datetime
from pytz import timezone
print("Built: %s" % datetime.now(timezone("America/Los_Angeles")).strftime("%B %-d, %Y at %-I:%M %p %Z"))
```

The most recent version of this resource can be found as a [website](https://niema.net/How-to-Teach-Online)
or [PDF](https://github.com/niemasd/How-to-Teach-Online/releases/latest/download/How-to-Teach-Online.pdf).

```{tableofcontents}
```
