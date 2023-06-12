#!/bin/bash

file=$1

#clean output file
> output.txt

while IFS= read -r line
do
    # Check if the line contains the word "for"
    if [[ $line == *for* || $line == *do* || $line == *done* ]]; then
        # Replace "for" with "foreach"
        line=${line/for/foreach}
        # add ( before the arguments and ) after the arguments        line=${line/in/\(}
        # Replace "done" with "}"
        line=${line/done/\}}
        # Replace "do" with "{"
        line=${line/do/\)\{}
    fi
    
    # Check if the line contains the word "while"
    if [[ $line == *while* ]]; then
        # Replace "while" with "while ( "
        line=${line/while/while \(}
        # Replace "do" with ")"
        line=${line/do/\)}
        # opuszczamy "[" i "]"
        line=${line/[/}
        line=${line/]/}
        # Replace "-gt" with ">"
	line=${line/-gt/>}        
	# Replace "-lt" with "<"
	line=${line/-lt/<}
	# Replace "-ge" with ">="
	line=${line/-ge/>=}        
	# Replace "-le" with "=<"
	line=${line/-le/<=}     
	# Replace "-eq" with "=="
	line=${line/-eq/==}
	# Replace "-ne" with "!="
	line=${line/-ne/!=}
    fi
    
    # Check if the line contains the word "if"
    if [[ $line == *if* || $line == *elif* || $line == *else* ]]; then
        # We left else
        line=${line/else/else}
        # Replace "if" with "if ( "
        line=${line/if/if \(}
        # Replace "elif" with "else if ( "
        line=${line/elif/else if}
        # Replace "then" with ")"
        line=${line/then/\) then}
        # We left "[" i "]"
        line=${line/[/}
        line=${line/]/}
        # Replace "-gt" with ">"
	line=${line/-gt/>}        
	# Replace "-lt" with "<"
	line=${line/-lt/<}
	# Replace "-ge" with ">="
	line=${line/-ge/>=}        
	# Replace "-le" with "=<"
	line=${line/-le/<=}     
	# Replace "-eq" with "=="
	line=${line/-eq/==}
	# Replace "-ne" with "!="
	line=${line/-ne/!=}
    fi
    
    if [[ $line == *fi* ]]; then
    	# Replace "if" with "endif"
        line=${line/fi/endif}
    fi
    
    
    echo "$line" >> output.txt
done < "$file"