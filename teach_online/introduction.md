# Preface

Thank you for reading this module! Whether you are a seasoned instructor or new to the field, we hope you will take something away from this resource that you will be able to incorporate into your own teaching.

## Disclaimer

This module was written by a single person, [Niema Moshiri](https://niema.net) (me), and while I strived to gain insights from as many folks across disciplines as possible, everything written in this module has my own biases and should be taken with a grain of salt. Further, the technologies and techniques I describe may no longer exist in the future or may not be state-of-the-art, so please keep in mind current evidence-based best practices as well as modern tooling. Rather than treating this module as a *de facto* set of instructions for online teaching, think of it more as a repository of many (hopefully) useful tips that you can pull pieces of to incorporate into your own teaching.

## Contribute
To try to combat my own biases as well as to hopefully keep this module up-to-date, the entire source code for this module is publicly available on [GitHub](https://github.com/niemasd/How-to-Teach-Online), and [Pull Requests](https://github.com/niemasd/How-to-Teach-Online/pulls) are welcome!

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
