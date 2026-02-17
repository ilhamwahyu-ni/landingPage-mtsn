$inputPath = "c:\Users\wahyu\landingPage\src\img\logo-mtsn.png"
$outputPath = "c:\Users\wahyu\landingPage\src\img\logo-mtsn-small.png"

Add-Type -AssemblyName System.Drawing

$image = [System.Drawing.Image]::FromFile($inputPath)
$newWidth = 512
$newHeight = 512
$resized = new-object System.Drawing.Bitmap($newWidth, $newHeight)
$graph = [System.Drawing.Graphics]::FromImage($resized)
$graph.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$graph.DrawImage($image, 0, 0, $newWidth, $newHeight)

$resized.Save($outputPath, [System.Drawing.Imaging.ImageFormat]::Png)

$image.Dispose()
$resized.Dispose()
$graph.Dispose()

Write-Host "Resized image saved to $outputPath"
