.DELETE_ON_ERROR:
PACK_NAME=egor
PACK_BASE=$(PACK_NAME)/start
COMPONENTS=\
	$(PACK_BASE)/CSApprox/plugin/CSApprox.vim\
	$(PACK_BASE)/ukrainian-enhanced/keymap/ukrainian-enhanced.vim\
	$(PACK_BASE)/vimwiki/plugin/vimwiki.vim
.PHONY:all clean
all:$(PACK_NAME).zip
clean:
	$(RM) $(PACK_NAME).zip
	$(RM) -r $(PACK_NAME)
egor.zip:$(COMPONENTS)
	$(RM) $(PACK_NAME).zip
	zip -D9r $(PACK_NAME).zip $(PACK_NAME)

# CSApprox 4.00 https://www.vim.org/scripts/script.php?script_id=2390
$(PACK_BASE)/CSApprox/plugin/CSApprox.vim:CSApprox.zip CSApprox.patch
	mkdir -p $(PACK_BASE)/CSApprox
	unzip -o CSApprox.zip -d $(PACK_BASE)/CSApprox
	patch -nNi CSApprox.patch $(PACK_BASE)/CSApprox/plugin/CSApprox.vim
# ukrainian-enhanced 1.3 https://www.vim.org/scripts/script.php?script_id=2165
$(PACK_BASE)/ukrainian-enhanced/keymap/ukrainian-enhanced.vim: ukrainian-enhanced.vim
	mkdir -p $(PACK_BASE)/ukrainian-enhanced/keymap
	ln ukrainian-enhanced.vim $(PACK_BASE)/ukrainian-enhanced/keymap/ukrainian-enhanced.vim
# vimwiki 2.4.1 https://github.com/vimwiki/vimwiki.git
$(PACK_BASE)/vimwiki/plugin/vimwiki.vim: vimwiki/plugin/vimwiki.vim
	mkdir -p $(PACK_BASE)/vimwiki
	cp -rl vimwiki/* $(PACK_BASE)/vimwiki/