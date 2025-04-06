import os
import re
import shutil
import sys

print()

# Paths
posts_dir = f"/home/noss/Projects/noss-site/content/{sys.argv[1]}/"
attachments_dir = "/home/noss/Documents/Docs/Noss-Site/static/images/"
static_images_dir = "/home/noss/Projects/noss-site/static/images/"

def replace_with_encoded_spaces(match):
    alt_text = match.group(1)
    filename = match.group(2)
    return f"![{alt_text}](/images/{filename.replace(' ', '%20')})"

# Step 1: Process each markdown file in the posts directory
for filename in os.listdir(posts_dir):
    if filename.endswith(".md"):
        filepath = os.path.join(posts_dir, filename)
        
        with open(filepath, "r") as file:
            content = file.read()
        
        # Step 2: Find all image links in the format ![Image Description](/images/Pasted%20image%20...%20.png)
        images = re.findall(r'!\[[^\]]*\]\(../../static/images/([^)]*)\)', content)
        
        # Step 3: Replace image links and ensure URLs are correctly formatted
        for image in images:
            # Prepare the Markdown-compatible link with %20 replacing spaces
            content = re.sub(r'!\[(.*?)\]\(../../static/images/(.*?)\)', replace_with_encoded_spaces, content)

            # Step 4: Copy the image to the Hugo static/images directory if it exists
            image_source = os.path.join(attachments_dir, image)
            if os.path.exists(image_source):
                shutil.copy(image_source, static_images_dir)

        # Step 5: Write the updated content back to the markdown file
        with open(filepath, "w") as file:
            file.write(content)

print("Markdown files processed and images copied successfully.")
