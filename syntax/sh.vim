" conceal and obscure shell secrets like PGPASSWORD, etc
syn match shSecret /.*\(PASS\|PASSWORD\|KEY\|TOKEN\)=/ nextgroup=shSecretValue
syn match shSecretValue /.*/  contained conceal cchar=🔒
hi shSecretValue ctermfg=red ctermbg=red
highlight Conceal ctermbg=none ctermfg=none
