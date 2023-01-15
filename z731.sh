#!/bin/sh
# touch z731.sh
ls | grep "pages" | grep -v "pages.zh" | grep "pages." | xargs -I {} echo {} | xargs
ls | grep "pages" | grep -v "pages.zh" | grep "pages." | xargs -I {} rm -r {}
