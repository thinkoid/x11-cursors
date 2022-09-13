# -*- mode: makefile; -*-

ifeq (0, $(shell which xcursorgen &>/dev/null))
  $(error "Missing xcursorgen program, exiting")
 endif

XCURSORGEN = xcursorgen

INSTALLDIR = x11-cursors

TARGETS = X_cursor                              \
          based_arrow_down                      \
          based_arrow_up                        \
          bottom_left_corner                    \
          bottom_right_corner                   \
          cell                                  \
          context-menu                          \
          crossed_circle                        \
          dotbox                                \
          fleur                                 \
          grabbing                              \
          hand2                                 \
          left_ptr                              \
          pencil                                \
          plus                                  \
          question_arrow                        \
          right_ptr                             \
          sb_down_arrow                         \
          sb_h_double_arrow                     \
          sb_left_arrow                         \
          sb_right_arrow                        \
          sb_up_arrow                           \
          sb_v_double_arrow                     \
          sizing                                \
          top_left_arrow                        \
          top_left_corner                       \
          top_right_corner                      \
          watch                                 \
          xterm                                 \
          zoom-in                               \
          zoom-out

all: $(TARGETS)

%: %.in
	@$(XCURSORGEN) $< $@

install: $(TARGETS)
	@( mkdir -p $(INSTALLDIR)/cursors;          \
       cp index.theme $(INSTALLDIR);            \
       cp $(TARGETS) $(INSTALLDIR)/cursors;     \
       cd $(INSTALLDIR)/cursors;                \
       ln -sf hand2 hand1;                      \
       ln -sf right_ptr arrow;                  \
       ln -sf right_ptr draft_large;            \
       ln -sf right_ptr draft_small;            \
       ln -sf sb_v_double_arrow double_arrow;   \
       ln -sf sb_v_double_arrow top_side;       \
       ln -sf sb_v_double_arrow bottom_side;    \
       ln -sf sb_h_double_arrow left_side;      \
       ln -sf sb_h_double_arrow right_side;     \
       ln -sf cell target;                      \
       ln -sf X_cursor pirate; )

clean:
	@rm -f $(TARGETS)

realclean: clean
	@rm -rf x11-cursors

.PHONY: all clean realclean
