if exists('g:vtexts')
   
   if !hlexists('VText')
      hi! link VText Normal
   endif

   au InsertLeave,BufWinEnter * call VTextInsert()
   call prop_type_add('vtext', {'highlight': 'VText'})

   def VTextInsert()
      for row in range(1, line('$'))
         call prop_clear(row)
         var current = getline(row)
         for key_icon in g:vtexts
            var start = match(current, key_icon[1])
            if start != -1
               call prop_add(row, start + 1, {'type': 'vtext', 'text': key_icon[0]})
            endif
            if len(key_icon) > 2 
               var end = matchend(current, key_icon[1])
               if end != -1
                  call prop_add(row, end + 1, {'type': 'vtext', 'text': key_icon[2]})
                  if len(key_icon) > 3 
                     call prop_add(row, 0, {'type': 'vtext', 'text': key_icon[3], 'text_align': 'right'})
                  endif
               endif
            endif
         endfor
      endfor
   enddef

endif
