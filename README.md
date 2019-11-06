# .vimrc for ARM Assembly

This is an example .vimrc file that will add "," as a leader key to your vim configuration. Using ",," as a leader, you can navigate around the file between each occurence of the keyword "<++>" to speed up your development. 
I have defined 4 code snippets as an example for arm assembly:
 - ,def will create define(<++>,<++>) set at the cursor location
 - ,main will create an initial .balign, .global, main label, stp command and move x29, sp commands for you
 - ,mov will create mov <++>,<++>
 - ,add will create add <++>,<++>
These example can be extended for any type of the command you most commonly use, or can be even used to create whole templates for speeding up the development process.

To set it up on your system if:
  - You have your .vimrc setup the way you want, you then just add the lines 11, 74-77 and 79-84 from this .vimrc to your configuration file
  If you don't, then you can just straight clone the repository using "git clone https://github.com/erochester/vimrc_example.git" into the home directory "cd ~/" and it should work for you during the next vim launch
  
  Note: this setup looks for the extension .asm filetypes, if you are using any other file type please modify accordingly in "autocmd FileType asm..." part of the code.
