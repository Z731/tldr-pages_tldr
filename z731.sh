#!/bin/sh
# chmod +x *.sh
# touch z731.sh
ls | grep "pages" | grep -v "pages.zh" | grep "pages." | xargs -I {} echo {} | xargs
ls | grep "pages" | grep -v "pages.zh" | grep "pages." | xargs -I {} rm -r {}

# mkdir z731
if [ ! -d "z731" ]; then mkdir z731; fi
# ls pages/* | sed 's/\.md$//' | head
# ls pages/* | sed 's/\.md$//' | tail
# brew install tree
# tree pages | sed 's/\.md$//' | head
# tree pages | sed 's/\.md$//' | tail
# tree pages | sed 's/\.md$//;s/├── /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > tmp0
# tree pages | sed 's/\.md$//;s/├── /\t/g;s/│   /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > tmp
tree pages | sed 's/\.md$//;s/├── /\t/g;s/│   /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > z731/tree_pages
tree pages.zh | sed 's/\.md$//;s/├── /\t/g;s/│   /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > z731/tree_pages.zh
tree pages.zh_TW | sed 's/\.md$//;s/├── /\t/g;s/│   /\t/g;s/│   /\t/g;s/└── /\t/g;s/    /\t/g' > z731/tree_pages.zh_TW
cp z731/tree_pages z731/read_tree_pages
cp z731/tree_pages.zh z731/read_tree_pages.zh
cp z731/tree_pages.zh_TW z731/read_tree_pages.zh_TW
tree -i -f pages* | sed 's/\.md$//' > z731/tree_pages_all
awk -F '/' '{for(i=0;i<=NF-1;i++)printf("%s\t",$(NF-i));printf("\n");}' z731/tree_pages_all | sort > z731/tree_pages_all_revert
cp z731/tree_pages_all_revert z731/read_tree_pages_all_revert

grep -n -E "https?://" pages*/*/* | sort > z731/grep_pages_all_http
grep -E "More information: |更多信息：|更多資訊：" z731/grep_pages_all_http > z731/grep_pages_all_http_more_info
awk -F '[<>]' '{print $3}' z731/grep_pages_all_http_more_info | sort | uniq > z731/grep_pages_all_http_more_info_url
grep "github" z731/grep_pages_all_http_more_info_url > z731/grep_pages_all_http_more_info_url_github
grep -v "github" z731/grep_pages_all_http_more_info_url > z731/grep_pages_all_http_more_info_url_github0
wc -l z731/grep_pages_all_http_more_info_url*
grep "github.com" z731/grep_pages_all_http_more_info_url_github > z731/grep_pages_all_http_more_info_url_github_com
grep "github.io" z731/grep_pages_all_http_more_info_url_github > z731/grep_pages_all_http_more_info_url_github_io
grep -v "github.com" z731/grep_pages_all_http_more_info_url_github | grep -v "github.io" > z731/grep_pages_all_http_more_info_url_github_other
wc -l z731/grep_pages_all_http_more_info_url_github_*

awk -F '[/:]' '{for(i=0;i<=3-1;i++)printf("%s\t",$(3-i));for(i=4;i<=NF;i++)printf("%s/",$(i));printf("\n");}' z731/grep_pages_all_http_more_info | sed 's/\/\/\//:\/\//g;s/\/$//g;s/\.md//' | sort > z731/grep_pages_all_http_more_info_revert
sort -t '<' -k 2 z731/grep_pages_all_http_more_info_revert > z731/grep_pages_all_http_more_info_revert_sort_url

