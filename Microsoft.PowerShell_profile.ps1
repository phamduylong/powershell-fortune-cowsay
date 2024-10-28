Import-Module cowsay

function fortune {
	[System.IO.File]::ReadAllText((Split-Path $profile)+'\fortune.txt') -replace "`r`n", "`n" -split "`n%`n" | Get-Random
}

fortune | cowsay; echo "`n";

