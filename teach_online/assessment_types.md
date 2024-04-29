(assessment-types)=
# Assessment Types

```{note}
Source Code: [`teach_online/assessment_types.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/assessment_types.md)
```

In this section,
we will be discussing a wide range of assessment types.
You will likely be familiar with most of these,
but some might be new,
and all are worth discussing.

(assessment-types-true-false)=
## True/False

A {term}`True/False Problem` is a problem in which the student
must select either "True" or "False" as their answer.
This problem type lacks any open-endedness in student responses,
and it is trivial to automatically grade.

(assessment-types-multiple-choice)=
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

(assessment-types-short-answer)=
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

(assessment-types-essay)=
## Essay

An {term}`Essay Problem` is a longer version of a {term}`Short Answer Problem` in which
the student must write an essay about a specified topic or prompt.
Because it is *completely* open-ended,
this assessment type is extremely difficult to grade automatically:
it typically requires an instructor to read and evaluate manually.

(assessment-types-numerical)=
## Numerical

A {term}`Numerical Problem` is a special type of a
{term}`Short Answer Problem` in which the answer must be a number.
This problem type is a bit less open-ended than a {term}`Short Answer Problem`,
but it is typically much easier to automatically grade:
the assessment tool will have you specify the correct number to check against,
and most assessment tools will also support some level of error in student responses
(e.g. due to rounding).

(assessment-types-reorder)=
## Reorder

A {term}`Reorder Problem` is a problem in which the student is given multiple blocks of text,
and the student must rearrange them into the correct order to form an answer.
The correct answer may include just a subset of the given blocks of text.

(assessment-types-programming)=
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
a different message if the student's code compiled but crashed, etc.).

(assessment-types-programming-writing-graders)=
### Writing Graders

As mentioned above,
automatic graders of programming assessments can potentially give adaptive feedback
catered to the student's specific misconception or mistake.
When I write grading scripts,
I typically start with a simple test and multiple large randomly-generated test,
and I write the grader to simply output binary "correct" or "incorrect" feedback.
I then try to map out all possible misconceptions or mistakes I can think of,
and I add them into the script such that,
assuming the student's code has passed all previous steps of the grading script,
if the student's code produces output *y* given test *x*,
it is likely that the student's code has mistake/misonception *z*,
and I write the grader to output more descriptive feedback regarding that specific mistake/misconception.

For example,
consider a programming assessment in an introductory
[Java](https://en.wikipedia.org/wiki/Java_(programming_language)) programming class
in which a student is given two `int` objects `x` and `y`,
and the student's program needs to print the result of `x` divided by `y`.
I would write a grading script that performs the following:

1. Try to compile the student's code
    * If the student's code doesn't compile,
      fail the code and provide feedback saying the code didn't compile
    * If possible, try to parse the compile error message and provide descriptive feedback about what that error means
2. Run multiple tests in which `x` is perfectly divisible by `y` (e.g. `x = 4` and `y = 2`)
    * If the student's code doesn't produce the correct output,
      fail the code and provide descriptive feedback showing the inputs, expected output, and student's output
3. Run multiple tests in which `x` is *not* perfectly divisible by `y` (e.g. `x = 5` and `y = 2`)
    * A common misconception is if a student simply prints the result of `x / y`,
      which in Java performs [integer division](https://mathworld.wolfram.com/IntegerDivision.html) when given two `int` variables
    * If the student's code produces the output of integer division (e.g. `2` in this example),
      but it passed all tests prior to this point,
      it is likely that the student's code has this specific mistake,
      so fail the code and provide descriptive feedback explaining this common misconception regarding integer division
4. Perform Step 3, but with any other mistakes/misconceptions you can think of
    * Students will inevitably encounter mistakes you couldn't think of when initially designing the grading script,
      so revise the script based on student feedback in future offerings of the course by adding additional tests
5. If the student's code passed everything up to the end of the grading script,
   pass the student's code

In an online course,
scalability is critical,
and the more feedback you can provide students automatically right when they submit their code,
the less burden there is on course staff trying to answer students' questions.
However, you need to be careful that your grading script doesn't give incorrect or misleading feedback
(e.g. if you *thought* that only misconception *z* was possible at that point in your grading script,
but another misconception could also lead to that same exact behavior in your script).
I typically have my instructional staff stress-test my grading scripts to ensure
(1) correct code consistently passes the grader,
(2) incorrect code consistently fails the grader,
(3) feedback for any mistakes they can think of testing is consistently reasonable,
and (4) the grader cannot be exploited or circumvented with some form of trickery
(this is typically the most fun/interesting for them).

(assessment-types-parsons)=
## Parsons

For situations in which a {term}`Programming Problem` is too open-ended
(e.g. on an exam),
a {term}`Parsons Problem` is a special type of a
{term}`Reorder Problem` in which the student rearranges blocks of code to create a specific program.
Just like in a {term}`Reorder Problem`,
the correct answer could include just a subset of the given blocks of code.

(assessment-types-glossary)=
## Glossary

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
