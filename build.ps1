# To execute, need to run: 
# PowerShell.exe -ExecutionPolicy Unrestricted 
 
cat .\chapters\*.md | sc .\draft.md 

pandoc -S --toc-depth=1 -o draft.epub publish\epub-frontmatter.md draft.md
kindlegen *.epub

rm draft.md
