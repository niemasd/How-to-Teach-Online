(content-delivery)=
# Content Delivery

```{note}
Source Code: [`teach_online/content_delivery.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/content_delivery.md)
```

Once you have *developed* course materials and assessments,
you of course need some way to *deliver* them to students.
In this section,
we will discuss some different platforms for instructional content delivery.
This section of *How to Teach Online* is the most prone to going out-of-date,
so contributions are *especially* welcome here.

(content-delivery-lms)=
## Learning Management System (LMS)

A {term}`Learning Management System (LMS)` is a
software application for the administration, documentation, tracking, reporting,
automation,and delivery of educational courses/materials {cite:p}`tatnall_learning_2020`.
Many universities use a single LMS platform across the entire institution,
so you may not have much freedom to choose between LMS options.
Regardless, in this subsection,
we will provide an overview of common LMS choices.

(content-delivery-lms-canvas)=
### Canvas

[Canvas](https://www.instructure.com/canvas) is an open-source {term}`Learning Management System (LMS)`
that has the following key features:

* **Course Content:**
    [Assignments](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Assignments/ta-p/9),
    [Modules](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Modules/ta-p/6),
    [Quizzes](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-is-New-Quizzes/ta-p/17),
    and [Pages](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Pages/ta-p/5)
* **Student Collaboration:**
    [Collaborations](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Collaborations/ta-p/61),
    [Conferences](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Conferences/ta-p/53),
    and [Groups](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Groups/ta-p/16)
* **Instructor Feedback:**
    [SpeedGrader](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-is-SpeedGrader/ta-p/13)
    and [Gradebook](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Grades-and-the-Gradebook/ta-p/49)
* **Communication:**
    [Discussions](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Discussions/ta-p/3),
    [Chat](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-is-Chat/ta-p/63),
    [Announcements](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-are-Announcements/ta-p/39),
    [Calendar](https://community.canvaslms.com/t5/Canvas-Basics-Guide/What-is-the-Calendar/ta-p/76),
    and [Syllabus](https://community.canvaslms.com/t5/Instructor-Guide/How-do-I-use-the-Syllabus-as-an-instructor/ta-p/638)

(content-delivery-lms-moodle)=
### Moodle

[Moodle](https://moodle.org/) is an open-source {term}`Learning Management System (LMS)`
that is released under the [GPL license](https://en.wikipedia.org/wiki/GNU_General_Public_License).
It offers many of the same features as [Canvas](#content-delivery-lms-canvas).

(content-delivery-lms-blackboard-learn)=
### Blackboard Learn

[Blackboard Learn](https://www.anthology.com/products/teaching-and-learning/learning-effectiveness/blackboard-learn)
is a proprietary {term}`Learning Management System (LMS)` that offers many of the same features as
[Canvas](#content-delivery-lms-canvas),
but with some additional premium features,
such as the [AI Design Assistant](https://www.anthology.com/ai-design-assistant).

(content-delivery-course-website)=
## Course Website

Many instructors simply use their {term}`Learning Management System (LMS)` as their course website,
as most LMS choices have some functionality to define custom web pages,
but some instructors who may feel limited by the web page functionalities of their LMS may want to
host an external course website as well.
If you choose to do this,
I strongly encourage you to point to it directly from the landing page of your course LMS
(otherwise students may become confused).
In this subsection,
we will provide an overview of common choices for hosting course websites outside of a course LMS.

(content-delivery-course-website-google-sites)=
### Google Sites

[Google Sites](https://sites.google.com) is a user-friendly website creation platform
that enables the development of web pages using a
[WYSIWYG](https://en.wikipedia.org/wiki/WYSIWYG) ("What You See Is What You Get", pronounced "wiz-ee-wig") interface,
without the need for any coding or scripting abilities.
There are other website creation platforms that have similar user-friendly interfaces,
such as [Wix](https://www.wix.com/),
[WordPress](https://wordpress.com/),
[Squarespace](https://www.squarespace.com/),
and many more,
though we recommend Google Sites because it is free.

(content-delivery-course-website-github-repository)=
### GitHub Repository

[GitHub](https://github.com) is a software developer platform for
creating, storing, and sharing code that uses the
[Git](https://git-scm.com/)
[distributed version control](https://en.wikipedia.org/wiki/Distributed_version_control) system.
One nice feature of GitHub is that it can render
[Markdown](https://en.wikipedia.org/wiki/Markdown) files in a formatted display.
Importantly,
if a GitHub repository contains a Markdown file named `README.md`,
it will automatically be displayed when a user accesses the repository.
Thus,
instructors can use a GitHub repository as a course website:
the landing page would be the `README.md` file,
and all other pages could be separate Markdown files that link to each other.
The [UCSD COGS 108](https://github.com/COGS108/Overview) course website is a great example.

A key benefit of using a GitHub repository to host your course website is that it naturally provides version control,
meaning you can easily keep track of your edits over time,
and you can even create a separate
[Release](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases)
for each offering of your course.
The main downside is that you would need to learn how to write in the Markdown language,
but it's a fairly simple language to learn,
and GitHub's web-based file editor makes it easy to edit Markdown files directly in your web browser,
without any need for installing or using separate tools.

(content-delivery-course-website-github-pages)=
### GitHub Pages

[GitHub Pages](https://pages.github.com/) is a special feature of GitHub repositories
in which the developer can *also* deploy a full-fledged website.
*How to Teach Online* is itself actually hosted using GitHub Pages!
Creating a course website using GitHub Pages can be quite a bit more robust than just creating Markdown files in a GitHub repository,
but it requires quite a bit more technical expertise to set up and deploy.
However, once the up-front hurdle of initial configuration is overcome,
it becomes extremely simple to update in the future.

(content-delivery-course-website-self-hosted-website)=
### Self-Hosted Website

The most robust approach,
which is also the most technically challenging approach,
is to completely self-host your own course website.
If you are even considering this option,
you are technical enough to compare different services on your own,
so we will not provide a specific list of services to choose from,
as it will likely go obsolete *extremely* quickly.

(content-delivery-discussion-board)=
## Discussion Board

Many courses utilize an online discussion board system to enable asynchronous communication between students and course staff.
The {term}`Learning Management System (LMS)` that you are using may already include discussion board functionality,
but in this subsection,
we will provide an overview of common choices for dedicated discussion board platforms.

(content-delivery-discussion-board-piazza)=
### Piazza

[Piazza](https://piazza.com/) is a discussion board platform with a simple layout in which
students can ask/answer questions and post notes/comments.
The platform rapidly gained usage in the late 2010s,
and as of 2021,
it is no longer free and instead uses a
[paid model](https://support.piazza.com/support/solutions/articles/48001161300-paid-model-for-piazza-q-a):
institutions can purchase an enterprise site license that cover all instructors and students at the institution,
individual departments can purchase a department license to cover all classes and students within their department,
and individual instructors can purchase an instructor license to cover just their own courses.

(content-delivery-discussion-board-ed)=
### Ed

[Ed](https://edstem.org/) is a feature-rich platform that has discussion board functionality
([Ed Discussion](https://edstem.org/discussion))
as well as content and autograded assessment delivery functionality
([Ed Lessons](https://edstem.org/lessons)).
Ed Discussion functions similarly to [Piazza](#content-delivery-discussion-board-piazza)
(e.g. [Q&A](https://edstem.org/q-and-a) and course information/announcements),
but with many additional features,
such as [live chat](https://edstem.org/chat)
and [more robust content within posts](https://edstem.org/#express-yourself)
(including runnable code examples!!!).
Ed has been my strongly preferred platform since I started using it in 2020.

(content-delivery-instructional-text)=
## Instructional Text

It has become increasingly user-friendly to author fairly robust text-based content on the internet,
and as a result,
rather than relying entirely on a textbook,
many instructors have become empowered to write their own instructional materials
(in part, or potentially even in full!).
We provided an overview and discussion of different options for authoring one's own instructional text resources
in the [Instructional Materials](instructional-materials-online-text) section of this online resource,
so rather than repeating ourselves
(and inevitably becoming outdated in two separate pages),
we will just point you to that page for this specific topic.

(content-delivery-glossary)=
## Glossary

```{glossary}
Learning Management System (LMS)
  A software application for the administration, documentation, tracking, reporting, automation,
  and delivery of educational courses/materials {cite:p}`tatnall_learning_2020`.
```
