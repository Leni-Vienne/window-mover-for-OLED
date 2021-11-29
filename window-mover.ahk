MoveAllWindow(addedX,addedY)
{
	WinGet,Windows,List

	Loop, 10{
		windowsData := []
		count := 0
		Loop,%Windows%
		{
			id := "ahk_id " . Windows%A_Index%
			WinGetTitle,name,%id%			
			WinGetPos, X, Y, W, H, %name%

			windowsData[count,0] := name
			windowsData[count,1] := (X+addedX)
			windowsData[count,2] := (Y+addedY)
			
			;a := windowsData[count,0]
			;b := windowsData[count,1]
			;c := windowsData[count,2]
			;MsgBox, a %a%, b %b%, c %c%, count %count%
			count += 1
		}
		Loop % i count
		{
			WinMove % windowsData[A_Index,0],, % windowsData[A_Index,1], % windowsData[A_Index,2]
		}
	}
	Sleep, interval
}

MainProgram()
{
	state := 0
	Loop
	{
		Switch state
		{			
			case 0:
				MoveAllWindow(1,0)
			case 1:
				MoveAllWindow(0,1)
			case 2:
				MoveAllWindow(-1,0)
			case 3:
				MoveAllWindow(0,-1)
			Default:
				MsgBox, default
		}
		state := state + 1
		state := mod(state,4)
	}
}

interval := 1000
MainProgram()
