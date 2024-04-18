# Instructional Materials

```{note}
Source Code: [`teach_online/materials.md`](https://github.com/niemasd/How-to-Teach-Online/blob/main/teach_online/materials.md)
```

As one can imagine,
simply taking long recordings of in-person lectures and throwing them online is *very* poor pedagogy:
when students physically come to a classroom for an in-person lecture,
they have already consciously chosen to dedicate an hour within their daily schedule
to be able to focus on the lecture with their (hopefully) undivided attention.
With online learning, however,
students may not have hour-long block of uninterrupted time to watch a lecture,
and even if they do,
they will be more prone to distractions while they passively watch a lecture.

In this chapter,
we will be discussing different types of instructional materials one can incorporate into an online course,
and we will provide suggestions regarding how to design and implement these materials.
We want to emphasize that much of this advice can be used across multiple modalities of instruction
(e.g. both in-person and online classrooms can use online videos or text resources).

## Videos

Many online courses utilize videos to deliver course content.
This section will not be a full-fledged guide on how to create instructional videos,
but rather,
it will provide an overview of things to consider when creating instructional videos.
Broadly speaking,
there are three categories of instructional videos one can create:

1. Recording of a person presenting a topic
    * This is also known as the "talking head" video style
    * Example: [*Dynamic Programming and Backtracking Pointers*](https://www.youtube.com/watch?v=UqcWr1qqjFA&list=PLQ-85lQlPqFNmbPEsMoxb5dM5qtRaVShn&index=5) (Pavel Pevzner)
2. Recording of instructional materials (e.g. hand-written or slides) with voice-over
    * The hand-written tablet capture style is also known as "Khan-style" (named after [Khan Academy](https://www.khanacademy.org/))
    * Example: [*Multiway Tries (MWTs)*](https://www.youtube.com/watch?v=39PVhxUp8P8&list=PLM_KIlU0WoXmkV4QB1Dg8PtJaHTdWHwRS&index=48) (Niema Moshiri)
    * Tutorials: [*Making a KSV*](https://youtu.be/Ohu-5sVux28?si=RU-p4XGUYXkg8TDG) (Khan Academy),
                 [*Recording Khan Academy Style Videos*](https://github.com/niemasd/teaching/blob/master/Tutorials/VideosKhanAcademy.md) (Niema Moshiri)
3. Animations visualizing a topic (e.g. computer-generated) with voice-over
    * Example: [*How Bacteria Rule Over Your Body – The Microbiome*](https://youtu.be/VzPD009qTN4?si=EPoB07fnoC1szFjX) (Kurzgesagt)

Of course, this is an extreme oversimplification,
and in practice,
a single video can incorporate a blend of all of these methods
(and potentially others not described here!),
but hopefully this gives you a decent idea of what is in the realm of possibility.
Videos (especially with the instructor's face)
can help make an otherwise fully isolated course *feel* more personal,
and the ability to incorporate motion and continuous visual flow
can make videos an engaging way to learn a topic {cite:p}`guo_how_2014`.
However, videos can be very difficult to standardize,
and they can be expensive and technically difficult to produce {cite:p}`hansch_video_2015`.
Further, once created,
a video is *incredibly* difficult and costly to update {cite:p}`compeau_life_2015`,
often requiring re-recording it
(in-part or in-full).

When creating instructional videos,
note that they have fairly rapid engagement drop-off,
and each individual video should ideally be **under 10 minutes**
{cite:p}`guo_how_2014,manasrah_short_2021`.
Further, it may be beneficial to try to make each individual video as modular as possible
(i.e., reduce dependencies on prior videos as much as possible)
to enable easy addition, removal, rearrangement, and replacement.

If you have given any lectures later than e.g. 2010,
*especially* if you have given any lectures during the COVID-19 pandemic,
chances are that you may already have recordings of those lectures at your disposal.
While they're likely *far* too long to use as-is,
all hope is not lost:
recordings of a longer traditional lecture can be split into smaller chunks,
potentially with added annotations and enhancements,
to be used as shorter instructional videos in an online,
hybrid, or flipped course {cite:p}`minnes_podcast_2019`.

## Online Text

As mentioned in the previous section,
despite their popularity,
instructional videos can be difficult to properly design,
expensive to produce nicely,
and challenging to update or modify in the future {cite:p}`compeau_life_2015,minnes_podcast_2019`.
Online text-based instructional materials can accompany or even potentially *replace* videos:
they are relatively inexpensive to create
(especially in the modern era,
in which self-hosting is relatively simple,
even for folks without significant technical expertise),
and they are extremely easy to update in the future.

The simplest way to write text-based instructional materials is to use a formatted text editing tool with a
[WYSIWYG](https://en.wikipedia.org/wiki/WYSIWYG) ("What You See Is What You Get", pronounced "wiz-ee-wig") interface.
For example, you can use [Microsoft Word](https://en.wikipedia.org/wiki/Microsoft_Word) or equivalent
(e.g. [Google Docs](https://docs.google.com/), [LibreOffice Writer](https://www.libreoffice.org/discover/writer/), etc.)
to write a formatted text document (e.g. a DOCX file),
which can be exported to a PDF file and posted on your personal website.
Potentially even more simple:
depending on how you created your website,
you may be able to write instructional text *directly on* your website!

A slightly less simple option,
but which might give you a bit more control over how you develop and host your materials,
is to write your instructional materials in a [Lightweight Markup Language (LML)](https://en.wikipedia.org/wiki/Lightweight_markup_language)
(e.g. [Markdown](https://en.wikipedia.org/wiki/Markdown))
and host them somewhere like [GitHub](https://github.com/),
where they can be rendered with formatting in a web browser.
Even *less* simple,
but even more powerful,
is [LaTeX](https://en.wikipedia.org/wiki/LaTeX),
which is a software system for typesetting documents
(especially powerful for mathematical equations)
in which the content is written in the LaTeX [markup language](https://en.wikipedia.org/wiki/Markup_language)
and then compiled to PDF.
LaTeX can be extremely frustrating to install and use locally,
but web-based platforms like [Overleaf](https://www.overleaf.com/)
make it quite simple to write LaTeX documents using a more intuitive interface
and without needing to install anything on your computer.

JUPYTER BOOK

MAITS

## Content Delivery

TODO TALK ABOUT HOW, ONCE YOU *MAKE* THESE MATERIALS, YOU NEED TO DELIVER THEM IN SOME WAY

TALK ABOUT DIFFERENT LMS PLATFORMS, EMPHASIZE THAT STUDENT SHOULDN'T HAVE TO FIGURE OUT HOW TO NAVIGATE THINGS (MAKE IT INTUITIVE / ONE-CLICK)
