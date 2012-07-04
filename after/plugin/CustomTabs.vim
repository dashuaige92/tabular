if !exists(':Tabularize')
  finish " Tabular.vim wasn't loaded
endif

let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern!  custom_tabs     /[^ ]\+/l2

AddTabularPattern!    equals_align           /=
AddTabularPattern!    colon_align            /^[^:]*/l0
AddTabularPattern!    comma_align            /^[^,]*,/
AddTabularPattern!    comma_align_all        /[^,]*,/
AddTabularPattern!    hash_colon_align       /\(^\s*\("[^"]*"\|'[^']*'\)\|:\)/l1
AddTabularPattern!    dotted_method_chain    /^[^\.]*/l0

let &cpo = s:save_cpo
unlet s:save_cpo
