$sourceFiles = @("main.cpp")
$outputName = "app.exe"

# Join the files with spaces
$files = $sourceFiles -join " "

# Compile
$compileCommand = "g++ $files -o $outputName"
Invoke-Expression $compileCommand

# Check if compilation succeeded
if ($LASTEXITCODE -eq 0) {
    Write-Host "Compilation successful!"
} else {
    Write-Host "Compilation failed!"
} 