$link = (Join-Path $HOME ".atom\keymap.cson")
if (Test-Path $link){
  mv $link "$link.$(Get-Date -f yyMMddhhmmss).old"
}
iex "cmd /c mklink /H `"$link`" `"$(Join-Path $PSScriptRoot keymap.cson)`""
