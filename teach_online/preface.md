# Preface

Thank you for reading *How to Teach Online*!
Whether you are a seasoned instructor or new to teaching,
I hope you will learn some useful information that you will be able to incorporate into your own teaching!

## About
My name is [Niema Moshiri](https://github.com),
and I am an Associate Teaching Professor in the [Computer Science & Engineering Department](https://cse.ucsd.edu)
at the [University of California, San Diego (UCSD)](https://ucsd.edu).
I work on computational biology,
with a research focus on viral phylogenetics and epidemiology.
I also place a heavy emphasis on teaching,
namely on the development of online educational content,
primarily Massive Adaptive Interactive Texts (MAITs).

This online training module was developed with the support of a
[UC Online](https://www.ucop.edu/educational-innovations-services/programs-and-initiatives/ilti/about.html) grant,
awarded to me (PI) and Karen Flammer (co-PI) by the
[University of California Office of the President (UCOP)](https://www.ucop.edu/):
*An Online Training Module to Provide Instructors Guidance in Developing and Offering Fully Online and Hybrid Courses*.

## Disclaimer

This resource was written by a single person,
and while I strived to gain insights from as many folks across disciplines as possible,
everything written in this module has my own biases and should be taken with a grain of salt.
Further, the technologies and techniques I describe may go out-of-date in the future,
so please keep in mind current evidence-based best practices as well as modern tooling.
Rather than treating this module as a *de facto* set of instructions for online teaching,
think of it more as a repository of many (hopefully) useful tips that you can pull pieces of to incorporate into your own teaching.

## Contribute
To try to combat my own biases as well as to hopefully keep this resource reasonably up-to-date,
all of the source code is publicly available on [GitHub](https://github.com/niemasd/How-to-Teach-Online),
and [Pull Requests](https://github.com/niemasd/How-to-Teach-Online/pulls) are welcome!

## TODO DELETE EVERYTHING BELOW

TODO DELETE EVERYTHING BELOW

## What is MyST?

MyST stands for "Markedly Structured Text". It
is a slight variation on a flavor of markdown called "CommonMark" markdown,
with small syntax extensions to allow you to write **roles** and **directives**
in the Sphinx ecosystem.

For more about MyST, see [the MyST Markdown Overview](https://jupyterbook.org/content/myst.html).

## Sample Roles and Directives

Roles and directives are two of the most powerful tools in Jupyter Book. They
are kind of like functions, but written in a markup language. They both
serve a similar purpose, but **roles are written in one line**, whereas
**directives span many lines**. They both accept different kinds of inputs,
and what they do with those inputs depends on the specific role or directive
that is being called.

Here is a "note" directive:

```{note}
Here is a note
```

It will be rendered in a special box when you build your book.

Here is an inline directive to refer to a document: {doc}`markdown-notebooks`.


## Citations

You can also cite references that are stored in a `bibtex` file. For example,
the following syntax: `` {cite}`holdgraf_evidence_2014` `` will render like
this: {cite}`holdgraf_evidence_2014`.

Moreover, you can insert a bibliography into your page with this syntax:
The `{bibliography}` directive must be used for all the `{cite}` roles to
render properly.
For example, if the references for your book are stored in `references.bib`,
then the bibliography is inserted with:

```{bibliography}
```

## Learn more

This is just a simple starter to get you started.
You can learn a lot more at [jupyterbook.org](https://jupyterbook.org).
