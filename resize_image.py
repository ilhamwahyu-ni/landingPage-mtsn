from PIL import Image
import os

input_path = r"c:\Users\wahyu\landingPage\src\img\logo-mtsn.png"
output_path = r"c:\Users\wahyu\landingPage\src\img\logo-mtsn-small.png"

try:
    with Image.open(input_path) as img:
        # Resize to max 512x512 while maintaining aspect ratio, good for OG and Favicon
        img.thumbnail((512, 512))
        img.save(output_path, optimize=True, quality=85)
        print(f"Successfully resized image to {output_path}")
except Exception as e:
    print(f"Error resizing image: {e}")
