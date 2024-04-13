# Academic Integrity

```{note}
Source Code: [`teach_online/academic_integrity.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/academic_integrity.md)
```

In this chapter,
we will be discussing ways to maintain Academic Integrity in online assessments.
Some content in this chapter may overlap with other chapters
(e.g. if we discuss Academic Integrity when we introduce specific online assessment tools),
but this chapter will be structured in a way that is hopefully agnostic to specific tooling.
This chapter draws heavily from {cite:t}`eaton_second_2024`,
a resource I *strongly* recommend for anyone curious about Academic Integrity.

## Terms and Concepts

Before discussing *any* techniques for maintaining Academic Integrity,
we first need to present some foundational terms and concepts.

### Deterrence vs. Detection

There are two key terms that describe two closely-related yet distinct concepts:
**deterrence** and **detection**.
{term}`Deterrence` is the act of correctly identify cases of cheating
(e.g. by comparing submissions, witnessing copying, using plagiarism detection tools, etc.),
whereas {term}`deterrence` is the act of stopping/preventing people from cheating {cite:p}`eaton_remote_2024`
(e.g. by proctoring/monitoring students, convincing them they will get caught and receive a severe penalty, etc.).

## Exams

One of the most frequent concerns I have heard regarding maintaining
Academic Integrity in online courses is with respect to online exams.
Instructors often rely on exams to serve as comprehensive evaluations of student mastery,
and ensuring the integrity of this form of evaluation is an important goal.

### Remote Proctoring

When administering remote exams,
especially in the early days of the COVID-19 pandemic,
many instructors relied on {term}`remote proctoring`,
in which students take an exam on a computer
while being supervised by a person and/or computer software
{cite:p}`eaton_remote_2024`.
The idea behind remote proctoring is intuitive:
students are typically proctored when they take in-person exams,
so they should be proctored when they take remote exams... Right?

Well, the situation might not be so simple.
In a proctored in-person exam,
all students leave their homes to meet at a specified location to take their exam
(commonly a lecture hall or some other facility at their university).
In remote proctoring, however,
most students take the exam from their home
(typically in a personal space like their bedroom) {cite:p}`stone_understanding_2021`.
Taking an exam is already stressful enough,
but being watched over the internet contributes to test anxiety
(as well as exacerbating other equity issues, such as internet literacy,
access to reliable technology and a dedicated study space, etc.) {cite:p}`conijn_fear_2022`.
Is this infringement of student privacy a necessary evil {cite:p}`selwyn_necessary_2023` to ensure Academic Integrity?

{cite:t}`eaton_remote_2024` provides an excellent exploration of the evidence for and against the use of remote proctoring,
so I *highly* recommend reading it thoroughly.
Here, I will briefly summarize the key points of discussion:

* With respect to **deterrence** of cheating:
  * Many studies split students into "proctored" vs. "unproctored" groups and evaluate student grades across groups
  * Many of these studies find lower grades in the "proctored" group
    * This result is commonly interpreted as evidence of deterrence of cheating
      {cite:p}`akaaboune_accountability_2022,alessio_examining_2017,
               carstairs_internet_2009,rupert_remote_2016,dendir_cheating_2020,
               harmon_are_2008,karim_cheating_2014,reisenwitz_examining_2020,stapleton_remote_2021`
    * Additional test anxiety could also be a contributing factor to lower performance
* With respect to **detection** of cheating:
  * Remote proctoring services claim to be effective at catching cheating
  * In reality, they don't seem to be very effective
    * At least not if students have some reasonable technical know-how {cite:p}`burgess_watching_2022,bergmans_efficacy_2021`
* With respect to **privacy**:
  * Some students feel uncomfortable, but others are actually fine with being proctored remotely {cite:p}`karim_cheating_2014,selwyn_necessary_2023`
  * There are also privacy concerns regarding how proctoring companies store/use student data {cite:p}`langenfeld_internetbased_2020`
  * It can contribute to the culture of surveillance and to the acceptance of surveillance in other realms {cite:p}`dawson_defending_2020`

Again, I *strongly* encourage you to read {cite:t}`eaton_remote_2024` in its entirety,
as it does an *excellent* job presenting the research regarding the pros and cons of remote proctoring.
If, after reading the relevant research and weighing the pros and cons,
you decide that you want to conduct remote proctoring in your course,
the following services may be of interest:

* [ProctorU](https://www.proctoru.com/) (now [Meazure Learning](https://www.meazurelearning.com/exam-proctoring/remote-exam-proctoring)) has live proctors monitor students in real-time
* [Proctorio](https://proctorio.com/) records students while they take exams and performs automated software-based video analysis as well as live human review
* Depending on the size of your class, your course staff can proctor students live using [Zoom](https://zoom.us/) or similar video conferencing services

### Exam Similarity Detection

Beyond just proctoring students *during* the exam,
another technique for detecting cheating is to look for similarity in exam responses.
The logic here is intuitive:
if two students have suspiciously similar exams,
they may have cheated on the exam
(e.g. collaboration, or one student copying from the other).
For open-ended questions that require free form (e.g. essay) responses,
detecting exam similarity is easy:
just use a service like [Turnitin](https://www.turnitin.com/):
overly identical sentence structure and word choice is a strong indicator of cheating.

However, what about exams with multiple choice,
short answer, numerical, etc. questions?
As a pedantic Computer Scientist,
I will pose a question that *sounds* simple but is actually deceptively complex:
how exactly do we define exam "similarity"?

```{figure} ../images/cant_argue_with_that_meme.png
---
height: 300px
name: cant_argue_with_that_meme
---
You, when you realize the true complexity of the question.
```

At a glance, one might define "similarity" as the
proportion of questions both students responded to with the exact same answer:
if two students collaborate on an exam,
we expect them to have identical (or near-identical) answers... Right?
Sure, that's true:
students who collaborate will likely have many identical answers.
However, the reverse is not necessarily true:
assuming the instructor wrote a fair exam,
students *should* hopefully converge towards the correct answers,
meaning two students who did really well will *also* have a lot of identical answers
(the *correct* answers).
In the world of statistics,
we call this a [non-identifiable](https://en.wikipedia.org/wiki/Identifiability) model:
two different input scenarios (collaborate vs. both did well on the exam)
result in the same outcome (high proportion of identical answers),
so the proportion of identical answers may not be super informative in cheating detection on its own.

Okay, so shared identical *correct* responses might not be super informative,
but what about shared *incorrect* responses?
If two students make the exact same mistake on multiple questions,
that could be suspicious.
But what about True/False questions?
If two students get the question wrong,
they *must* have the same wrong answer:
there's only one possible wrong answer!
As an extension of this line of thinking,
even if there are multiple possible wrong answers,
some wrong answers will be more frequent than others:
the same misconception will likely lead to the same wrong answer,
and more common misconceptions will lead to more frequent wrong answers.
In other words,
the *uniqueness* of a shared wrong answer is interesting.

In {cite:t}`moshiri_scalable_2022`,
we proposed the {term}`Moshiri Exam Similarity Score (MESS)`
that can be calculated for a given pair of students *x* and *y* as follows:

* For a single question, define the "score" for that question as one of the following:
  * If either student (or both) got the question right, the score is 0
  * If both students got the question wrong, but they put *different* wrong answers, the score is 0
  * If both students put the *same* wrong answer, the score of that question is the proportion of students who put a *different* wrong answer
    * In other words, if *n* students got the question wrong, but only *k* students put this exact wrong answer, the score of this question is (*n*–*k*)/*n*
    * If every student who got the question wrong put this same wrong answer (i.e., *k* = *n*, e.g. True/False), the score would be 0
    * If these students were the only students to put this specific wrong answer (i.e., *k* = 2), the score would approach 1
* Calculate the score of every question on the exam as described above, take their sum, and normalize by dividing by the number of questions
  * In other words, the overall exam score is the average of the scores of the individual questions

The calculation description above is intentionally written colloquially
(rather than using formal mathematical notation)
in an attempt to keep this resource reasonably accessible across disciplines,
but the formal mathematical definition of MESS can be found in {cite:t}`moshiri_scalable_2022`.

Now that we've defined MESS, what can we actually do with it?
If we calculate MESS on all pairs of students in the class,
we can assume that the *vast* majority of MESS scores we calculate will *not* be between cheaters.
We can validate this assumption with a simple thought experiment:
in a class of *n* students,
if *every single student* paired up with another student to collaborate on the exam,
we would have *n*/2 cheating pairs of students out of *n*(*n*–1)/2 total pairs of students.
In a class of *n* = 100 students,
we would have 100/2 = 50 cheating pairs and out of 100(99)/2 = 4,950 total pairs of students
(just over 1% of all pairs of students).
Thus, we can use the distribution of all pairwise MESS calculations as an approximation of the null distribution:

```{figure} ../images/mess_distribution.png
---
height: 500px
name: mess_distribution
---
Distribution of all pairwise MESS calculations in a 500-person Advanced Data Structures course (log-scale).
A histogram is shown as blue bars,
a [Kernel Density Estimate (KDE)](https://en.wikipedia.org/wiki/Kernel_density_estimation) is shown as a dashed black curve,
and the [Probability Density Function (PDF)](https://en.wikipedia.org/wiki/Probability_density_function)
of a best-fit [Exponential distribution](https://en.wikipedia.org/wiki/Exponential_distribution) is shown as a black line.
Statistical significance tests were conducted on all scores to the right of the dashed red line.
```

TODO WRITE ABOUT RYG DISTRIBUTION

We wrote a Python program to perform all pairwise MESS calculations,
calculate a best-fit [Exponential distribution](https://en.wikipedia.org/wiki/Exponential_distribution),
plot the distribution,
and perform other downstream analyses on [GitHub](https://github.com/niemasd/MESS).

```{glossary}
Detection
  The act of correctly identify cases of cheating {cite:p}`eaton_remote_2024`.

Deterrence
  The act of stopping people from cheating {cite:p}`eaton_remote_2024`.

Moshiri Exam Similarity Score (MESS)
  An exam similarity score that increases in value as shared incorrect responses are more unique {cite:p}`moshiri_scalable_2022`.

Remote Proctoring
  A mode of exam administration in which students take the exam on a computer
  while being supervised by a person and/or computer software {cite:p}`eaton_remote_2024`.
```
