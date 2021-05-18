 -- Notepad (application for HK-DOS and PTerminal) 
 -- (C) HKprogram


-- Taking this script of any kind is not permitted




for i = 1, 900 do
  print()
end
print("N   O   T   E   P   A   D")
print()
print("Created With Lua 5.1.5")
print("-------------------------")
print("Type 'EXIT' To exit")
print()
repeat
  ExitNotepad = io.read()
      if ExitNotepad ~= "NLine" then  -- NewLine Command
        print()
      end
    if ExitNotepad == "SetNum" then -- Sets a saveslot of a specific word
      local Num = io.read()
      local CurNum = Num
      print("Num set to "..Num)
    end
    if ExitNotepad == "GetNum" then -- Checks current saveslot
      print("Current Num is "..Num)
    end
    if ExitNotepad == "PasteText Lines" then -- paste text written and multiply it as many times as intercepted
      print()
      print("Line value?")
      local PasteText_LinesTimes = io.read()
      print()
      print("What Text To paste?")
      local PasteText_LinesText = io.read()
      for i = 1,PasteText_LinesTimes do
        print(PasteText_LinesText)
      end
    end
    if ExitNotepad == "clear-notepad" then -- clears document
      print("Clearing out paper...")
      socket.sleep(0.14)
      print("Creating New paper...")
      socket.sleep(0.08)
      for i = 1,1000 do
        print()
      end
    end
    if ExitNotepad == "input-date: UTC" then
      curTimeNotepad = os.time();
      print(os.date('%Y-%m-%d-%H:%M:%S', curTimeNotepad))
    end
    if ExitNotepad == "InputVal: document" then -- prints spefitic word from saveslot
      print(Num)
    end
    until ExitNotepad == "EXIT" -- App exit
    print("Closing...")
    socket.sleep(0.1)
    for i = 1, 7000 do -- Repeat line 7000 times to clear
      print()
  end
