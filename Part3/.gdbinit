# Gdb init file for linked list debugging
# $PWD/.gdbinit
define p_generic_list
  set var $n = $arg0
  while $n
    print *($n)
    set var $n = $n->next
  end
end

document p_generic_list
        p_generic_list LIST_HEAD_POINTER
        Print all the fields of the nodes in the linked list pointed to by LIST_HEAD_POINTER. Assumes there is a next field in the struct.
end



define indentby
    printf "\n"
    set $i_$arg0 = $arg0
    while $i_$arg0 > 10
        set $i_$arg0 = $i_$arg0 - 1
        printf "%c", ' '
    end
end