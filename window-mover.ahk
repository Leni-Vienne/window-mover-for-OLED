MoveAllWindow(addedX,addedY)
{
	Loop,10
	{
		WinGet,Windows,List
		Loop,%Windows%
		{
			id := "ahk_id " . Windows%A_Index%
			WinGetTitle,name,%id%			
			WinGetPos, X, Y, W, H, %name%			
			newX := X + addedX
			newY := Y + addedY
			;MsgBox, %name%, old %X%,%Y%, new %newX%,%newY%
			WinMove %name%,, newX, newY
		}
		Sleep, interval
	}
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