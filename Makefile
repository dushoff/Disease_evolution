# Disease_evolution
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: talk.draft.pdf 

##################################################################

# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
# include $(ms)/perl.def

##################################################################

## Content

format_files = beamer.tmp beamer.fmt

Sources += $(wildcard *.abs *.txt)

talk.draft.pdf: talk.txt

##################################################################

## Talk machinery

talkdir = $(ms)/talk

## Images

images = $(Drop)/courses/Lecture_images

images/%: images ;

##################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/newlatex.mk
-include $(ms)/talk.mk

#### Added (add to scratch)
#### Or maybe move most of this stuff to talk.mk

-include $(ms)/linkdirs.mk

talkdir = $(ms)/talk
subdirs += talkdir

## Images

images = $(Drop)/courses/Lecture_images
subdirs += images

images/%: images ;

$(subdirs): 
	$(MAKE) -f $(ms)/repos.mk gitroot=$(gitroot) $($@)
	-$(RM) $@
	ln -s $($@) $@

Makefile: $(ms) $(subdirs)

######################################################################

# -include $(ms)/wrapR.mk
