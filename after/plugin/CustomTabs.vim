if !exists(':Tabularize')
  finish " Tabular.vim wasn't loaded
endif

let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern!  custom_tabs     /[^ ]\+/l2

AddTabularPattern!    space_align        /\S\+/l1l0
AddTabularPattern!    ampersand_align        /\s*\zs&\ze\s*/
AddTabularPattern!    equals_align           /^[^=]*/l0
AddTabularPattern!    colon_align            /^[^:]*/l0
AddTabularPattern!    comma_align            /^[^,]*,\|^[^,]*$/
AddTabularPattern!    comma_align_all        /[^,]*,/
AddTabularPattern!    hash_colon_align       /\(^\s*\("[^"]*"\|'[^']*'\)\|:\)/l1
AddTabularPattern!    dotted_method_chain    /^[^\.]*/l0
AddTabularPattern!    first_line_equals      /=.*$\|^\s*\zs  [^=]\+$/

let &cpo = s:save_cpo
unlet s:save_cpo
