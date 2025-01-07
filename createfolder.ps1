# Define the parent folder path
$parentFolderPath = "D:\Documents\destination folder"

# Create the parent folder if it doesn't exist
if (-Not (Test-Path -Path $parentFolderPath)) {
    New-Item -Path $parentFolderPath -ItemType Directory
}

# Loop to create consecutive folders
for ($i = 1; $i -le 7; $i++) {
    $folderName = "folder $i"
    $folderPath = Join-Path -Path $parentFolderPath -ChildPath $folderName

    # Create the folder if it doesn't exist
    if (-Not (Test-Path -Path $folderPath)) {
        New-Item -Path $folderPath -ItemType Directory
    }
}

Write-Output "Folders created successfully!"
