!#Left::
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  sleep, 5
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return

!#Right::
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  sleep, 5
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return

Capslock::Esc


^!T:: Run wt -p "Ubuntu"