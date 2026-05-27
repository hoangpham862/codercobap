import sys
import os
from PIL import Image

def make_background_transparent(image_path, output_path):
    if not os.path.exists(image_path):
        print(f"Error: Source image not found at {image_path}")
        return
        
    img = Image.open(image_path).convert("RGBA")
    width, height = img.size
    data = img.load()
    
    # We will do a flood fill from the 4 corners to find the background
    visited = set()
    queue = [(0, 0), (width - 1, 0), (0, height - 1), (width - 1, height - 1)]
    
    for x, y in queue:
        visited.add((x, y))
        
    # Flood fill
    background_pixels = set()
    while queue:
        cx, cy = queue.pop(0)
        r, g, b, a = data[cx, cy]
        
        # If it's a white-ish pixel, it's background
        if r > 220 and g > 220 and b > 220:
            background_pixels.add((cx, cy))
            
            # Check neighbors
            for dx, dy in [(-1, 0), (1, 0), (0, -1), (0, 1)]:
                nx, ny = cx + dx, cy + dy
                if 0 <= nx < width and 0 <= ny < height:
                    if (nx, ny) not in visited:
                        visited.add((nx, ny))
                        queue.append((nx, ny))

    # Apply transparency to background pixels
    for x in range(width):
        for y in range(height):
            if (x, y) in background_pixels:
                r, g, b, a = data[x, y]
                # Soften the edges: if it's slightly grey (border), give it partial alpha
                gray = (r + g + b) // 3
                if gray > 240:
                    data[x, y] = (r, g, b, 0)
                else:
                    # Interpolate alpha for anti-aliasing
                    alpha = int((240 - gray) / 20 * 255)
                    alpha = max(0, min(255, alpha))
                    data[x, y] = (r, g, b, alpha)
                    
    # Ensure directory exists for output
    output_dir = os.path.dirname(output_path)
    if output_dir and not os.path.exists(output_dir):
        os.makedirs(output_dir)

    img.save(output_path, "PNG")
    print(f"Success! Saved transparent image to: {output_path}")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python make_transparent.py <input_image_path> <output_image_path>")
        print("Example: python make_transparent.py input.png output.png")
        sys.exit(1)
        
    src = sys.argv[1]
    dest = sys.argv[2]
    make_background_transparent(src, dest)
