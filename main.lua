--[[

__________       __          __          
\______   \_____/  |______ _/  |_  ____  
 |     ___/  _ \   __\__  \\   __\/  _ \ 
 |    |  (  <_> )  |  / __ \|  | (  <_> )
 |____|   \____/|__| (____  /__|  \____/ 
                          \/             
  __                       .__              .__   
_/  |_  ___________  _____ |__| ____ _____  |  |  
\   __\/ __ \_  __ \/     \|  |/    \\__  \ |  |  
 |  | \  ___/|  | \/  Y Y  \  |   |  \/ __ \|  |__
 |__|  \___  >__|  |__|_|  /__|___|  (____  /____/
           \/            \/        \/     \/      
  
  Developed by HxKprogram using lua 5.1.5

  2021 april project

]]


local socket = require("socket") -- Download socket library if you have not done that yet, Or if it's already in your lua intercepter

-- Variables [

-- Logs
local DvRRunLogVar = ""
local PTerminalLock = "0410" -- Probably needed to check the source code to find the code? ;)
local TermSourceLockStatus = false


function DvRRunLog(i)
  DvRRunLogVar = "Recent command ran: "..i
end

print("Potato.lua Terminal loaded")

repeat
  print()
  local TermTextCurrent = "%Term%>"
  local TermText = io.write(TermTextCurrent)
  local input = io.read()
  if input == "Term.say" then
    DvRRunLog("Term.say")
    local TermSayHelp = io.write("What To say?: ")
    local TermSayData = io.read()
    print(TermSayData)
  end
  if input == "Term.Run:BCommand_ERR.lua" then
    DvRRunLog("Term.Run")
    print("PTerm: Error Occured, Bad command")
  end
  if input == "Term.Run:DvRRunLog.log" then
    print(DvRRunLogVar)
  end
  if input == "Term.home.date" then
    DvRRunLog("Term.home.date")
    print(os.date('!%Y-%m-%d-%H:%M:%S GMT', curTime)) -- Shows Current GMT Time, And GMT Time only. Will get other timezones later
  end
  if input == "Term.wait" then
    DvRRunLog("Term.wait")
    local SToWait = io.read()
    socket.sleep(SToWait)
  end
  if input == "Term.RunCmd:Math.random()" then
    print(math.random());
  end
  if input == "Term.cons.clear" then
    print("\033[2J\033[0;0H");
  end
  if input == "Term.storage.source?lua:print()" then
    if TermSourceLockStatus == false then
      print("The source code is locked")
    elseif TermSourceLockStatus == true then
      print("https://raw.githubusercontent.com/HKprogramWasTaken/Potato-Terminal-Lua-5.1.5-/main/main.lua")
    end
  end
  if input == "Term.storage.source?modify:restart()" then
    for i = 1,900 do
      print()
    end
    print("system: restarted a system file 'source'")
  end
  if input == "Term.DvRRunLog?modify:edit()" then
    local ModifyDvRRunLogManual = io.read()
    DvRRunLogVar = "Recent Command run: "..ModifyDvRRunLogManual
    print("DvRRunLog Was modified")
  end
  if input == "Term.storage.source?modify:unlock()" then

    -- Unlocking the source code link
    repeat
      print()
      print("Please Type The Password")
      local TermSourceLockSubmit = io.read()
      if TermSourceLockSubmit ~= PTerminalLock then
        print("Wrong Password")
      elseif TermSourceLockSubmit == PTerminalLock then
        print("Right Password")
        TermSourceLockStatus = true
        print("Unlocked source code")
      end
    until TermSourceLockSubmit == PTerminalLock

  end
until input == "Term.stop()" -- System ended


print()
print("Potato Terminal Ended")
