function Get-Notes {
    $notesPath = './notes.txt'
    $notes = Get-Content $notesPath
    $notes | Out-Host
}

function Add-Note {
    $notesPath = './notes.txt'
    $note = Read-Host 'Enter your note: '
    $note | Out-File -Append $notesPath
}

while($true) {
    $functionInput = Read-Host 'Enter your command option'
    if ($functionInput -eq 'get') {
        Get-Notes
    } elseif ($functionInput -eq 'add') {
        Add-Note
    } elseif ($functionInput -eq 'exit') {
        break
    } else {
        Write-Host 'Invalid command option'
    }
}