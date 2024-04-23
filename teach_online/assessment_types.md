# Assessment Types

```{note}
Source Code: [`teach_online/assessment_types.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/assessment_types.md)
```

In this section,
we will be discussing a wide range of assessment types.
You will likely be familiar with most of these,
but some might be new,
and all are worth discussing.

## True/False

A {term}`True/False Problem` is a problem in which the student
must select either "True" or "False" as their answer.
This problem type lacks any open-endedness in student responses,
and it is trivial to automatically grade.

## Multiple Choice

A {term}`Multiple Choice Problem` is a generalization of a
{term}`True/False Problem` in which
the student must select the correct answer(s)
from a list of prewritten options.
The solution could either be a single correct selection
(commonly known as a "Select One" problem)
or a correct selection of multiple options
(commonly known as a "Select All" problem).
This problem type allows for *some* open-endedness in student responses,
but constrained to a set of predefined options
(though "Select All" questions can add quite a bit of open-endedness
due to the large number of potential selections),
and it is trivial to automatically grade.

## Short Answer

A {term}`Short Answer Problem` is a problem in which the student
freely types in their response to the problem prompt as text.
Because it is open-ended,
this assessment type can be a bit trickier to grade automatically:
checking for perfect string equality to a correct answer string can be problematic
(e.g. allowing case-insensitivity).
Depending on the tool you are using to administer assessments,
you may be able to add flexibility by using a correct answer
[Regular Expression (Regex)](https://en.wikipedia.org/wiki/Regular_expression)
or writing a script (e.g. in Python) to check a response for correctness.

## Essay

An {term}`Essay Problem` is a longer version of a {term}`Short Answer Problem` in which
the student must write an essay about a specified topic or prompt.
Because it is *completely* open-ended,
this assessment type is extremely difficult to grade automatically:
it typically requires an instructor to read and evaluate manually.

## Numerical

A {term}`Numerical Problem` is a special type of a
{term}`Short Answer Problem` in which the answer must be a number.
This problem type is a bit less open-ended than a {term}`Short Answer Problem`,
but it is typically much easier to automatically grade:
the assessment tool will have you specify the correct number to check against,
and most assessment tools will also support some level of error in student responses
(e.g. due to rounding).

## Reorder

A {term}`Reorder Problem` is a problem in which the student is given multiple blocks of text,
and the student must rearrange them into the correct order to form an answer.
The correct answer may include just a subset of the given blocks of text.

## Programming

A {term}`Programming Problem` is a problem in which a student must
write a program (or programs)
to solve some task or perform some algorithms.
You might give the student some amount of "Starter Code" to add structure to the task,
or you may want to keep it open-ended to test students' ability to write a program from scratch.
Because student solutions are programs,
this assessment type is typically graded automatically using some grading script
(e.g. testing different inputs and outputs,
running commands from the command line, etc.),
meaning you can write potentially complex logic for grading for correctness,
as well as for giving accompanying feedback
(e.g. a custom message if the student's code didn't compile,
a differenti message if the student's code compiled but crashed, etc.).

## Parsons

For situations in which a {term}`Programming Problem` is too open-ended
(e.g. on an exam),
a {term}`Parsons Problem` is a special type of a
{term}`Reorder Problem` in which the student rearranges blocks of code to create a specific program.
Just like in a {term}`Reorder Problem`,
the correct answer could include just a subset of the given blocks of code.

```{glossary}
Essay Problem
  A longer version of a {term}`Short Answer Problem` in which the student must write an essay about a specified topic or prompt.

Multiple Choice Problem
  A generalization of a {term}`True/False Problem` in which the student must select the correct answer(s) from a list of prewritten options.

Numerical Problem
  A special type of a {term}`Short Answer Problem` in which the answer must be a number.

Parsons Problem
  A special type of a {term}`Reorder Problem` in which the student rearranges blocks of code to create a specific program.

Programming Problem
  A problem in which a student must write a program (or programs) to solve some task or perform some algorithms.

Reorder Problem
  A problem in which the student is given multiple blocks of text,
  and the student must rearrange them into the correct order to form an answer.

Short Answer Problem
  A problem in which the student freely types in their response to the problem prompt as text.

True/False Problem
  A problem in which the student must select either “True” or “False” as their answer.
```
