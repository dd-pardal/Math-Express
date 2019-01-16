#SingleInstance
#Hotstring EndChars +-*/()[]{}:;'"/\,.?!`n `t
global License := "
(
Math Express - Introduza expressões matemáticas em qualquer lugar.

Copyright (C) 2019  Duarte Pardal

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.
)"

global KeyReference := {
	"Down": ["⇔","↔"],
	"Left": ["⇐","←"],
	"Right": ["⇒","→"],
	".": ["⋯","⋰","⋱"],
	"+": ["±","⁺"],
	"=": ["≠","≈","≉","⁼"],
	"<": ["≤"],
	">": ["≥"],
	"2": ["²","√"],
	"3": ["³","∛"],
	"4": ["⁴","∜"],
	"5": ["⁵","‰"],
	"6": ["⁶"],
	"7": ["⁷"],
	"8": ["∞","∝","⁸	"],
	"9": ["⁹"],
	"0": ["∅"],
	"+1": ["₁"],
	"+2": ["₂"],
	"+3": ["₃"],
	"+4": ["₄"],
	"+5": ["₅"],
	"+6": ["₆"],
	"+7": ["₇"],
	"+8": ["₈"],
	"+9": ["₉"],
	"+0": ["₀"],
	"+=": ["₌"],
	"++": ["₊"],
	"-": ["⁻"],
	"+-": ["₋"],
	"a": ["α"], "+a": ["∀"],
	"b": ["β"], "+b": ["∴","∵"],
	"c": ["⊂","⊄","⊆","⊈"], "+c": ["ℂ"],
	"d": ["∂","δ","Δ"],
	"e": ["∈","∉"], "+e": ["∃","𝔼","ε","η"],
	"f": ["φ","Φ"],
	"g": ["γ","Γ"],
	"h": ["χ"],
	"i": ["∫","∮"],
	"k": ["κ"],
	"l": ["λ","Λ"],
	"m": ["μ"],
	"n": ["¬","ν"], "+n": ["ℕ"],
	"o": ["ω","Ω"],
	"p": ["π","ψ","Π","Ψ"], "+p": ["∏","ℙ"],
	"+q": ["ℚ"],
	"r": ["ρ","Ρ"], "+r": ["ℝ"],
	"s": ["σ","Σ"], "+s": ["∑"],
	"t": ["θ","Θ","τ"],
	"u": ["∪","∩"], "+u": ["υ"],
	"v": ["∨","∧","⊻","⊼","⊽"], "+v": ["𝕍"],
	"w": ["≡","≢","≝"],
	"x": ["ξ","Ξ"],
	"y": ["⊤","⊥"],
	"z": ["ζ","Ζ"], "+z": ["ℤ"]
}
global Dictionary := {
	"Operações Avançadas": [
		{desc: "Integral", char:"∫"},
		{desc: "Integral de contorno", char:"∮"},
		{desc: "Sumatório", char:"∑"},
		{desc: "Produtório", char:"∏"}
	],
	"Lógica": [
		{desc: "Negação", char:"¬"},
		{desc: "Ou", char:"∨"},
		{desc: "E", char:"∧"},
		{desc: "Ou exclusivo", char:"⊻"},
		{desc: "E negado", char:"⊼"},
		{desc: "Ou negado", char:"⊽"},
		{desc: "Implicação", char:"⇒"},
		{desc: "Seta para a direita", char:"→"},
		{desc: "Implicação", char:"⇐"},
		{desc: "Seta para a esquerda", char:"←"},
		{desc: "Equivalência", char:"⇔"},
		{desc: "Seta bidirecional", char:"↔"},
		{desc: "Logo", char:"∴"},
		{desc: "Porque", char:"∵"},
		{desc: "Proposição verdadeira", char:"⊤"},
		{desc: "Proposição falsa", char:"⊥"}
	],
	"Operadores de Relação": [
		{desc: "Igual", char: "="},
		{desc: "Idêntico", char: "≡"},
		{desc: "Não idêntico", char: "≢"},
		{desc: "Idêntico por defenição", char: "≝"},
		{desc: "Aproximadamente igual", char: "≈"},
		{desc: "Menor ou igual", char: "≤"},
		{desc: "Maior ou igual", char: "≥"},
		{desc: "Proporcional", char: "∝"}
	],
	"Outros": [
		{desc: "Mais ou menos", char: "±"},
		{desc: "Infinito", char: "∞"},
		{desc: "Por mil", char: "‰"},
		{desc: "Quadrado", char: "²"},
		{desc: "Raiz quadrada", char: "√"},
		{desc: "Cubo", char: "³"},
		{desc: "Raiz cúbica", char: "∛"},
		{desc: "Raiz de índice 4", char: "∜"},
		{desc: "Reticências horizontais", char: "⋯"},
		{desc: "Reticências para cima", char: "⋰"},
		{desc: "Reticências para baixo", char: "⋱"}
	]
}
Dictionary["Letras Gregas"] := [
	{desc: "Alfa minúsculo", char: "α"},
	{desc: "Beta minúsculo", char: "β"},
	{desc: "Gama maiúsculo", char: "Γ"},
	{desc: "Gama minúsculo", char: "γ"},
	{desc: "Delta maiúsculo", char: "Δ"},
	{desc: "Delta minúsculo", char: "δ"},
	{desc: "Épsilon minúsculo", char: "ε"},
	{desc: "Zeta minúsculo", char: "ζ"},
	{desc: "Eta minúsculo", char: "η"},
	{desc: "Capa minúsculo", char: "κ"},
	{desc: "Lambda maiúsculo", char: "Λ"},
	{desc: "Lambda minúsculo", char: "λ"},
	{desc: "Mi minúsculo", char: "μ"},
	{desc: "Ni minúsculo", char: "ν"},
	{desc: "Czi maiúsculo", char: "Ξ"},
	{desc: "Czi minúsculo", char: "ξ"},
	{desc: "Pi maiúsculo", char: "Π"},
	{desc: "Pi minúsculo", char: "π"},
	{desc: "Rô minúsculo", char: "ρ"},
	{desc: "Sigma maiúsculo", char: "Σ"},
	{desc: "Sigma minúsculo", char: "σ"},
	{desc: "Tau minúsculo", char: "τ"},
	{desc: "Úpsilon minúsculo", char: "υ"},
	{desc: "Fi maiúsculo", char: "Φ"},
	{desc: "Fi minúsculo", char: "φ"},
	{desc: "Qui minúsculo", char: "χ"},
	{desc: "Psi maiúsculo", char: "Ψ"},
	{desc: "Psi minúsculo", char: "ψ"},
	{desc: "Ómega maiúsculo", char: "Ω"},
	{desc: "Ómega minúsculo", char: "ω"}
]
Dictionary["Conjuntos"] := [
	{desc: "União", char: "∪"},
	{desc: "Intersecão", char: "∩"},
	{desc: "Subconjunto", char: "⊂"},
	{desc: "Subconjunto ou igual", char: "⊄"},
	{desc: "Não subconjunto", char: "⊆"},
	{desc: "Não subconjunto nem igual", char: "⊈"},
	{desc: "Elemento", char: "∈"},
	{desc: "Não elemento", char: "∉"},
	{desc: "Conjunto vazio", char: "∅"},
	{desc: "Números naturais", char: "ℕ"},
	{desc: "Números inteiros", char: "ℤ"},
	{desc: "Números racionais", char: "ℚ"},
	{desc: "Números reais", char: "ℝ"},
	{desc: "Números complexos", char: "ℂ"},
	{desc: "Letra E com traço", char: "𝔼"},
	{desc: "Letra P com traço", char: "ℙ"},
	{desc: "Letra V com traço", char: "𝕍"}
]

global Alphabets := {
	"Latin": [
		{name: "Serif negrito", str: "𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳"},
		{name: "Serif italic", str: "𝐴𝐵𝐶𝐷𝐸𝐹𝐺𝐻𝐼𝐽𝐾𝐿𝑀𝑁𝑂𝑃𝑄𝑅𝑆𝑇𝑈𝑉𝑊𝑋𝑌𝑍𝑎𝑏𝑐𝑑𝑒𝑓𝑔ℎ𝑖𝑗𝑘𝑙𝑚𝑛𝑜𝑝𝑞𝑟𝑠𝑡𝑢𝑣𝑤𝑥𝑦𝑧"},
		{name: "Serif negrito itálico", str: "𝑨𝑩𝑪𝑫𝑬𝑭𝑮𝑯𝑰𝑱𝑲𝑳𝑴𝑵𝑶𝑷𝑸𝑹𝑺𝑻𝑼𝑽𝑾𝑿𝒀𝒁𝒂𝒃𝒄𝒅𝒆𝒇𝒈𝒉𝒊𝒋𝒌𝒍𝒎𝒏𝒐𝒑𝒒𝒓𝒔𝒕𝒖𝒗𝒘𝒙𝒚𝒛"},
		{name: "Manuscrito", str: "𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩𝒪𝒫𝒬ℛ𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵𝒶𝒷𝒸𝒹ℯ𝒻ℊ𝒽𝒾𝒿𝓀𝓁𝓂𝓃ℴ𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏"},
		{name: "Manuscrito negrito", str: "𝓐𝓑𝓒𝓓𝓔𝓕𝓖𝓗𝓘𝓙𝓚𝓛𝓜𝓝𝓞𝓟𝓠𝓡𝓢𝓣𝓤𝓥𝓦𝓧𝓨𝓩𝓪𝓫𝓬𝓭𝓮𝓯𝓰𝓱𝓲𝓳𝓴𝓵𝓶𝓷𝓸𝓹𝓺𝓻𝓼𝓽𝓾𝓿𝔀𝔁𝔂𝔃"},
		{name: "Fraktur", str: "𝔄𝔅ℭ𝔇𝔈𝔉𝔊ℌℑ𝔍𝔎𝔏𝔐𝔑𝔒𝔓𝔔ℜ𝔖𝔗𝔘𝔙𝔚𝔛𝔜ℨ𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷"},
		{name: "Duplo traço", str: "𝔸𝔹ℂ𝔻𝔼𝔽𝔾ℍ𝕀𝕁𝕂𝕃𝕄ℕ𝕆ℙℚℝ𝕊𝕋𝕌𝕍𝕎𝕏𝕐ℤ𝕒𝕓𝕔𝕕𝕖𝕗𝕘𝕙𝕚𝕛𝕜𝕝𝕞𝕟𝕠𝕡𝕢𝕣𝕤𝕥𝕦𝕧𝕨𝕩𝕪𝕫"},
		{name: "Fraktur negrito", str: "𝕬𝕭𝕮𝕯𝕰𝕱𝕲𝕳𝕴𝕵𝕶𝕷𝕸𝕹𝕺𝕻𝕼𝕽𝕾𝕿𝖀𝖁𝖂𝖃𝖄𝖅𝖆𝖇𝖈𝖉𝖊𝖋𝖌𝖍𝖎𝖏𝖐𝖑𝖒𝖓𝖔𝖕𝖖𝖗𝖘𝖙𝖚𝖛𝖜𝖝𝖞𝖟"},
		{name: "Sans-serif", str: "𝖠𝖡𝖢𝖣𝖤𝖥𝖦𝖧𝖨𝖩𝖪𝖫𝖬𝖭𝖮𝖯𝖰𝖱𝖲𝖳𝖴𝖵𝖶𝖷𝖸𝖹𝖺𝖻𝖼𝖽𝖾𝖿𝗀𝗁𝗂𝗃𝗄𝗅𝗆𝗇𝗈𝗉𝗊𝗋𝗌𝗍𝗎𝗏𝗐𝗑𝗒𝗓"},
		{name: "Sans-serif negrito", str: "𝗔𝗕𝗖𝗗𝗘𝗙𝗚𝗛𝗜𝗝𝗞𝗟𝗠𝗡𝗢𝗣𝗤𝗥𝗦𝗧𝗨𝗩𝗪𝗫𝗬𝗭𝗮𝗯𝗰𝗱𝗲𝗳𝗴𝗵𝗶𝗷𝗸𝗹𝗺𝗻𝗼𝗽𝗾𝗿𝘀𝘁𝘂𝘃𝘄𝘅𝘆𝘇"},
		{name: "Sans-serif itálico", str: "𝘈𝘉𝘊𝘋𝘌𝘍𝘎𝘏𝘐𝘑𝘒𝘓𝘔𝘕𝘖𝘗𝘘𝘙𝘚𝘛𝘜𝘝𝘞𝘟𝘠𝘡𝘢𝘣𝘤𝘥𝘦𝘧𝘨𝘩𝘪𝘫𝘬𝘭𝘮𝘯𝘰𝘱𝘲𝘳𝘴𝘵𝘶𝘷𝘸𝘹𝘺𝘻"},
		{name: "Sans-serif negrito itálico", str: "𝘼𝘽𝘾𝘿𝙀𝙁𝙂𝙃𝙄𝙅𝙆𝙇𝙈𝙉𝙊𝙋𝙌𝙍𝙎𝙏𝙐𝙑𝙒𝙓𝙔𝙕𝙖𝙗𝙘𝙙𝙚𝙛𝙜𝙝𝙞𝙟𝙠𝙡𝙢𝙣𝙤𝙥𝙦𝙧𝙨𝙩𝙪𝙫𝙬𝙭𝙮𝙯"},
		{name: "Mono-espaçado", str: "𝙰𝙱𝙲𝙳𝙴𝙵𝙶𝙷𝙸𝙹𝙺𝙻𝙼𝙽𝙾𝙿𝚀𝚁𝚂𝚃𝚄𝚅𝚆𝚇𝚈𝚉𝚊𝚋𝚌𝚍𝚎𝚏𝚐𝚑𝚒𝚓𝚔𝚕𝚖𝚗𝚘𝚙𝚚𝚛𝚜𝚝𝚞𝚟𝚠𝚡𝚢𝚣"}
	],
	"Numeric": [
		{name: "Negrito", str: "𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗"},
		{name: "Duplo traço", str: "𝟘𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡"},
		{name: "Sans-serif", str: "𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫"},
		{name: "Sans-serif negrito", str: "𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗"},
		{name: "Mono-espaçado", str: "𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿"}
	]
}
;;;;;;;;;;;;;;;; FIM DOS DADOS ;;;;;;;;;;;;;;;;
SendMode "Input"

; Constantes
global ProgramName := "Math Express"
global AppDataPath := A_AppData "\" ProgramName
A_IconTip := ProgramName

; Variáveis de estado
LastPressedKey := ""
PressedKeyTimes := 0
global FileError := False

global DefaultPrefs := {
	"LatinAlphabetLower": 1,
	"LatinAlphabetUpper": 0,
	"NumericAlphabet": 0,
	"ReplaceAsterisk": "×",
	"ReplaceColon": "÷",
	"ReplaceSlash": "∕"
	
}
global Prefs := {}
For PrefName in DefaultPrefs {
	Prefs[PrefName] := DefaultPrefs[PrefName]
}
global PrefOrder := [
	"LatinAlphabetLower",
	"LatinAlphabetUpper",
	"NumericAlphabet",
	"ReplaceAsterisk",
	"ReplaceColon",
	"ReplaceSlash"
]
SetPref(Name, Value) {
	Prefs[Name] := Value
	
	StringToWrite := ""
	If !DirExist(AppDataPath) {
		DirCreate AppDataPath
		If !DirExist(AppDataPath) {
		MsgBox 'Impossível criar diretório "' AppDataPath '". As preferências não serão guardadas.`nCódigo de erro: ' A_LastError, ProgramName, 48
		}
	}
	PrefsFile := FileOpen(AppDataPath "\prefs.txt", "w")
	If !IsObject(PrefsFile) {
		MsgBox 'Impossível abrir "' AppDataPath '\prefs.txt" para escrita. As preferências não serão carregadas.`nCódigo de erro: ' A_LastError, ProgramName, 48
		return
	}
	Loop PrefOrder.Length() {
		StringToWrite .= Prefs[PrefOrder[A_Index]] . (A_Index=PrefOrder.Length()? "":"`n")
	}
	PrefsFile.Write(StringToWrite)
	PrefsFile.Close()
}
LoadPrefs() {
	Loop Read AppDataPath "\prefs.txt" {
		Prefs[PrefOrder[A_Index]] := A_LoopReadLine 
	}
}
LoadPrefs

;Inicializar hotkeys
Hotkey "If", "InputOn"
For Key in KeyReference {
	Hotkey "!" Key, "OnSpecialPress"
}
Loop 26 {
	Hotkey "If", "InputOn and Prefs.LatinAlphabetLower"
	Hotkey Chr(A_Index + 96), "OnLetterPress"
	Hotkey "If", "InputOn and Prefs.LatinAlphabetUpper"
	Hotkey "+" Chr(A_Index + 96), "OnLetterPress"
}
Hotkey "If", "InputOn and Prefs.NumericAlphabet"
Loop 10 {
	Hotkey Chr(A_Index + 47), "OnLetterPress"
}
Hotkey "If"

;Dividir o alfabeto por carateres
For Name in Alphabets {
	Loop Alphabets[Name].Length() {
		Alphabets[Name][A_Index].arr := SplitByChar(Alphabets[Name][A_Index].str)
		Alphabets[Name][A_Index].Delete("str")
	}
}

A_TrayMenu.Delete()
A_TrayMenu.Add("Opções", "Options")
A_TrayMenu.Add("Ajuda", "Help")
A_TrayMenu.Add("Licensa e Sobre", "About")
A_TrayMenu.Add("Sair", "Quit")
Return

Options() {
	Gui := GuiCreate(, "Opções")
	Gui.Add("Text",, ":: Estilo de Letras e Números ::`n`nLetras minúsculas:`n`nLetras maiúsculas:`n`nNúmeros:`n`n`n:: Substituições ::`n`nSubstituir asterisco (*) por:`n`nSubstituir dois pontos (:) por:`n`nSubstituir barra (/) por:`n")
		
	DropDownArr := ["Normal (abcxyz)"]
	Loop Alphabets.Latin.Length() {
		Sample := Alphabets.Latin[A_Index].arr[27] . Alphabets.Latin[A_Index].arr[28] . Alphabets.Latin[A_Index].arr[29] . Alphabets.Latin[A_Index].arr[50] . Alphabets.Latin[A_Index].arr[51] . Alphabets.Latin[A_Index].arr[52]
		DropDownArr.Push(Alphabets.Latin[A_Index].name " (" Sample ")")
	}
	LowerDropDown := Gui.Add("DropDownList", "W170 X175 Y30", DropDownArr)
	LowerDropDown.Value := Prefs.LatinAlphabetLower + 1
	LowerDropDown.OnEvent("Change", (ThisCtrl) => SetPref("LatinAlphabetLower", ThisCtrl.Value - 1))
	
	DropDownArr := ["Normal (ABCXYZ)"]
	Loop Alphabets.Latin.Length() {
		Sample := Alphabets.Latin[A_Index].arr[1] . Alphabets.Latin[A_Index].arr[2] . Alphabets.Latin[A_Index].arr[3] . Alphabets.Latin[A_Index].arr[24] . Alphabets.Latin[A_Index].arr[25] . Alphabets.Latin[A_Index].arr[26]
		DropDownArr.Push(Alphabets.Latin[A_Index].name " (" Sample ")")
	}
	UpperDropDown := Gui.Add("DropDownList", "W170 X175 Y55", DropDownArr)
	UpperDropDown.Value := Prefs.LatinAlphabetUpper + 1
	UpperDropDown.OnEvent("Change", (ThisCtrl) => SetPref("LatinAlphabetUpper", ThisCtrl.Value - 1))

	DropDownArr := ["Normal (012345)"]
	Loop Alphabets.Numeric.Length() {
		Sample := Alphabets.Numeric[A_Index].arr[1] . Alphabets.Numeric[A_Index].arr[2] . Alphabets.Numeric[A_Index].arr[3] . Alphabets.Numeric[A_Index].arr[4] . Alphabets.Numeric[A_Index].arr[5] . Alphabets.Numeric[A_Index].arr[6]
		DropDownArr.Push(Alphabets.Numeric[A_Index].name " (" Sample ")")
	}
	NumDropDown := Gui.Add("DropDownList", "W170 X175 Y80", DropDownArr)
	NumDropDown.Value := Prefs.NumericAlphabet + 1
	NumDropDown.OnEvent("Change", (ThisCtrl) => SetPref("NumericAlphabet", ThisCtrl.Value - 1))
	DropDownArr := ""
	
	AsteriskInput := Gui.Add("Edit", "W15 X175 Y145", Prefs.ReplaceAsterisk)
	AsteriskInput.OnEvent("Change", (ThisCtrl) => SetPref("ReplaceAsterisk", ThisCtrl.Value))
	
	ColonInput := Gui.Add("Edit", "W15 X175 Y171", Prefs.ReplaceColon)
	ColonInput.OnEvent("Change", (ThisCtrl) => SetPref("ReplaceColon", ThisCtrl.Value))
	
	SlashInput := Gui.Add("Edit", "W15 X175 Y197", Prefs.ReplaceSlash)
	SlashInput.OnEvent("Change", (ThisCtrl) => SetPref("ReplaceSlash", ThisCtrl.Value))
		
	If A_IsCompiled {
		AutorunCheck_Click(ThisCtrl) {
			If ThisCtrl.Value {
				FileCopy A_ScriptFullPath, A_AppData "\Microsoft\Windows\Start Menu\Programs\Startup\Math Express.exe"
			} Else {
				FileDelete A_AppData "\Microsoft\Windows\Start Menu\Programs\Startup\Math Express.exe"
			}
		}
		Gui.Add("Text", "X10", "`n:: Auto-Arranque ::`n`nArrancar com o início de sessão:`n")
		AutorunCheck := Gui.Add("Checkbox", "X175 Y271")
		AutorunCheck.Value := FileExist(A_AppData "\Microsoft\Windows\Start Menu\Programs\Startup\Math Express.exe") != ""
		AutorunCheck.OnEvent("Click", Func("AutorunCheck_Click"))
	}
	
	ResetBtn_Click() {
		MsgBox "Deseja repor as suas predefenições para as de origem?", ProgramName, 292
		For PrefName in DefaultPrefs {
			Prefs[PrefName] := DefaultPrefs[PrefName]
		}
		DirDelete AppDataPath, 1
		Gui.Destroy()
		Options()
	}
	
	ResetBtn := Gui.Add("Button", "X10", "Repor preferências")
	ResetBtn.OnEvent("Click", "ResetBtn_Click")
	
	Gui.Add("Text", "X10 W330", "Notas: Algumas configurações necessitam do reinício do programa. Estas configurações aplicam-se à escrita quando o modo de inserção matemática está ativado. A funcionalidade de estilo não usa markup. Pelo contrário, usa carateres Unicode específicos para uso matemático.")
	Gui.Show("W350")
}
Help() {
	For Cat in Dictionary {
		Text .= (Text? "`n":"") . "- " Cat " -`n"
		Loop Dictionary[Cat].Length() {
			RegIndex := A_Index
			RefLoop:
			For Key in KeyReference { ;Pesquisar na referência
				Loop KeyReference[Key].Length() {
					If KeyReference[Key][A_Index] == Dictionary[Cat][RegIndex].char {
						Text .= "    " Dictionary[Cat][RegIndex].desc " (" Dictionary[Cat][RegIndex].char "): " KeyComboParse(Key, A_Index) "`n"
						break RefLoop
					}
				}
			}
			
		}
	}
	
	Gui := GuiCreate(, "Ajuda")
	Gui.Add("Text",, "Use Alt + Insert para ativar/desativar o modo de inserção matemático.`nCombinações de teclas:")
	Gui.Add("Edit", "R20 W500 ReadOnly", Text)
	Gui.Show()
}
About() {
	Gui := GuiCreate(, "Licensa e Informações")
	Gui.Add("Text",, "Licensa:")
	Gui.Add("Edit", "R20 W500 ReadOnly", License)
	Gui.Add("Text",, "Criado por Duarte Pardal.`nv. 2.0.3")
	Gui.Show()
}
Quit() {
	ExitApp
}

KeyComboParse(RawKey, Times) {
	Output := "Alt + "
	If SubStr(RawKey, 1, 1) = "+" and StrLen(RawKey) > 1 {
		Output .= "Shift + "
		KeyName := StrUpper(SubStr(RawKey, 2))
	} Else {
		KeyName := StrUpper(RawKey)
	}
	
	If KeyName = "Up" {
		KeyName := "▲"
	}
	If KeyName = "Down" {
		KeyName := "▼"
	}
	If KeyName = "Left" {
		KeyName := "◀"
	}
	If KeyName = "Right" {
		KeyName := "▶"
	}
	
	Loop Times {
		Output .= KeyName
	}
	return Output
}

SplitByChar(Str) {
	OutputArr := []
	Loop StrLen(Str) {
		If (NumGet(Str, A_Index * 2 - 1, "UChar") >= 0xD8 && NumGet(Str, A_Index * 2 - 1, "UChar") <= 0xDB) {
			OutputArr.Push(SubStr(Str, A_Index, 2))
			A_Index++
		} Else {
			OutputArr.Push(SubStr(Str, A_Index, 1))
		}
	}
	return OutputArr
}
StrLength(Str) {
	Length := 0
	Loop StrLen(Str) {
		If (NumGet(Str, A_Index * 2 - 1, "UChar") >= 0xD8 && NumGet(Str, A_Index * 2 - 1, "UChar") <= 0xDB) {
			A_Index++
		}
		Length++
	}
	return Length
}


OnSpecialPress:
Key := SubStr(A_ThisHotkey, 2)
If (LastPressedKey !== Key) {
	PressedKeyTimes := 0
} else {
	Send "{Backspace " StrLength(KeyReference[Key][PressedKeyTimes]) "}"
}
LastPressedKey := Key

PressedKeyTimes := Mod(PressedKeyTimes, KeyReference[Key].Length()) + 1
Send KeyReference[Key][PressedKeyTimes]
Return

OnLetterPress:
ThisHotkey := A_ThisHotkey
CharCode := NumGet(ThisHotkey, 0, "UChar")

If (SubStr(ThisHotkey, 1, 1) = "+") and Prefs.LatinAlphabetUpper { ;Letras maiúsculas
	Send Alphabets.Latin[Prefs.LatinAlphabetUpper].arr[NumGet(ThisHotkey, 2, "UChar") - 96]

} Else If CharCode >= 97 and CharCode <= 122 and Prefs.LatinAlphabetLower { ;Letras minúsculas
	Send Alphabets.Latin[Prefs.LatinAlphabetLower].arr[CharCode - 70] ;-96 + 26

} Else If CharCode >= 48 and CharCode <= 57 and Prefs.NumericAlphabet { ;Números
	Send Alphabets.Numeric[Prefs.NumericAlphabet].arr[CharCode - 47]

}
Return

!Insert::
If (InputOn) {
	InputOn := False
	LastPressedKey := ""
	ToolTip "O modo de inserção matemático está desativado."
	Sleep 1500
	ToolTip
} else {
	InputOn := True
	ToolTip "O modo de inserção matemático está ativado."
	Sleep 1500
	ToolTip
}
Return

~LAlt Up::
LastPressedKey := ""
Return

;Substituições
#If InputOn and Prefs.ReplaceAsterisk
*::Send Prefs.ReplaceAsterisk
#If InputOn and Prefs.ReplaceColon
:::Send Prefs.ReplaceColon
#If InputOn and Prefs.ReplaceSlash
/::Send Prefs.ReplaceSlash

#If InputOn
#If InputOn and Prefs.LatinAlphabetLower
#If InputOn and Prefs.LatinAlphabetUpper
#If InputOn and Prefs.NumericAlphabet
