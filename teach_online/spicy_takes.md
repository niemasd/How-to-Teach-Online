(niemas-spicy-takes)=
# Niema's Spicy Takes

```{note}
Source Code: [`teach_online/spicy_takes.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/spicy_takes.md)
```

As mentioned at the very beginning of this resource,
I hope you have been taking everything I say with a grain of salt.
If that is not the case,
please forget everything you have read,
consume one or more grains of salt,
and reread everything with the grain(s) of salt in mind.
In this chapter,
I will be giving you some of my spicy takes,
opinions that have me looking like this from time to time
({numref}`spicy_take_swords_meme`):

```{figure} ../images/spicy_take_swords_meme.jpg
---
name: spicy_take_swords_meme
---
Niema when he describes some of his spicier takes.
```

It goes without saying that these are my own personal opinions,
and you should take *everything* I say in this chapter
with *significantly* more grains of salt
(a tablespoon of salt should suffice).

(niemas-spicy-takes-share-materials-free)=
## Share Your Instructional Materials Publicly for Free!

Historically,
many academics have contributed content to textbooks published by large publishing companies.
Many academics may have even written their *own* textbooks!
In the past,
there were logistical challenges that required this publication model:
before as well as in the early days of the internet,
there was no feasible way to self-publish one's instructional materials.
Even up until the late 2000s,
one could argue that {term}`Learning Management System (LMS)` technology was not mature enough to
enable academics to easily self-publish instructional materials
(e.g. they may have required non-trivial technical expertise or effort).
However, this is no longer the case:
there are *many* different technologies that can be used to self-publish instructional materials.
Even *this very resource* was just written on my laptop and was self-published using [GitHub Pages](https://pages.github.com)!
When a student enrolls in a class and sees that they have an expensive textbook or homework subscription,
it's annoying at best,
and it could be a non-trivial financial hurdle at worst {cite:p}`jenkins_textbook_2020`.

I want to be very clear that I am not in any way saying that academics should develop or publish their materials without compensation.
On the contrary,
I am extremely strongly of the mindset that nobody should *ever* do *any* labor without compensation.
However, what I *am* saying is that
I strongly encourage academics to seek funding mechanisms that can support the development and publishing of instructional materials
without placing the financial burden on students.
For example,
potentially relevant to folks in biomedical fields,
I have developed [multiple online courses](https://reporter.nih.gov/project-details/9935824)
with funding from an [NIH R25](https://researchtraining.nih.gov/programs/other-training-related/R25) grant.
Within UCSD,
I have also developed instructional materials with funding from the
[Course Development and Instructional Improvement Program (CDIIP)](https://academicaffairs.ucsd.edu/evc/cdiip.html).
Even *this very resource* was written with funding from a
[UC Online](https://www.ucop.edu/educational-innovations-services/programs-and-initiatives/ilti/about.html) grant.
Sure, I'm not *profiting* from the products I've developed,
but I was compensated very fairly for my labor
(you can find a full list of my funding sources on [my website](https://niema.net/awards/#funding)).

I understand that there are challenges with finding funding sources depending on where you are,
and I recognize my privilege of being at a well-supported R1 university to be able to even pursue these funding opportunities,
but I highly encourage all academics to try to find funding sources they can apply for / utilize
to support the development of their instructional materials
so that they can have the financial freedom to make them available to the general public for free.
And if you are someone who simply *uses* an expensive textbook,
I encourage you to see if there exists an {term}`Open Educational Resource (OER)`
that could be a reasonable substitute {cite:p}`nipa_assessment_2020,conole_fostering_2012`

(niemas-spicy-takes-dont-reinvent-the-wheel)=
## Don't Reinvent the Wheel!

Somewhat expanding upon my previous hot take,
if other folks have already developed high quality instructional materials,
try your best to avoid reinventing the wheel when at all possible!
I recognize the irony that I of all people am suggesting this,
given that I have reinvented *many* wheels throughout my academic career
(both in teaching as well as in research),
but I think it's important to first review all existing materials and see what you can adopt:
reinventing the wheel should only be done as a last resort if absolutely critical.

Again, this spicy take goes hand-in-hand with the previous one:
if more folks post their instructional materials publicly in an open source fashion,
others can simply "fork" someone's existing content to tailor it to their own course,
and they can even contribute their updates to the original author.
In this way,
rather than many different people regurgitating the exact same information imperfectly in their own silos,
the entire community can come together to collaboratively develop materials much better than any single person could have created.

As an example of this,
[Phillip Compeau](https://compeau.cbd.cmu.edu/) and [Pavel Pevzner](https://bioalgorithms.ucsd.edu/),
the authors of the popular textbook
[*Bioinformatics Algorithms*](https://www.bioinformaticsalgorithms.org/),
developed a series of accompanying [lecture videos](https://www.bioinformaticsalgorithms.org/lecture-videos)
that are freely available to the general public on [YouTube](https://www.youtube.com/@bioinfalgorithms/playlists).
They even solicited the participation of additional folks in the Bioinformatics community to create videos,
including [Son Pham](https://www.youtube.com/watch?v=Lqyh9RD5BSc&list=PLQ-85lQlPqFNGdaeGpV8dPEeSm3AChb6L&index=3)
[Nikolay Vyahhi](https://www.youtube.com/watch?v=Npv180dQ_4Y&list=PLQ-85lQlPqFNmbPEsMoxb5dM5qtRaVShn&index=8),
[Bahar Behsaz, and even myself](https://www.youtube.com/watch?v=eJxP06h-QxE&list=PLQ-85lQlPqFNqO3jD-woyp7PPQhCsOzcQ&index=5)!
This specific collection of resources was spearheaded by Phillip Compeau and Pavel Pevzner,
hence why they appear in the videos most frequently,
but one can imagine a world in which world experts on a given topic *all* contribute to producing instructional videos and text for that topic,
and then sharing them all in a central organized repository.

(niemas-spicy-takes-automate-everything)=
## Automate EVERYTHING!

I was torn between whether this should be a [Spicy Take](#niemas-spicy-takes) or a [General Tip](#general-tips),
but I think this take is just spicy enough to leave here.
In general,
I am strongly of the opinion that,
when running a course,
the instructor should try to automate everything they can possibly automate.
Of course,
don't sacrifice the quality of your assessments in exchange for easy automation,
but try to think of ways to automate any aspects of your course that are currently being done manually.
For example,
if there are any points that you have to manually enter throughout the course,
try to write a program to help automate the process
(e.g. I have written [programs to help me migrate points](https://github.com/niemasd/teaching)
from [Ed](https://edstem.org) to my [Canvas](https://canvas.instructure.com) gradebook).

My rationale is that,
beyond the obvious benefit of reducing the potential for human error,
human time of the instructional staff is critical to student learning.
Even with impressive advances in Large Language Models (LLMs) such as [ChatGPT](https://chat.openai.com/),
computers are (currently) unable to feel empathy.
Members of a course's instructional staff are not just sources of information:
if that were the case,
all educational institutions would have become obsolete with the introduction of the textbook hundreds of years ago.
Members of a course's instructional staff are useful *in part* due to the information they know,
but their primary utility in learning is their ability to reflect on their past experiences as humans:
they can connect with students struggling with concepts they too struggled with in the past,
and they can teach advanced concepts in a way that draws on how they personally connect the concepts with the world.

As such,
my spicy take on this front is the following:
any human time that is spent on tasks that can be performed by a computer in an automated fashion is a waste of time:
*all* human time across the instructional staff (or at least as much as possible)
should be allocated towards interacting with students in some way.
In the courses that I teach,
I hire undergraduate instructional assistants at 8 hour/week appointments that are broken down as follows:

* 0.5 hours/week for a weekly staff meeting (e.g. discussing upcoming assignments, asking about common issues seen in office hours, etc.)
* 1.5 hours/week to prepare for their office hours (e.g. review the upcoming assignment write-up and solution, review concepts, etc.)
* 6 hours/week holding office hours (e.g. helping students debug their code, answering student questions, working on problems with students, etc.)

Coupled with strict guidelines regarding how many members of the instructional staff can hold office hours at the same time
(e.g. only 1 person at any given time when there are no upcoming deadlines,
and up to 5 people at any given time the day before an assignment deadline),
I am able to provide office hour coverage every single day of the week (including weekends!),
with typical coverage spanning 9 AM through 9 PM.
As a result, *any* student should be able to find *some* office hour time that fits into their schedule,
regardless of work/family obligations, time zone (in the case of online classes), etc.
Of course,
many of these office hours go underutilized,
but I think that's a very reasonable trade-off for the safety net that this structure provides all students
(I also combat underutilized office hours by having my instructional staff members test my automated grading systems,
respond to posts on the discussion board,
and perform other helpful tasks when there are no students in their office hours).

(niemas-spicy-takes-glossary)=
## Glossary

```{glossary}
Open Educational Resource (OER)
  A publicly available educational resource that has been released under a license that permits
  its free use and repurposing by others.
```
