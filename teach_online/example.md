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

(niemas-example-course-ed-lessons-reading-quizzes)=
#### Reading Quizzes

TODO

(niemas-example-course-ed-lessons-programming-assignments)=
#### Programming Assignments

TODO

(niemas-example-course-ed-lessons-projects)=
#### Projects

TODO

(niemas-example-course-ed-lessons-exams)=
#### Exams

TODO
