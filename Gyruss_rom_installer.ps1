$WorkingDirectory = Get-Location
$length = 71

	cls
	Write-Output " .--------------------."
	Write-Output " |Building Gyruss ROMs|"
	Write-Output " '--------------------'"

	New-Item -ItemType Directory -Path $WorkingDirectory"\arcade" -Force
	New-Item -ItemType Directory -Path $WorkingDirectory"\arcade\gyruss" -Force
	
	Write-Output "Copying Gyruss ROMs"
	
	Copy-Item -Path $WorkingDirectory\gyrussk.1 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.1
	Copy-Item -Path $WorkingDirectory\gyrussk.2 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.2
	Copy-Item -Path $WorkingDirectory\gyrussk.3 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.3
	Copy-Item -Path $WorkingDirectory\gyrussk.9 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.9
	Copy-Item -Path $WorkingDirectory\gyrussk.4 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.4
	Copy-Item -Path $WorkingDirectory\gyrussk.5 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.5
	Copy-Item -Path $WorkingDirectory\gyrussk.6 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.6
	Copy-Item -Path $WorkingDirectory\gyrussk.7 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.7
	Copy-Item -Path $WorkingDirectory\gyrussk.8 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.8
	Copy-Item -Path $WorkingDirectory\gyrussk.1a -Destination $WorkingDirectory\arcade\gyruss\gyrussk.1a
	Copy-Item -Path $WorkingDirectory\gyrussk.2a -Destination $WorkingDirectory\arcade\gyruss\gyrussk.2a
	Copy-Item -Path $WorkingDirectory\gyrussk.3a -Destination $WorkingDirectory\arcade\gyruss\gyrussk.3a
	Copy-Item -Path $WorkingDirectory\gyrussk.pr1 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.pr1
	Copy-Item -Path $WorkingDirectory\gyrussk.pr2 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.pr2
	Copy-Item -Path $WorkingDirectory\gyrussk.pr3 -Destination $WorkingDirectory\arcade\gyruss\gyrussk.pr3

	
	# Define the file paths within the folder
	$files = @("$WorkingDirectory\gyrussk.pr3", 
				"$WorkingDirectory\gyrussk.pr3",
				"$WorkingDirectory\gyrussk.pr3",
				"$WorkingDirectory\gyrussk.pr3",
				"$WorkingDirectory\gyrussk.pr3", 
				"$WorkingDirectory\gyrussk.pr3",
				"$WorkingDirectory\gyrussk.pr3",
				"$WorkingDirectory\gyrussk.pr3")
				
	# Specify the output file within the folder
	$outputFile = "$WorkingDirectory\arcade\gyruss\gyrussk2.pr3"
	# Concatenate the files as binary data
	
	[Byte[]]$combinedBytes = @()
	foreach ($file in $files) {
		$combinedBytes += [System.IO.File]::ReadAllBytes($file)
	}
	[System.IO.File]::WriteAllBytes($outputFile, $combinedBytes)
	
	
	Write-Output "Generating blank config file"
	$bytes = New-Object byte[] $length
	for ($i = 0; $i -lt $bytes.Length; $i++) {
	$bytes[$i] = 0xFF
	}
	
	$output_file = Join-Path -Path $WorkingDirectory -ChildPath "arcade\gyruss\gyrcfg"
	$output_directory = [System.IO.Path]::GetDirectoryName($output_file)
	[System.IO.File]::WriteAllBytes($output_file,$bytes)

	Write-Output "All done!"