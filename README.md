# BASH-to-CSH-translator

Our project dealt with the topic of converting code from one programming language, shell language, to code written in csh shell language. The csh shell (from C shell) - is one of the historical Unix shells. Written by Bill Joy  during the development of Unix BSD and made public in 1978. The syntax of the language used in csh resembles C. Hence the name C shell  being a play on words. Approach to the solution Our program benefited from
</br>
1. A while loop reading the next lines of the program,</br>
2. from a conditional statement that captures the keywords we assume,</br>
3. from making text conversions </br>
4. save the text to a file </br>

<p align="center">
</br>Sample input file:</br>
<img src="https://github.com/kacper516/BASH-to-CSH-translator/assets/116543741/1c08f60b-c709-4ad3-a61c-616dee53671e" />
</br>Execute the program:</br>
<img src="https://github.com/kacper516/BASH-to-CSH-translator/assets/116543741/ce732ea9-a562-4d8d-8a47-60826eb72f14" />
</br>Output file for our sample input file:</br>
<img src="https://github.com/kacper516/BASH-to-CSH-translator/assets/116543741/f20adb3d-9bf7-47d8-a12d-8a0030427b17" />
</p>

</br></br>
Program shortcomings</br></br>
Our program works on the example of simple programs, but it does not cope with more  extended  tasks,  because  it solves relatively simple p rograms. Our p rogram  fails  in  the  case  of:</br>
1. when there are many of the same conditions in one line (the program we wrote assumes that each of the conditions will be different)</br>
2. the program assumes, when using a conditional statement, to use only one  square  bracket  “[]”</br>
3. Our program is not immune to misspelled lines of code (those that have no right to exist in Bash)!
