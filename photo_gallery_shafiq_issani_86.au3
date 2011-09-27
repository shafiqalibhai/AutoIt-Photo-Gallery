;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;     NAME : SHAFIQ ISSANI'S PHOTO GALLERY                                               ;;
;;     APPLICATION : PHOTO GALLERY                                                        ;;
;;     pRIMARY PURPOSE : IMPLEMENT TAB AND FADE EFFECTS                                   ;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




#include <GuiConstants.au3>

; GUI
$hwnd = GuiCreate("Shafiq Issani's Photo Gallery V2.0", 785, 535)

GuiSetIcon(@SystemDir & "\mspaint.exe", 0)

; TAB
GuiCtrlCreateTab(5, 5, 760, 530)
GuiCtrlCreateTabItem("Me Myself and I")
GuiCtrlCreatePic("1.jpg",10,35, 420,495)
; LABEL
GuiCtrlCreateLabel("Caption : " & @CRLF & @CRLF & "This " & _ 
"snap was taken by me in Panaji , when I was testing Nokia 6300 at my Uncle's place.", 480, 170, 255, 60)
GuiCtrlSetBkColor(-1, 0xE0E0E0)

GuiCtrlCreateTabItem("Cruising")
GuiCtrlCreatePic("2.jpg",90,35, 570,435)
; LABEL
GuiCtrlCreateLabel("Caption : " & @CRLF & @CRLF & "On the cruise Santa Maria.", 250, 485, 255, 40)
GuiCtrlSetBkColor(-1, 0xE0E0E0)

GuiCtrlCreateTabItem("12th Grade")
GuiCtrlCreatePic("3.jpg",10,35, 425,495)
; LABEL
GuiCtrlCreateLabel("Caption : " & @CRLF & @CRLF & "Well, " & _ 
"I know I look dorky... I was the Yellow house captain. :(", 475, 170, 255, 60)
GuiCtrlSetBkColor(-1, 0xE0E0E0)

GuiCtrlCreateTabItem("Colva Beach 1")
GuiCtrlCreatePic("4.jpg",90,35, 570,450)
; LABEL
GuiCtrlCreateLabel("Caption : " & @CRLF & @CRLF & "This is my fav. beach.", 250, 490, 255, 40)
GuiCtrlSetBkColor(-1, 0xE0E0E0)

GuiCtrlCreateTabItem("Colva Beach 2")
GuiCtrlCreatePic("5.jpg",90,35, 570,450)
; LABEL
GuiCtrlCreateLabel("Caption : " & @CRLF & @CRLF & "This is my fav. beach..", 250, 490, 255, 40)
GuiCtrlSetBkColor(-1, 0xE0E0E0)

GuiCtrlCreateTabItem("Colva Beach 3")
GuiCtrlCreatePic("6.jpg",90,35, 570,450)
; LABEL
GuiCtrlCreateLabel("Caption : " & @CRLF & @CRLF & "This is my fav. beach.", 250, 490, 255, 40)
GuiCtrlSetBkColor(-1, 0xE0E0E0)

DllCall("user32.dll", "int", "AnimateWindow", "hwnd", $hwnd, "int", 1000, "long", 0x00080000);fade-in

; GUI MESSAGE LOOP
GuiSetState()
While GuiGetMsg() <> $GUI_EVENT_CLOSE
WEnd
DllCall("user32.dll", "int", "AnimateWindow", "hwnd", $hwnd, "int", 300, "long", 0x00090000);fade-out