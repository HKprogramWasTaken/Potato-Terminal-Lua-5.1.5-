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


local socket = require("socket")

-- Variables [

-- Logs
local DvRRunLogVar = ""
local PTerminalSourceLock = ""
local TermSourceLockStatus = false


function DvRRunLog(i)
  DvRRunLogVar = "Recent command ran: "..i
end

print("Potato.lua Terminal loaded")

function PTerminalLogo()
  print("__________       __          __          ")
  print("\______   \_____/  |______ _/  |_  ____  ")
  print(" |     ___/  _ \   __\__  \\   __\/  _ \ ")
  print(" |    |  (  <_> )  |  / __ \|  | (  <_> )")
  print(" |____|   \____/|__| (____  /__|  \____/ ")
  print("                          \/             ")
print("  __                       .__              .__   ")
print("_/  |_  ___________  _____ |__| ____ _____  |  |  ")
print("\   __\/ __ \_  __ \/     \|  |/    \\__  \ |  |  ")
print(" |  | \  ___/|  | \/  Y Y  \  |   |  \/ __ \|  |__")
print(" |__|  \___  >__|  |__|_|  /__|___|  (____  /____/")
print("           \/            \/        \/     \/      ")
end

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
    print(os.date('!%Y-%m-%d-%H:%M:%S GMT', curTime))
  end
  if input == "Term.wait" then
    DvRRunLog("Term.wait")
    local SToWait = io.read()
    socket.sleep(SToWait)
  end
  if input == "Term.RunCmd:Math.random()" then
    print(math.random());
  end
  if input == "Term.RunCmd?Create:Math.random()" then
    print()
    print("A new variable was created with content (math.random())")
    local NewVariable1 = math.random()
    print("Variable name: NewVariable1 with Math Content: "..NewVariable1)
  end
  if input == "Term.cons.clear" then
    print("\033[2J\033[0;0H");
  end
  if input == "Term.storage.source?lua:print()" then
    if TermSourceLockStatus == false then
      print("The source code is locked")
    elseif TermSourceLockStatus == true then
      print("")
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
    print("")
  end
until input == "Term.stop()"


print()
print("Potato Terminal Ended")
