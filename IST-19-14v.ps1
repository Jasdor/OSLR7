$do=1
	while ($do -eq "1"){
	$type = Read-Host -Prompt "Show dir (1), go t next dir(2), go to previous dir (3)"
	if ($type -eq "1") {
		Get-Childitem
	}
	elseif ($type -eq "2") {
		Write-Output "Directories!"
		Get-Childitem -Directory
		$dirname = Read-host -Prompt "Enter dir name (other files not allowed)"	
		if (Test-Path -Path $dirname -PathType Container){
			Set-Location $dirname	
		}
		else { Write-Output "Directory doesn't exist!" }
	}
	elseif ($type -eq "3"){
		Set-Location -Path ..
	}
	else  {Write-Output "Wrong task!"}
}