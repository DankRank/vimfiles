.DELETE_ON_ERROR:
PACK_NAME=egor
PACK_BASE=$(PACK_NAME)/start
COMPONENTS=\
	$(PACK_BASE)/ukrainian-enhanced/keymap/ukrainian-enhanced.vim\
	$(PACK_BASE)/vimwiki/plugin/vimwiki.vim\
	$(PACK_BASE)/sensible/plugin/sensible.vim\
	$(PACK_BASE)/fugitive/plugin/fugitive.vim\
	$(PACK_BASE)/editorconfig/plugin/editorconfig.vim
.PHONY:all clean xinstall install-pack
all:$(PACK_NAME).zip
clean:
	$(RM) $(PACK_NAME).zip
	$(RM) -r $(PACK_NAME)
xinstall:$(PACK_NAME).zip vimrc
	cp $(PACK_NAME).zip vimrc $(HOME)/dotfiles/
install-pack:$(PACK_NAME).zip
	mkdir -p ~/.vim/pack
	unzip -o $(PACK_NAME).zip -d ~/.vim/pack
$(PACK_NAME).zip:$(COMPONENTS)
	$(RM) $(PACK_NAME).zip
	zip -D9r $(PACK_NAME).zip $(PACK_NAME)

# ukrainian-enhanced 1.3 https://www.vim.org/scripts/script.php?script_id=2165
$(PACK_BASE)/ukrainian-enhanced/keymap/ukrainian-enhanced.vim: ukrainian-enhanced.vim
	mkdir -p $(PACK_BASE)/ukrainian-enhanced/keymap
	ln ukrainian-enhanced.vim $(PACK_BASE)/ukrainian-enhanced/keymap/ukrainian-enhanced.vim
# vimwiki 2.4.1 https://github.com/vimwiki/vimwiki.git
$(PACK_BASE)/vimwiki/plugin/vimwiki.vim: vimwiki/plugin/vimwiki.vim
	mkdir -p $(PACK_BASE)/vimwiki
	cp -rl vimwiki/* $(PACK_BASE)/vimwiki/
# sensible master https://github.com/tpope/vim-sensible.git
$(PACK_BASE)/sensible/plugin/sensible.vim: vim-sensible/plugin/sensible.vim
	mkdir -p $(PACK_BASE)/sensible
	cp -rl vim-sensible/plugin $(PACK_BASE)/sensible/
# fugitive master https://github.com/tpope/vim-fugitive.git
$(PACK_BASE)/fugitive/plugin/fugitive.vim: vim-fugitive/plugin/fugitive.vim
	mkdir -p $(PACK_BASE)/fugitive
	cp -rl vim-fugitive/{autoload,doc,ftdetect,plugin,syntax} $(PACK_BASE)/fugitive/
# editorconfig master https://github.com/editorconfig/editorconfig-vim.git
$(PACK_BASE)/editorconfig/plugin/editorconfig.vim: editorconfig-vim/plugin/editorconfig.vim
	mkdir -p $(PACK_BASE)/editorconfig
	cp -rl editorconfig-vim/{autoload,doc,plugin} $(PACK_BASE)/editorconfig/
