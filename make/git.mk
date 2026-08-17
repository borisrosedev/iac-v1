.PHONY: g.head g.f.refs g.remote g.info
g.f.refs:
	@find .git/refs
g.head:
	@cat .git/HEAD
g.remote:
	@cat .git/refs/remotes/origin/main
g.log:
	@git log --pretty=oneline  main
g.info:
	@$(call log,➡ Git sha ...)
	echo $(GIT_SHA)
