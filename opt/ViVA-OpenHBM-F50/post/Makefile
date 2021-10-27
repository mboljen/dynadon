FFMPEG ?= ffmpeg
LSPP ?= lspp47

FRAMERATE := 14

DELAY := $(shell echo 100/$(FRAMERATE) | bc )

BASENAMES = $(addprefix animate_,$(shell seq -w 0 195))

TIFFILES = $(addsuffix .tif, $(BASENAMES))
GIFFILES = $(addsuffix .gif, $(BASENAMES))

ANIMATE_GIF = animate.gif
ANIMATE_MP4 = animate.mp4

CONVERT ?= convert

define lspp_cleanup
	$(RM) lspost.cfile lspost.db lspost.msg
endef

# Load Makefile.cfg if it exists
-include Makefile.cfg

all: $(ANIMATE_MP4) $(ANIMATE_GIF)

$(ANIMATE_MP4): $(TIFFILES)
	$(FFMPEG) -y -framerate $(FRAMERATE) -start_number 0 -i animate_%03d.tif -c:v libx264 $@

$(TIFFILES): animate.cfile ../d3plot
	$(LSPP) c=$< $(LSPP_MAINWINDOW)
	$(call lspp_cleanup)

$(ANIMATE_GIF): $(GIFFILES)
	$(CONVERT) -delay $(DELAY) -loop 0 $^ $@

$(GIFFILES): %.gif: %.tif
	$(CONVERT) $< -transparent white $@

clean:
	$(RM) $(ANIMATE_MP4) $(TIFFILES) $(GIFFILES)

.PHONY: clean
