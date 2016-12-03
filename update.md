---
layout: inner_title_md
title: Updating the Lab Website
---

## Updating the Prescher Lab site

#### General resources for the tools required (in order of importance):
- [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
- [Jekyll](https://jekyllrb.com/)
- [Command Line](https://www.cheatography.com/davechild/cheat-sheets/linux-command-line/)
- [HTML](http://www.simplehtmlguide.com/cheatsheet.php)

#### General Site Framework
The Prescher lab site is hand-written in HTML using the [Bootstrap](http://getbootstrap.com/) CSS/Javascript package. This gives the site a nice, minimal look and makes things moderately mobile-responsive. In February of 2016 the site was built written with bootstrap and the html was updated manually until August. With the thought of making the site updateable for a non code inclined person, the site was wrapped in the Jekyll framework that uses a templating engine for routine updates. Thus, only a set of easily readable files (eg text, .csv, folders of images) needs to be kept up to date for the site to also be up to date.

#### Location of source files/general workflow
The site lives in a folder on the desktop of the group computer labeled `Prescher_Lab_Website`. In the folder will be a series of folders and HTML files. To update the site, these files will need to be edited to reflect the desired changes, the site will need to be compiled using Jekyll (via command line), and the files will need to be uploaded to the web via FTP (with the Fetch app).

## Updating Lab News/Events
This is the most common change that will have to occur for the site. Updates are written in the Markdown language (see above) in files organized by year.

#### Post Location
In the `Prescher_Lab_Website` folder is another file called `_posts`. This file contains a post for each year of lab news. For each new year, a new file will be created with the naming convention `year-month-day-year-News.md`. Double click on the file that you desire to update, or create a new one if necessary. These files are edited in MacDown, a lightweight markdown editor.

#### Post Headers
Each post must begin with a header to tell the Jekyll engine how to template the file. Here's an example header from 2016:

```
---
layout: post
title:  "2016 News"
categories: group_update
---

The rest of the file here...
```
The only important thing to be updated is `title:`. Make sure that it reflects the correct year.

#### Adding and formatting posts
Posts read from most recent month on top and earliest (January) on the bottom. Month headers are denoted with four number signs (`####`) followed by the title. Different events within the month are denoted by a new line followed by a hyphen, followed by a space. Here's another excerpt from the 2016 post:

```markdown
#### August 2016
- Jenn, Zi, and Dave demo'd some chemistry for the Los Angeles Rams!! [They're famous!](http://www.latimes.com/socal/daily-pilot/news/tn-dpt-me-0825-football-chemistry-20160824-story.html)
- The lab went on a group trip to Carlsbad! Pics coming!
- Joanna successfully defended her thesis! Congrats Dr. Laird!
```
Formatting in this way in markdown will compile to look like this:

>#### August 2016
- Jenn, Zi, and Dave demo'd some chemistry for the Los Angeles Rams!! [They're famous!](http://www.latimes.com/socal/daily-pilot/news/tn-dpt-me-0825-football-chemistry-20160824-story.html)
- The lab went on a group trip to Carlsbad! Pics coming!
- Joanna successfully defended her thesis! Congrats Dr. Laird!

A common thing to include in a post is a link to external content (as in the LA times article above). This is done by including the text to be highlighted in brackets, and then the link in parenthesis immediately following.

Additionally text can be formatted with *italics* by ``*surrounding the text with asterisks*`` or text can be **bolded** ``**by using two asterisks**``.

#### Recompiling the site
Once the markdown file has been edited to your liking and saved, the site must be compiled with Jekyll. This means that Jekyll will read through the files that you have changed and convert them to HTML so that they look pretty and are readable by web browsers.

Open the **Terminal** app and navigate to the root of the ``Prescher_Lab_Website`` folder. If the folder is on the desktop, you should type something like this:
``cd ~/Desktop/Prescher_Lab_Website`` and press "enter".

Now type ``jekyll build`` to recompile the site.

To make sure that the changes that you have made look correct (before going live), type ``jekyll serve`` into the command line, and copy and paste the ``Server address:`` that is displayed in the command window to **Google Chrome** on the mac. It might look something like this: ``http://127.0.0.1:4000/~jpresche/``. Test out the site to make sure that your updates have been made.

#### Uploading the updated site files
The compiled site lives in ``/Prescher_Lab_Website/_site``. The contents of this file will need to be transferred to the website FTP where they will be displayed on the web. Open **Fetch** on the computer, and click the bookmarked connection labeled ``Prescher_Lab_Site``. Before uploading the new files, copy the files from the ``public_html_current`` folder to the ``public_html_backup`` folder in case something ends up not working. Now copy and paste the contents of the ``_site`` folder to the ``public_html_current`` folder. When asked, be sure to "replace all" files that have the same name. Now close the connection and navigate to the site online to make sure that everything worked. Congrats! You're a webmaster!

## Updating the Current Group and Alumni pages
When members inevitably join and leave the group, new profiles will have to be added and old ones will have to be moved to the alumni page.

#### Group Member Info
This information is stored in a ``.csv`` file in ``/Prescher_Lab_Website/_data/group.csv`` When a group member must be added, a new row can be used. Note the formatting used in the table entries, and make sure that the ``position`` column follows the previous ones exactly.

#### Adding a picture
To add a picture of a new member, obtain a high-resolution image from them or by taking a picture of them yourself. The dimensions of the image should be at least ``140 x 140 px``, the picture must be cropped around their head, square, and either a ``.jpg`` or ``.png``. These operations can be made using the **Preview** mac app. Place the image in ``/Prescher_Lab_Website/images/group`` and name the image ``lastname_firstname``, using the same spelling and capitalization as in the ``.csv`` entry.

#### Moving a profile to the alumni page
To move a group member to the alumni page, simply add ``former_`` in front of their position. Don
t forget to also add their current position!

## Updating the Publications
Publications are handled in the same fashion as group members. Information is stored in a ``.csv`` file and TOC images are placed in ``/Prescher_Lab_Website/images/TOCs``. The name of the TOC image included must simply be the number of the publication (as seen in the ``.csv`` file). Follow the format for the publications that have already been entered.

## Updating the Research Tab
To edit the text in the **Research** tab of the site, simply make the desired changes to the files in the ``_research_intros`` folder and recompile the site. The text located on the home page of the site can also be found here.

## Updating the Support Tab
To add or remove funding sources, simply add or remove images (as ``.png``, ``.gif``, or ``.jpg`` files) from the ``/Prescher_Lab_Website/images/funding`` folder.
