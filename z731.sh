#!/bin/sh
# touch z731.sh
ls | grep "pages" | grep -v "pages.zh" | grep "pages." | xargs -I {} echo {} | xargs
ls | grep "pages" | grep -v "pages.zh" | grep "pages." | xargs -I {} rm -r {}

# mkdir z731
if [ ! -d "z731" ]; then mkdir z731; fi
# ls pages/* | sed 's/.md$//g' | head
# ls pages/* | sed 's/.md$//g' | tail
# brew install tree
# tree pages | sed 's/.md$//g' | head
# tree pages | sed 's/.md$//g' | tail
# tree pages | sed 's/.md$//g;s/├── /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > tmp0
# tree pages | sed 's/.md$//g;s/├── /\t/g;s/│   /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > tmp
tree pages | sed 's/.md$//g;s/├── /\t/g;s/│   /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > z731/tree_pages
tree pages.zh | sed 's/.md$//g;s/├── /\t/g;s/│   /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > z731/tree_pages.zh
tree pages.zh_TW | sed 's/.md$//g;s/├── /\t/g;s/│   /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > z731/tree_pages.zh_TW
cp z731/tree_pages z731/read_tree_pages
cp z731/tree_pages.zh z731/read_tree_pages.zh
cp z731/tree_pages.zh_TW z731/read_tree_pages.zh_TW
