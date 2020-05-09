" based on two-firewatch's airline theme

let g:airline#themes#github#palette = {}

function! airline#themes#github#refresh()
  let g:airline#themes#github#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = airline#themes#get_highlight('airlineN1')
  let s:N2 = airline#themes#get_highlight('airlineN2')
  let s:N3 = airline#themes#get_highlight('airlineN3')
  let g:palette_normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#github#palette.normal = extend(g:palette_normal, {
        \ 'airline_warning': [airline#themes#get_highlight('airlineWarning')],
        \ 'airline_error': [airline#themes#get_highlight('airlineError')],
        \ 'airline_term': [airline#themes#get_highlight('airlineTerm')],
        \ })

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#github#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = airline#themes#get_highlight('airlineInsert1')
  let s:I2 = airline#themes#get_highlight('airlineInsert2')
  let s:I3 = s:N3
  let g:palette_insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#github#palette.insert = extend(g:palette_insert, {
        \ 'airline_warning': [airline#themes#get_highlight('airlineWarning')],
        \ 'airline_error': [airline#themes#get_highlight('airlineError')],
        \ 'airline_term': [airline#themes#get_highlight('airlineTerm')],
        \ })
  let g:airline#themes#github#palette.insert_modified = g:airline#themes#github#palette.normal_modified

  let s:R1 = airline#themes#get_highlight('airlineReplace1')
  let s:R2 = airline#themes#get_highlight('airlineReplace2')
  let s:R3 = s:N3
  let g:palette_replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#github#palette.replace = extend(g:palette_replace, {
        \ 'airline_warning': [airline#themes#get_highlight('airlineWarning')],
        \ 'airline_error': [airline#themes#get_highlight('airlineError')],
        \ 'airline_term': [airline#themes#get_highlight('airlineTerm')],
        \ })
  let g:airline#themes#github#palette.replace_modified = g:airline#themes#github#palette.normal_modified

  let s:V1 = airline#themes#get_highlight('airlineVisual1')
  let s:V2 = airline#themes#get_highlight('airlineVisual2')
  let s:V3 = s:N3
  let g:palette_visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#github#palette.visual = extend(g:palette_visual, {
        \ 'airline_warning': [airline#themes#get_highlight('airlineWarning')],
        \ 'airline_error': [airline#themes#get_highlight('airlineError')],
        \ 'airline_term': [airline#themes#get_highlight('airlineTerm')],
        \ })
  let g:airline#themes#github#palette.visual_modified = g:airline#themes#github#palette.normal_modified

  let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['StatusLineNC', 'bg'])
  let g:palette_inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#github#palette.inactive = extend(g:palette_inactive, {
        \ 'airline_warning': [airline#themes#get_highlight('airlineWarning')],
        \ 'airline_error': [airline#themes#get_highlight('airlineError')],
        \ 'airline_term': [airline#themes#get_highlight('airlineTerm')],
        \ })
  let g:airline#themes#github#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ],
        \ 'airline_warning': [airline#themes#get_highlight('airlineWarning')],
        \ 'airline_error': [airline#themes#get_highlight('airlineError')],
        \ 'airline_term': [airline#themes#get_highlight('airlineTerm')],
        \ }
endfunction

call airline#themes#github#refresh()

