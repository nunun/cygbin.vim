if exists("g:plugin_cygbin")
    finish
endif
let g:plugin_cygbin = 1

" Windows only
if !has('win32')
    finish
endif

" get cygwindir from registry
let cygwin_dir = system("reg query \"HKEY_LOCAL_MACHINE\\Software\\Cygwin\\setup\" /v \"rootdir\"")
let cygwin_dir = substitute(cygwin_dir, '^.*REG_SZ\s\+\(.*\)\n\n', '\1', '')

" add to $PATH
if isdirectory(cygwin_dir)
    let $PATH = $PATH. ";". cygwin_dir. "\\bin"
endif
