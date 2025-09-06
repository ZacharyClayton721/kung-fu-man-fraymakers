$root = Get-Location

# Use single quotes for literal paths
$spritesDir = 'Kung Fu Man\library\sprites'
$audioDir   = 'Kung Fu Man\library\audio'

# --- SPRITES MANIFEST ---
if (Test-Path $spritesDir) {
    Get-ChildItem -Recurse $spritesDir -File |
        ForEach-Object {
            $rel = $_.FullName.Substring($spritesDir.Length + ($root.Path.Length + 1))
            $rel = $rel.TrimStart('\','/')
            "sprites/$($rel -replace '\\','/')"
        } |
        Set-Content "sprite_manifest.txt"
    Write-Host "✅ sprite_manifest.txt created"
} else {
    Write-Host "⚠️ Sprites folder not found: $spritesDir"
}

# --- AUDIO MANIFEST ---
if (Test-Path $audioDir) {
    Get-ChildItem -Recurse $audioDir -File |
        ForEach-Object {
            $rel = $_.FullName.Substring($audioDir.Length + ($root.Path.Length + 1))
            $rel = $rel.TrimStart('\','/')
            "audio/$($rel -replace '\\','/')"
        } |
        Set-Content "audio_manifest.txt"
    Write-Host "✅ audio_manifest.txt created"
} else {
    Write-Host "⚠️ Audio folder not found: $audioDir"
}

# --- AUDIO METADATA ---
$metadata = @{}

if (Test-Path $audioDir) {
    Get-ChildItem -Recurse $audioDir -Filter *.meta | ForEach-Object {
        $metaFile = $_.FullName

        # Strip the .meta extension to get the actual audio file path
        $audioFile = $metaFile.Substring(0, $metaFile.Length - 5)

        # Trim to relative path starting from audio/
        $rel = $audioFile.Substring($audioDir.Length + ($root.Path.Length + 1))
        $rel = $rel.TrimStart('\','/')
        $relAudio = "audio/$($rel -replace '\\','/')"

        try {
            $json = Get-Content $metaFile -Raw | ConvertFrom-Json
            $metadata[$relAudio] = $json
        }
        catch {
            Write-Host "⚠️ Failed to parse JSON in $metaFile"
        }
    }

    $metadata | ConvertTo-Json -Depth 10 | Set-Content "audio_metadata.json"
    Write-Host "✅ audio_metadata.json created"
}


