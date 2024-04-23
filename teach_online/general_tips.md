# General Tips

```{note}
Source Code: [`teach_online/general_tips.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/general_tips.md)
```

In this section,
we will be giving some general tips and suggestions that broadly apply to many/all of the topics we have discussed throughout this online resource.
These will not necessarily be grounded in specific pedagogical techniques:
they will more so be general ideas and philosophies to keep in mind while designing and executing online teaching.

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

## Avoid Technology Fatigue

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

TODO MENTION TECHNOLOGY IS GOOD, BUT TOO MANY DIFFERENT TOOLS CAN CAUSE TECHNOLOGY FATIGUE AND OVERWHELM STUDENTS.
MENTION THAT THEY HAVE YOUR CLASS + ALL OF THEIR OTHER CLASSES = MANY OVERALL TECHNOLOGIES THEY NEED TO JUGGLE
