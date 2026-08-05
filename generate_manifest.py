import os
import json

folders = ['chat', 'meet', 'picture', 'proposal', 'marriage', 'baby-coming', 'baby-born', 'family', 'question']
extensions = ['.jpg', '.jpeg', '.png', '.webp', '.JPG', '.JPEG', '.PNG', '.WEBP']

manifest = {}
for folder in folders:
    path = os.path.join('images', folder)
    if os.path.exists(path):
        files = []
        for f in sorted(os.listdir(path)):
            if any(f.endswith(ext) for ext in extensions):
                files.append(f'images/{folder}/{f}')
        manifest[folder] = files
        print(f'{folder}: {len(files)} ছবি পাওয়া গেছে')
    else:
        manifest[folder] = []
        print(f'{folder}: folder পাওয়া যায়নি!')

with open('images.json', 'w', encoding='utf-8') as f:
    json.dump(manifest, f, ensure_ascii=False, indent=2)

print('\n✅ images.json তৈরি হয়েছে!')
input('Enter চাপো...')
