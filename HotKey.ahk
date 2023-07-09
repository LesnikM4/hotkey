;AutoHotKey_v1.1 HotKey_v1.1 lesnikm4@gmail.com
;^ Ctrl, # Win, + Shift, ! Atl, >! RAlt (in keyboard), <^>! RAlt (in russhian keyboard)

Settings()
MouseButtonLeftHand()

#Down:: Volume(-2)
#Up:: Volume(+2)
#Left:: Light(-2)
#Right:: Light(+2)
#ESC:: PowerSleep()
#Z:: ColorFiltersCycle()

#K:: WindowMove("Up")
#J:: WindowMove("Down")
#H:: WindowMove("Left")
#L:: WindowMove("Right")
#`;:: WindowMaxMin()
#':: WindowMinimize()

^+Space:: MagickSelected()
^+!Space:: TransSelectedText("ru", "en")
<^>!+Space:: TransSelectedText("ru", "uk")
>^RAlt:: TransInput("auto", "ru")

#T:: Run debian
#F:: Run C:\Windows\explorer.exe ""C:\Users\%A_UserName%\Downloads"
#C:: Run C:\Windows\System32\calc.exe
#B:: Run .\PortableApps\GoogleChromePortable\GoogleChromePortable.exe
#A:: Run .\PortableApps\7-ZipPortable\7-ZipPortable.exe
#E:: Run .\PortableApps\gVimPortable\gVimPortable.exe
#S:: Run .\PortableApps\fscPortable\fscPortable.exe
#D:: Run .\PortableApps\qBittorrentPortable\qBittorrentPortable.exe

#PgUp:: SelectedTextUpper()
#PgDn:: SelectedTextTitle()
#Ins:: HotTrans("ru", "uk")
#Del:: Rand()
#V:: ShowPosCursor()

#M:: MouseButtonRevers()
CapsLock:: ChangeLanguageInput()

<^>!vk32::  SendOfCaps("{U+0040}","{U+0040}") ; 2 -> @ @
>!vk32::  SendOfCaps("{U+0040}","{U+0040}") ; 2 -> @ @
<^>!+vk32:: SendOfCaps("{U+0040}","{U+0040}") ; 2 -> @ @
>!+vk32:: SendOfCaps("{U+0040}","{U+0040}") ; 2 -> @ @
<^>!vk33::  SendOfCaps("{U+0023}","{U+0023}") ; 3 -> # #
>!vk33::  SendOfCaps("{U+0023}","{U+0023}") ; 3 -> # #
<^>!+vk33:: SendOfCaps("{U+0023}","{U+0023}") ; 3 -> # #
>!+vk33:: SendOfCaps("{U+0023}","{U+0023}") ; 3 -> # #
<^>!vk34::  SendOfCaps("{U+0024}","{U+0024}") ; 4 -> $ $
>!vk34::  SendOfCaps("{U+0024}","{U+0024}") ; 4 -> $ $
<^>!+vk34:: SendOfCaps("{U+0024}","{U+0024}") ; 4 -> $ $
>!+vk34:: SendOfCaps("{U+0024}","{U+0024}") ; 4 -> $ $
<^>!vk36::  SendOfCaps("{U+005E}","{U+005E}") ; 6 -> ^ ^
>!vk36::  SendOfCaps("{U+005E}","{U+005E}") ; 6 -> ^ ^
<^>!+vk36:: SendOfCaps("{U+005E}","{U+005E}") ; 6 -> ^ ^
>!+vk36:: SendOfCaps("{U+005E}","{U+005E}") ; 6 -> ^ ^
<^>!vk37::  SendOfCaps("{U+0026}","{U+0026}") ; 7 -> & &
>!vk37::  SendOfCaps("{U+0026}","{U+0026}") ; 7 -> & &
<^>!+vk37:: SendOfCaps("{U+0026}","{U+0026}") ; 7 -> & &
>!+vk37:: SendOfCaps("{U+0026}","{U+0026}") ; 7 -> & &
<^>!vkBF::  SendOfCaps("{U+002F}","{U+002F}") ; . -> / /
>!vkBF::  SendOfCaps("{U+002F}","{U+002F}") ; . -> / /
<^>!+vkBF:: SendOfCaps("{U+003F}","{U+003F}") ; , -> ? ?
>!+vkBF:: SendOfCaps("{U+003F}","{U+003F}") ; , -> ? ?
<^>!vkBC::  SendOfCaps("{U+002C}","{U+002C}") ; б -> , ,
>!vkBC::  SendOfCaps("{U+002C}","{U+002C}") ; б -> , ,
<^>!+vkBC:: SendOfCaps("{U+003C}","{U+003C}") ; Б -> < <
>!+vkBC:: SendOfCaps("{U+003C}","{U+003C}") ; Б -> < <
<^>!vkBE::  SendOfCaps("{U+002E}","{U+002E}") ; ю -> . .
>!vkBE::  SendOfCaps("{U+002E}","{U+002E}") ; ю -> . .
<^>!+vkBE:: SendOfCaps("{U+003E}","{U+003E}") ; Ю -> > >
>!+vkBE:: SendOfCaps("{U+003E}","{U+003E}") ; Ю -> > >
<^>!vkBA::  SendOfCaps("{U+003B}","{U+003B}") ; ж -> ; ;
>!vkBA::  SendOfCaps("{U+003B}","{U+003B}") ; ж -> ; ;
<^>!+vkBA:: SendOfCaps("{U+003A}","{U+003A}") ; Ж -> : :
>!+vkBA:: SendOfCaps("{U+003A}","{U+003A}") ; Ж -> : :
<^>!vkDB::  SendOfCaps("{U+005B}","{U+005B}") ; х -> [ [
>!vkDB::  SendOfCaps("{U+005B}","{U+005B}") ; х -> [ [
<^>!+vkDB:: SendOfCaps("{U+007B}","{U+007B}") ; Х -> { {
>!+vkDB:: SendOfCaps("{U+007B}","{U+007B}") ; Х -> { {
<^>!vkDD::  SendOfCaps("{U+005D}","{U+005D}") ; ъ -> ] ]
>!vkDD::  SendOfCaps("{U+005D}","{U+005D}") ; ъ -> ] ]
<^>!+vkDD:: SendOfCaps("{U+007D}","{U+007D}") ; Ъ -> } }
>!+vkDD:: SendOfCaps("{U+007D}","{U+007D}") ; Ъ -> } }
<^>!+vkDC:: SendOfCaps("{U+007C}","{U+007C}") ; / -> | |
>!+vkDC:: SendOfCaps("{U+007C}","{U+007C}") ; / -> | |
<^>!vkC0::  SendOfCaps("{U+0060}","{U+0060}") ; ` -> ` `
>!vkC0::  SendOfCaps("{U+0060}","{U+0060}") ; ` -> ` `
<^>!+vkC0:: SendOfCaps("{U+007E}","{U+007E}") ; ~ -> ~ ~
>!+vkC0:: SendOfCaps("{U+007E}","{U+007E}") ; ~ -> ~ ~
<^>!vkDE::  SendOfCaps("{U+0027}","{U+0027}") ; є -> ' '
>!vkDE::  SendOfCaps("{U+0027}","{U+0027}") ; є -> ' '
<^>!+vkDE:: SendOfCaps("{U+0022}","{U+0022}") ; Є -> " "
>!+vkDE:: SendOfCaps("{U+0022}","{U+0022}") ; Є -> " "
<^>!vk53::  SendOfCaps("{U+044B}","{U+042B}") ; і -> ы Ы
>!vk53::  SendOfCaps("{U+044B}","{U+042B}") ; і -> ы Ы
<^>!+vk53:: SendOfCaps("{U+042B}","{U+044B}") ; І -> Ы ы
>!+vk53:: SendOfCaps("{U+042B}","{U+044B}") ; І -> Ы ы
<^>!vk42::  SendOfCaps("{U+044A}","{U+042B}") ; и -> ъ Ъ
>!vk42::  SendOfCaps("{U+044A}","{U+042B}") ; и -> ъ Ъ
<^>!+vk42:: SendOfCaps("{U+042B}","{U+044A}") ; И -> Ъ ъ
>!+vk42:: SendOfCaps("{U+042B}","{U+044A}") ; И -> Ъ ъ
<^>!vk55::  SendOfCaps("{U+0491}","{U+0490}") ; г -> ґ Ґ
>!vk55::  SendOfCaps("{U+0491}","{U+0490}") ; г -> ґ Ґ
<^>!+vk55:: SendOfCaps("{U+0490}","{U+0491}") ; Г -> Ґ ґ
>!+vk55:: SendOfCaps("{U+0490}","{U+0491}") ; Г -> Ґ ґ
<^>!vk50::  SendOfCaps("{U+044D}","{U+042D}") ; з -> э Э
>!vk50::  SendOfCaps("{U+044D}","{U+042D}") ; з -> э Э
<^>!+vk50:: SendOfCaps("{U+042D}","{U+044D}") ; З -> Э э
>!+vk50:: SendOfCaps("{U+042D}","{U+044D}") ; З -> Э э
<^>!vk45::  SendOfCaps("{U+045E}","{U+040E}") ; у -> ў Ў
>!vk45::  SendOfCaps("{U+045E}","{U+040E}") ; у -> ў Ў
<^>!+vk45:: SendOfCaps("{U+040E}","{U+045E}") ; У -> Ў ў
>!+vk45:: SendOfCaps("{U+040E}","{U+045E}") ; У -> Ў ў
<^>!vk54::  SendOfCaps("{U+0451}","{U+0401}") ; е -> ё Ё
>!vk54::  SendOfCaps("{U+0451}","{U+0401}") ; е -> ё Ё
<^>!+vk54:: SendOfCaps("{U+0401}","{U+0451}") ; Е -> Ё ё
>!+vk54:: SendOfCaps("{U+0401}","{U+0451}") ; Е -> Ё ё

#U:: Reload
#Q:: ExitApp


Settings() {
    #NoEnv
    #SingleInstance, force
    #InstallMouseHook
    #UseHook
    SetWorkingDir %A_ScriptDir%\..\..\..\
    Menu, Tray, Icon, .\PortableApps\AutoHotKey\Script\HotKey.ico
    Menu, Tray, Add
    Menu, Tray, Add, Open Editor Script, OpenEditorScript
    Menu, Tray, Default, Open Editor Script
}

GetSelectedText() {
    last_clip := ClipBoardAll
    ClipBoard := ""
    Send ^c
    ClipWait, 0.1
    text := ClipBoard
    ClipBoard := last_clip
    return text
}

SelectedTextUpper() {
    Sleep 300
    source_text := GetSelectedText()
    StringUpper, up_text, source_text
    Send %up_text%
}

SelectedTextTitle() {
    Sleep 300
    source_text := GetSelectedText()
    StringUpper, up_text, source_text, T
    Send %up_text%
}

OpenEditorScript() {
    Run .\PortableApps\gVimPortable\gVimPortable.exe "C:\Users\%A_UserName%\PortableApps\AutoHotKey\Script\HotKey.ahk"
}

PowerSleep() {
    DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
}

ColorFiltersCycle() {
    RegRead, color_filtering_hotkey, HKEY_CURRENT_USER\Software\Microsoft\ColorFiltering, Active
    if (!color_filtering_hotkey)
        RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\ColorFiltering, HotkeyEnabled, 1

    RegRead, color_filtering_active, HKEY_CURRENT_USER\Software\Microsoft\ColorFiltering, Active
    RegRead, color_filtering_type, HKEY_CURRENT_USER\Software\Microsoft\ColorFiltering, FilterType
    if (!color_filtering_active) {
        RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\ColorFiltering, FilterType, 0
        Send ^#c
    } else if (color_filtering_active && !color_filtering_type) {
        RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\ColorFiltering, FilterType, 2
        Send ^#c
        Send ^#c
    } else if (color_filtering_active && color_filtering_type) {
        Send ^#c
    }
}

Volume(step) {
    abs_step := Abs(step)
    if (step>0)
        Send {VKAF %abs_step%}
    else
        Send {VKAE %abs_step%}
}

WindowMove(direction) {
    WinRestore A
    if (direction = "Left")
        WinMove, A,, 0, 0, % A_ScreenWidth/2, % A_ScreenHeight-35
    else if (direction = "Right")
        WinMove, A,, % A_ScreenWidth/2, 0, % A_ScreenWidth/2, % A_ScreenHeight-35
    else if (direction = "Down")
        WinMove, A,, 0, % (A_ScreenHeight-35)/2, %A_ScreenWidth%, % (A_ScreenHeight-35)/2
    else if (direction = "Up")
        WinMove, A,, 0, 0, %A_ScreenWidth%, % (A_ScreenHeight-35)/2
}

WindowMaxMin() {
    WinGet max_min, MinMax, A
    if (max_min = "0")
        WinMaximize A
    else
        WinRestore A
}

WindowMinimize() {
    WinMinimize A
}

MouseButtonRightHand() {
    button_state := DllCall("user32.dll\SwapMouseButton", "UInt", 0)
}

MouseButtonLeftHand() {
    button_state := DllCall("user32.dll\SwapMouseButton", "UInt", 1)
}

MouseButtonRevers() {
    button_state := DllCall("user32.dll\SwapMouseButton", "UInt", 1)
    if button_state <> 0
        button_state := DllCall("user32.dll\SwapMouseButton", "UInt", 0)
}

ShowPosCursor() {
    MouseGetPos, x, y
    Tooltip %x% %y%
}

lang_state := ""
ChangeLanguageInput() {
    WinGet, process_name, ProcessName, A
    WinGet, win_id,, A
    thread_id := dllCall("GetWindowThreadProcessId", "uint", win_id, "uint", 0)
    code_current_lang := dllCall("GetKeyboardLayout", "uint", thread_id)
    ControlGetFocus, control_nn, A

    if (process_name = "cmd.exe" or process_name = "wsl.exe" or process_name = "debian.exe") {
        global lang_state
        lang := lang_state
        if (lang = "")
            lang := code_current_lang

        code_current_lang := lang

        if (lang == 67699721)
            lang_state := "no eng"
        else
            lang_state := 67699721
    }

    ;EN=0x4090409 RU=0x4190419 UA=0000409
    if (code_current_lang == 67699721) {
        global lang_state
        lang_state := "no eng"
        lang_code := "0x0000422"
    }
    else {
        global lang_state
        lang_state := 67699721
        lang_code := "0x0000409"
    }
    PostMessage, 0x50,, %lang_code%, %control_nn%, A
}

SendOfCaps(send_caps_off, send_caps_on) {
    if GetKeyState("CapsLock", "T")
        Send %send_caps_on%
    else
        Send %send_caps_off%
}

LongPress(key_longpress) {
    this_hot_key = %A_ThisHotKey%
    if RegExMatch(this_hot_key, "\+vk*") {
        this_hot_key := SubStr(this_hot_key, 2)
        caps := 1
    }
    KeyWait, %this_hot_key%, T0.19
    if ErrorLevel {
        Send %key_longpress%
    } else {
        if caps
            Send +{%this_hot_key%}
        else
            Send {%this_hot_key%}
    }
}

Rand(min:=0, max:=1000, round:=2, round_fraction:="no") {
    min := min + 0.0
    max := max + 0.0
    Random rand, %min%, %max%
    if (!round_fraction == "no")
        rand := rand - Mod(rand, round_fraction)
    rand := Round(rand, 2)
    ToolTip min %min%`nmax %max%`nround %round%`n`n%rand%, 1550, 20
    Send %rand% {Enter}
}

MagickSelected() {
    curs_dollor := 36.56
    curs_euro := 40.34
    source_text := GetSelectedText()
    is_number := RegExMatch(sourceText, "^[0-9., €$]+$")
    if (is_number) {
        is_dollor := RegExMatch(source_text, "[$]")
        is_euro := RegExMatch(source_text, "€")
        is_grivna := RegExMatch(source_text, "₴")
        source_text := RegExReplace(source_text, "[,]", ".")
        source_text := RegExReplace(source_text, "[$€₴ ]", "")
        if (is_dollor) {
            summ := source_text * curs_dollor
            summ := Round(summ, 0)
            source_text := RegExReplace(source_text, "\G\d+?(?=(?:\d{3})+(?:\D|$))", "$0 ")
            summ := RegExReplace(summ, "\G\d+?(?=(?:\d{3})+(?:\D|$))", "$0 ")
            ToolTip %source_text%$`n`n%summ%грн., 1550, 20
        } else if (is_euro) {
            summ := source_text * curs_euro
            summ := Round(summ, 0)
            source_text := RegExReplace(source_text, "\G\d+?(?=(?:\d{3})+(?:\D|$))", "$0 ")
            summ := RegExReplace(summ, "\G\d+?(?=(?:\d{3})+(?:\D|$))", "$0 ")
            ToolTip %source_text%€`n`n%summ%грн., 1550, 20
        } else {
            summ := source_text / curs_dollor
            summ := Round(summ, 2)
            source_text := RegExReplace(source_text, "\G\d+?(?=(?:\d{3})+(?:\D|$))", "$0 ")
            summ := RegExReplace(summ, "\G\d+?(?=(?:\d{3})+(?:\D|$))", "$0 ")
            ToolTip %source_text%грн.`n`n%summ%$, 1550, 20
        }
    }
    else {
        TransSelectedText("auto", "ru")
    }
}

TransSelectedText(from_lang, to_lang) {
    source_text := GetSelectedText()
    if (source_text) {
        trans_text := GoogleTranslate(source_text, from_lang, to_lang, True)
        ToolTip %source_text%`n`n%trans_text%, 1550, 20
    } else {
        ToolTip
    }
}

TransAndReplaceSelectedText(from_lang, to_lang) {
    source_text := GetSelectedText()
    if (source_text) {
        trans_text := GoogleTranslate(source_text, from_lang, to_lang, True)
        ToolTip %source_text%`n`n%trans_text%, 1550, 20
        Send %trans_text%
    } else {
        ToolTip
    }
}

HotTrans(from_lang, to_lang) {
    old_text := GetSelectedText()
    TransAndReplaceSelectedText(from_lang, to_lang)
    StringLower, lower_text, old_text
    ClipBoard := lower_text
}

TransInput(from_lang, to_lang) {
    Input source_text, T10, {Enter}{Esc}
    if (source_text) {
        trans_text := GoogleTranslate(source_text, from_lang, to_lang, True)
        ToolTip %source_text%`n`n%trans_text%, 1550, 20
        Sleep 200
        ComObjCreate("SAPI.SpVoice").Speak(source_text)
    } else {
        ToolTip
    }
}

; Код перевода скопирован от уважаемого teadrinker, http://forum.script-coding.com/viewtopic.php?id=4492
CreateUrl(text, lng) {
   static JS := CreateScriptObj()
   url := "https://translate.google.com/translate_tts?ie=UTF-8&tl="
         . lng . "&total=1&idx=0&client=t&prev=input&textlen="
         . StrLen(text) . "&tk=" . JS.eval("tk").(text) . "&q=" . EncodeDecodeURI(text)
   Return url
}

EncodeDecodeURI(str, encode := true, component := true) {
        static JS
        ( !JS && JS := CreateScriptObj() )
   for k, v in [["\", "\\"], ["'", "\'"], ["`r", "\r"], ["`n", "\n"]]
      str := StrReplace(str, v[1], v[2])
   Return JS.eval( (encode ? "en" : "de") . "codeURI" . (component ? "Component" : "") . "('" . str . "')" )
}

GoogleTranslate(str, ByRef from, to := "en", detail := False) {
   static JS := CreateScriptObj()

   if !Ping4("translate.google.com")
                Return "Error Ping Googel Trans" . ErrorLevel

   json := SendRequest(JS, str, to, from)
   try oJSON := JS.JSON.parse(json)
        catch {
                Clipboard := json
                Return "Error parse json`n" . SubStr(json, 1, 500)
        }
   if !IsObject(oJSON[1])  {
      Loop % oJSON[0].length
         trans .= oJSON[0][A_Index - 1][0]
   }
   else  {
      MainTransText := oJSON[0][0][0]
      Loop % oJSON[1].length  {
         trans .= "`n+"
         obj := oJSON[1][A_Index-1][1]
;         if (detail = True) {
;             Loop % obj.length  {
;                txt := obj[A_Index - 1]
;                trans .= (MainTransText = txt ? "" : "`n" txt)
;             }
;         }
      }
   }
   if !IsObject(oJSON[1])
      MainTransText := trans := Trim(trans, ",+`n ")
   else
      trans := MainTransText . "`n+`n" . Trim(trans, ",+`n ")

   from := oJSON[2]
   trans := Trim(trans, ",+`n ")
   Return trans
}

CreateScriptObj() {
   static doc, JS
   if !doc {
      doc := ComObjCreate("htmlfile")
      doc.write("<meta http-equiv='X-UA-Compatible' content='IE=9'>")
      JS := doc.parentWindow
      (doc.documentMode < 9 && JS.execScript())
                JS.eval("delete ActiveXObject; delete GetObject;")
                JS.eval( GetJScript() )
   }
   Return JS
}

GetJScript()
{
   script =
   (
      var TKK = ((function() {
        var a = 561666268;
        var b = 1526272306;
        return 406398 + '.' + (a + b);
      })());

      function b(a, b) {
        for (var d = 0; d < b.length - 2; d += 3) {
            var c = b.charAt(d + 2),
                c = "a" <= c ? c.charCodeAt(0) - 87 : Number(c),
                c = "+" == b.charAt(d + 1) ? a >>> c : a << c;
            a = "+" == b.charAt(d) ? a + c & 4294967295 : a ^ c
        }
        return a
      }

      function tk(a) {
          for (var e = TKK.split("."), h = Number(e[0]) || 0, g = [], d = 0, f = 0; f < a.length; f++) {
              var c = a.charCodeAt(f);
              128 > c ? g[d++] = c : (2048 > c ? g[d++] = c >> 6 | 192 : (55296 == (c & 64512) &&
                                  f + 1 < a.length && 56320 == (a.charCodeAt(f + 1) & 64512) ?
              (c = 65536 + ((c & 1023) << 10) + (a.charCodeAt(++f) & 1023), g[d++] = c >> 18 | 240,
              g[d++] = c >> 12 & 63 | 128) : g[d++] = c >> 12 | 224, g[d++] = c >> 6 & 63 | 128), g[d++] = c & 63 | 128)
          }
          a = h;
          for (d = 0; d < g.length; d++) a += g[d], a = b(a, "+-a^+6");
          a = b(a, "+-3^+b+-f");
          a ^= Number(e[1]) || 0;
          0 > a && (a = (a & 2147483647) + 2147483648);
          a `%= 1E6;
          return a.toString() + "." + (a ^ h)
      }
   )
   Return script
}

SendRequest(JS, str, tl, sl, proxy := "") {
   static Whr, userAgent := "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0"
   ComObjError(false)
   if !Whr {
      Whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
      ( proxy && Whr.SetProxy(2, proxy) )
      Whr.Open("GET", "https://translate.google.com", true)
      Whr.SetRequestHeader("User-Agent", userAgent)
      Whr.Send()
      Whr.WaitForResponse(-1)
   }
   Whr.Open("POST", "https://translate.googleapis.com/translate_a/single?client=gtx"
                ; or https://clients5.google.com/translate_a/t?client=dict-chrome-ex
      . "&sl=" . sl . "&tl=" . tl . "&hl=" . tl
      . "&dt=at&dt=bd&dt=ex&dt=ld&dt=md&dt=qca&dt=rw&dt=rm&dt=ss&dt=t&ie=UTF-8&oe=UTF-8&otf=0&ssel=0&tsel=0&pc=1&kc=1"
      . "&tk=" . JS.eval("tk").(str), true)

   Whr.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8")
   Whr.SetRequestHeader("User-Agent", userAgent)
   Whr.Send("q=" . EncodeDecodeURI(str))
   Whr.WaitForResponse(-1)
   Return Whr.responseText
}

Ping4(Addr, ByRef Result := "", Timeout := 1024) {
   Static WSADATAsize := (2 * 2) + 257 + 129 + (2 * 2) + (A_PtrSize - 2) + A_PtrSize
   OrgAddr := Addr
   Result := ""
   VarSetCapacity(WSADATA, WSADATAsize, 0)
   if (Err := DllCall("Ws2_32\WSAStartup", "UShort", 0x0202, "Ptr", &WSADATA, "Int")) {
      ErrorLevel := "WSAStartup failed with error " . Err
      Return
   }
   if !RegExMatch(Addr, "^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$") {
      if !(HOSTENT := DllCall("Ws2_32\gethostbyname", "AStr", Addr, "UPtr")) {
         DllCall("Ws2_32\WSACleanup")
         ErrorLevel := "gethostbyname failed with error " . DllCall("Ws2_32\WSAGetLastError", "Int")
         Return
      }
      PAddrList := NumGet(HOSTENT + 0, (2 * A_PtrSize) + 4 + (A_PtrSize - 4), "UPtr")
      PIPAddr := NumGet(PAddrList + 0, 0, "UPtr")
      Addr := StrGet(DllCall("Ws2_32\inet_ntoa", "UInt", NumGet(PIPAddr + 0, 0, "UInt"), "UPtr"), "CP0")
   }
   INADDR := DllCall("Ws2_32\inet_addr", "AStr", Addr, "UInt")
   if (INADDR = 0xFFFFFFFF) {
      ErrorLevel := "inet_addr failed for address " . Addr
      Return
   }
   DllCall("Ws2_32\WSACleanup")
   HMOD := DllCall("LoadLibrary", "Str", "Iphlpapi.dll", "UPtr")
   Err := ""
   if (HPORT := DllCall("Iphlpapi\IcmpCreateFile", "UPtr")) {
      REPLYsize := 32 + 8
      VarSetCapacity(REPLY, REPLYsize, 0)
      if DllCall("Iphlpapi\IcmpSendEcho", "Ptr", HPORT, "UInt", INADDR, "Ptr", 0, "UShort", 0, "Ptr", 0
                                                                                                         , "Ptr", &REPLY, "UInt", REPLYsize, "UInt", Timeout, "UInt")
                {
         Result := {}
         Result.InAddr := OrgAddr
         Result.IPAddr := StrGet(DllCall("Ws2_32\inet_ntoa", "UInt", NumGet(Reply, 0, "UInt"), "UPtr"), "CP0")
         Result.RTTime := NumGet(Reply, 8, "UInt")
      }
      else
         Err := "IcmpSendEcho failed with error " . A_LastError
      DllCall("Iphlpapi\IcmpCloseHandle", "Ptr", HPORT)
   }
   else
      Err := "IcmpCreateFile failed to open a port!"
        DllCall("FreeLibrary", "Ptr", HMOD)
   if (Err) {
      ErrorLevel := Err
      Return
   }
   ErrorLevel := 0
   Return Result.RTTime
}


; gist.github.com/krrr/3c3f1747480189dbb71f
Light(step) {
    service := "winmgmts:{impersonationLevel=impersonate}!\\.\root\WMI"
    monitors := ComObjGet(service).ExecQuery("SELECT * FROM WmiMonitorBrightness WHERE Active=TRUE")
    monMethods := ComObjGet(service).ExecQuery("SELECT * FROM wmiMonitorBrightNessMethods WHERE Active=TRUE")
    minBrightness := 3  ; level below this is identical to this

    for i in monitors {
        curt := i.CurrentBrightness
        break
    }
    if (curt < minBrightness)  ; parenthesis is necessary here
        curt := minBrightness
    toSet := curt + step*2
    if (toSet > 100)
        return
    if (toSet < minBrightness)
        toSet := minBrightness

    for i in monMethods {
        i.WmiSetBrightness(1, toSet)
        break
    }
}
