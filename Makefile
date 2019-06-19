NEW_RCF="${PWD}/vimrc"
NEW_CFG="${PWD}/vim"

RCF_PATH="${HOME}/.vimrc"
CFG_PATH="${HOME}/.vim"

.PHONY: install get-submodules check-if-safe 

install: get-submodules check-if-safe
	ln -s "${NEW_RCF}" "${RCF_PATH}"
	ln -s "${NEW_CFG}" "${CFG_PATH}"

get-submodules:
	git submodule update --init --recursive

check-if-safe:
	@(test ! -e ${RCF_PATH} && test ! -h ${RCF_PATH}) || (echo "${RCF_PATH} exists already. Aborting." && error)
	@(test ! -e ${CFG_PATH} && test ! -h ${CFG_PATH}) || (echo "${CFG_PATH} exists already. Aborting." && error)
