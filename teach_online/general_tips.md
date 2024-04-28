(general-tips)=
# General Tips

```{note}
Source Code: [`teach_online/general_tips.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/general_tips.md)
```

In this section,
we will be giving some general tips and suggestions that broadly apply to many/all of the topics we have discussed throughout this online resource.
These will not necessarily be grounded in specific pedagogical techniques:
they will more so be general ideas and philosophies to keep in mind while designing and executing online teaching.

(general-tips-avoid-user-confusion)=
## Avoid User Confusion

When you teach online,
you will have to perform some amount of non-trivial infrastructure-building
(hopefully using some of the information we provided in previous sections of this resource).
In a sense,
the students who are enrolled in your course are the "users" of your course platform
much in the same way someone would be a "user" of a software application.
Just like how the software running an ATM doesn't crash if you accidentally try to withdraw more money than you have in your bank account,
your course platform shouldn't result in confusing or erroneous behavior if a student accidentally misuses it.

As you build any aspects of your course platform that a student will have to interface with,
try to make everything as intuitive and easy to interact with as possible
(otherwise, you'll be facing hundreds of emails from confused students!).
Try to anticipate potential incorrect usage your course platform may encounter,
and try to either prevent or cleanly handle such incorrect usage.
For example, if you need to collect student ID numbers,
make sure the system *does not allow* students to successfully submit with a missing or erroneous ID:
perform some form of response validation *immediately* and handle incorrect input gracefully
(e.g. display an error message giving them guidance on where to find the correct ID or format).

In general,
it's best to completely *avoid* manual interaction from the student whenever possible
and instead try to obtain any required information automatically
(e.g. from their user account)
to minimize how many potential errors students could face
(and you would therefore have to handle).
This is *especially* true if you use multiple separate technologies in your course:
make sure you are able to synchronize whatever information is needed
with as little student interaction as possible
(ideally none, or just one up-front form submission).

For example,
if your students will be using an external tool to take computer-based quizzes,
and you need to migrate quiz points from this external tool to your course gradebook each week,
try to somehow connect the two to sync automatically
(e.g. using [LTI](https://www.1edtech.org/standards/lti)),
and if it's absolutely impossible to do so,
solicit unique student IDs or accounts from the external tool *once* at the beginning of the course
(e.g. via pre-course survey),
and create a system (using e.g. Python script, Excel tools, etc.)
to automatically map student points from the external tool to the appropriate entry in your course gradebook.

(general-tips-reduce-technology-fatigue)=
## Reduce Technology Fatigue

University education has looked almost identical for *hundreds* of years:
an instructor stands at the front of a lecture hall,
students sit en masse in seats facing the front of the lecture hall,
and the instructor lectures at the students for some period of time
(typically around an hour or so).
The main innovations between the early classrooms from over a thousand years ago {cite}`beichner_history_2014`
and those taking place in state-of-the-art lecture halls in present-day universities have focused on scalability
(e.g. more seats, projector, sound system to project the lecturer's voice, etc.).
Innovations in *pedagogical techniques* that actually focus on *how students learn effectively* are fairly recent:
most evidence-based teaching methods were developed in the mid-1900s onward,
with a particular boom in the past few decades as formal education research has become more common in universities.

As is the case with *all* disciplines,
advances in education research have resulted in the creation of new innovative technologies to better facilitate student learning.
These tools can be *incredibly* powerful for engaging students and modernizing instruction!
However, one thing to be conscious of is the potential for {term}`Technology Fatigue`:
a sense of overwhelming that can come about from the use of many different technologies TODO CITE.
For example,
speaking from personal experience,
a single undergraduate course might use all of the following technologies:

* [Canvas](https://canvas.instructure.com) or [Blackboard](https://blackboard.com) for announcements/grades
* [Google Sites](https://sites.google.com) or [GitHub Pages](https://pages.github.com) for a course website to display course materials/assignments
* [Cogniterra](https://cogniterra.com) for reading assignments and/or quizzes
* [Ed](https://edstem.org) or [Piazza](https://piazza.com) for the course discussion board
* A proprietary textbook-affiliated web platform for homework problems (e.g. math, physics, biology, etc.)
* [Gradescope](https://gradescope.com) for submitting and grading programming assignments and written homework/exams
* [iClicker](https://iclicker.com) for in-class participation for in-person courses
* [YouTube](https://youtube.com) for pre-class videos and/or class recordings
* And potentially more!

Again, I want to emphasize that all of the above technologies may be used in *a single course*!
Further, it's important to remember that your course is not the only course students are taking:
they very well could be taking 3 other courses
(potentially in dramatically different disciplines)
that each have *their own* technologies for students to keep track of.
Thus, my general tip is to try to reduce {term}`Technology Fatigue`:

* Try to minimize the number of technologies used in your course
  * Some technologies might have redundancies in terms of functionality, so try to consolidate when at all possible
    * For example, I now use [Ed](https://edstem.org) for announcements, embedding course materials, quizzes, programming assignments, and exams
* When possible, try to have a single "main" technology/website that students can bookmark, and seamlessly *embed* other technologies *within* it
  * Try to avoid manual interaction on the student's end when at all possible

(general-tips-glossary)=
## Glossary

```{glossary}
Technology Fatigue
  A sense of overwhelming that can come about from the use of many different technologies TODO CITE.
```
