(niemas-example-course)=
# Niema's Example Course

```{note}
Source Code: [`teach_online/example.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/example.md)
```

In this section,
I will provide a complete example of one of the courses I commonly teach:
UCSD's [CSE 100](https://catalog.ucsd.edu/courses/CSE.html#cse100) course (*Advanced Data Structures*).
Even if this exact recipe doesn't work for the courses you teach,
I hope that tidbits of the structure I use can give you some interesting ideas about how to structure your own courses.
I will structure the subsections in this section by category of teaching-related task,
and I will provide information about tools I use and how I use them to achieve the task.
This section is particularly subject to change as my teaching evolves.

Before I begin,
I want to remind folks that this section is *purely* subjective:
I am simply giving my own personal opinions.
I am not sponsored by any company,
and I will try my best to paint every platform as fairly as possible,
and any positive or negative opinions I present about any platform should be treated exactly as what it is:
my own personal opinions.

(niemas-example-course-ed)=
## Almost Everything: Ed

The one-stop location for almost everything in my courses is [Ed](https://edstem.org).
I briefly mentioned Ed in the [*Content Delivery*](#content-delivery-discussion-board-ed) section of this resource,
but to expand and add some more specific details,
Ed is an online platform that supports content delivery,
discussion board, real-time chat, automatically graded assessments
(including programming and exams!),
and pretty much anything a course needs,
all directly within a single course infrastructure.
If students bookmark my course infrastructure within this single platform,
they can keep up with all learning and graded aspects of the course without needing to check anywhere else.

(niemas-example-course-ed-discussion)=
### Ed Discussion

[Ed Discussion](https://edstem.org/discussion) is the discussion board functionality of Ed.
It looks a lot like [Piazza](https://piazza.com/),
but it's much cleaner and feature-rich in my opinion
({numref}`ed_discussion`).

```{figure} ../images/ed_discussion.png
---
name: ed_discussion
---
Ed Discussion board from an example *Advanced Data Structures* course.
```

One particularly powerful feature of Ed Discussion is that it supports the embedding of **runnable** code examples directly within a post.
This has been absolutely game-changing in my Computer Science courses!
When a student asks a question about some programming-related topic
(e.g. about the programming language itself,
or about a specific data structure or algorithm),
rather than just answering the question with higher-level descriptive text,
I can actually include runnable code examples *within* my explanation to enable the student to actually
*experience* what I'm describing.
The students don't need to install *anything* other than a modern web browser:
regardless of what device the student is using
(e.g. laptop/desktop, tablet, or even phone),
the student can simply click and run actual code directly in their web browser
({numref}`ed_discussion_runnable_code`).

```{figure} ../images/ed_discussion_runnable_code.png
---
name: ed_discussion_runnable_code
---
Ed Discussion post with runnable C++ code from an example *Advanced Data Structures* course.
```

(niemas-example-course-ed-lessons)=
### Ed Lessons

[Ed Lessons](https://edstem.org/lessons) is the content and autograded assessment delivery functionality of Ed.
I administer the following types of graded assessments on Ed:
Reading Quizzes, Programming Assignments, Projects, and Exams.
Ed Lessons is structured as follows:

* Each "Slide" is a single page of materials (e.g. a single page of text, or a single video, or a single collection of quiz questions, etc.)
* Each "Lesson" is a collection of "Slides"
* Each "Module" is a collection of "Lessons"

In the classes I teach, I structure Ed Lessons as follows ({numref}`ed_lessons`):

* Each week or theme of the course has its own "Module"
* Each day of lecture has its own "Lesson" within the "Module" of the week/theme it belongs to
* Each individual instructional material has its own "Slide" within the "Lesson" of the lecture it belongs to
  * After each class session, I place the class recording as a new "Slide" in that lecture's "Lesson"

```{figure} ../images/ed_lessons.png
---
name: ed_lessons
---
Ed Lessons page from an example *Advanced Data Structures* course.
```

(niemas-example-course-ed-lessons-reading-quizzes)=
#### Reading Quizzes (RQs)

I have a Reading Quiz (RQ) due before every single day of class.
I release all of the RQs for the entire course on the first day of class
so that students can work as far ahead as they need to fit their schedule
(e.g. frontload all of a week's RQs the weekend before,
work ahead to account for a big trip or expected absence, etc.).
I typically implement each Reading Quiz using a single quiz "Slide" because it only has a few problems,
all of which can fit nicely on a single page with just a little bit of scrolling ({numref}`ed_lessons_rq`).

Quiz "Slides" support many different types of problems:

* Multiple Choice ("Select One" or "Select All")
* True/False
* Short Answer (can grade with exact match or [regex](https://en.wikipedia.org/wiki/Regular_expression))
* Numerical (can grade with a plus-or-minus tolerance)
* Reorder (rearrange blocks of text into the correct order)
* Hotspot
* Parsons (rearrange blocks of code to create a program)
* General (open-ended text submission)

```{figure} ../images/ed_lessons_rq.png
---
name: ed_lessons_rq
---
Reading Quiz from an example *Advanced Data Structures* course.
```

(niemas-example-course-ed-lessons-programming-assignments)=
#### Programming Assignments (PAs)

I have a weekly Programming Assignment (PA) for the first few weeks of class.
I typically implement each Programming Assignment using a single "Lesson" that consists of multiple "Slides" ({numref}`ed_lessons_pa`):

* An introduction text "Slide" introducing the assignment and providing logistical details (e.g. deadline, points breakdown, etc.)
* One code challenge or quiz "Slide" for each individual programming task or concept
* Additional text, PDF, or video "Slides" if additional instructions/details are needed for the assignment

In code challenges on Ed,
students are able to write *and* run code directly within their web browser.
Students are given a [VS Code](https://code.visualstudio.com/)-like code editing environment,
as well as a `bash` shell to compile and run programs
(or perform whatever `bash` tasks you want them to perform).
The instructor can define and customize the following:

* The instructor can define a "Run Command",
  which enables a "Run" button that executes whatever commands the instructor specifies to run the program
  (e.g. compilation and execution commands)
* The instructor can (and should) also define "Tests" for automated grading,
  which enables a "Mark" button that submits the student's code and runs the instructor-defined tests to grade it
  * Ed's code challenges support a wide range of testing methods:
    [Input/Output](https://blog.replit.com/input-output-tests),
    [PyUnit](https://wiki.python.org/moin/PyUnit),
    [JUnit](https://junit.org/),
    [Swift](https://www.swift.org/),
    [RSPec](https://rspec.info/),
    [R testthat](https://testthat.r-lib.org/),
    [Jest](https://jestjs.io/),
    and just writing a `bash` script
  * I personally like to use PyUnit in conjunction with Python's [`subprocess` module](https://docs.python.org/3/library/subprocess.html) to compile and run code in any language, but evaluate with simple Python syntax
* The `bash` shell can be disabled,
  which can be useful for abstracting away technical details
  (e.g. in an introductory Python programming course)

```{figure} ../images/ed_lessons_pa.png
---
name: ed_lessons_pa
---
Programming Assignment from an example *Advanced Data Structures* course.
```

(niemas-example-course-ed-lessons-projects)=
#### Projects

My Programming Assignments (PAs) consist of fairly straightforward programming task
(e.g. fill in the bodies of some functions),
and as a result,
it doesn't require as much creativity and design from students.
To account for this,
in the last few weeks of class,
I have two Projects,
which are *structurally* similar to the PAs
(write code to solve a problem),
but which are much larger in scale and much more open-ended,
requiring quite a bit of design from the student.

(niemas-example-course-ed-lessons-exams)=
#### Exams

I typically administer two exams:
one Midterm and one Final.
Each is implemented as its own "Lesson" on Ed,
and each consists of an informational text "Slide" followed by multiple quiz "Slides"
(much like the pages of a traditional written exam).

While my Programming Assignments (PAs) and Projects were also individual "Lessons",
they were open for an unlimited amount of time,
and students had unlimited attempts until the deadline.
For the Exams, however,
I create single-attempt "Timed Lessons",
in which I can specify a total amount of exam time
(50 minutes for Midterm, 3 hours for Final),
and when a student takes the exam,
a timer begins to count down,
and the exam automatically submits and closes when the timer runs out.
Some students receive extended time accommodations from the [Office for Students with Disabilities (OSD)](https://osd.ucsd.edu/),
and "Timed Lessons" on Ed allow me to simply make adjustments to individual students based on their specific accommodations.

I administer my exams to be asynchronous:
I typically administer them over a 24-hour window of time,
and students are able to take the exam at whatever time in this window they'd like.
Some students prefer taking the exam early in the day to get it over with,
some students prefer taking the exam later in the day to spend extra time studying,
and some students have to juggle this exam with exams from their other courses and need the flexibility.
While my PAs and Projects give immediate correctness feedback,
I am able to set the Exam "Lessons" to hide correctness feedback,
which I do to avoid giving away the answers to students who took the exam earlier in the day
(and who thus might share them with students who take the exam later in the day).
This approach still doesn't prevent collaboration,
but you can read about my exam similarity detection methods in the
[Academic Integrity](#academic-integrity-exams-exam-similarity-detection) section of this resource.
