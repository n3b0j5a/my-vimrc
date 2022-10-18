## a.vim

| Shortcut     | Description                                                                                |
|:------------:|--------------------------------------------------------------------------------------------|
| :A           | switches to the header file corresponding to the current file being edited (or vise versa) |
| :AS          | splits and switches                                                                        |
| :AV          | vertical splits and switches                                                               |
| :AT          | new tab and switches                                                                       |
| :AN          | cycle through matches                                                                      |
| :IH          | switches to file under cursor                                                              |
| :IHS         | splits and switches                                                                        |
| :IHV         | vertical splits and switches                                                               |
| :IHT         | new tab and switches                                                                       |
| :IHN         | cycle through matches                                                                      |
| \ih          | switches to file under cursor                                                              |
| \ia          | switches to the alternate file of file under the cursor (foo.h switches to foo.cpp)        |
| \ihn         | cycle through matches                                                                      |

## vim.surround

Usage:

### `cs<from><to>` 

Change surrounding from \<from\> to \<to\>

* <to> can be any symbol like: ‘”!~+-=#@$%^&*/{[( or html tag <qt>
* )}] adds a space after and before automatically
* ( and b are equivalent

### `cst[space]<to>` 

Change html tag to \<to\>

* \<to\> can be any symbol like: ‘”!~+-=#@$%^&*/{[( or html tag \<qt\>
* )}] adds a space after and before automatically
* ( and b are equivalent

### `yssiw<to>`

Surround single word with \<to\>

* \<to\> can be any symbol like: ‘”!~+-=#@$%^&\*/{[( or html tag \<qt\>
* )}] adds a space after and before automatically
* ( and b are equivalent

### `yss<to>`

Surround entire line with \<to\>

* \<to\> can be any symbol like: ‘”!~+-=#@$%^&\*/{[( or html tag \<qt\>
* )}] adds a space after and before automatically
* ( and b are equivalent


Examples:

| Shortcut      | Input selection           | Output selection         | 
|:-------------:|:-------------------------:|:------------------------:|
| cs”\*         | "Hello world"             | \*Hello world\*          |
| cs”\<qt\>     | "Hello world"             | \<qt\>Hello world\</qt\> |
| cst”          | \<qt\>Hello world \</qt\> | "Hello world"            |
| ds”           | "Hello world"             | Hello world              |
| ysiw}         | Hello world               | {Hello} world            |
| ysiw{         | Hello world               | { Hello } world          |
| yssb or yss)  | [ Hello ] world           | ([ Hello ] world)        |

## C-support

### Statements

| Statements| Description            |
|:---------:|------------------------|
| \sfo      | for block              |
| \sfr      | for block (range based)|
| \sd       | do while block         |
| \sw       | while block            |
| \sif      | if block               |
| \sie      | if else block          | 
| \sei      | else if block          | 
| \sel      | else block             | 
| \ss       | switch block           | 
| \sc       | case block             |
| \sb       | block                  |

### Snippets

| Snippets  | Description            |
|:---------:|------------------------|
| \njt      | jumptags               |
| \nr       | read code snippet      |
| \nv       | view code snippet      |
| \nw       | write code snippet     |
| \ne       | edit code snippet      |
| \nf \np   | pickup f. prototype    |
| \nm       | pickup m. prototype    |
| \ni       | insert prototype       |
| \nc       | clear prototype        |
| \ns       | show prototype         |
| \ntl      | edit local template    |
| \ntp      | edit personal template |
| \ntc      | edit custom template   |
| \ntr      | reread templates       |
| \ntw      | template setup wizard  |

### Preprocessor

| Preprocessor  | Description            |
|:-------------:|------------------------|
| \pih          | include std lib        |
| \piph         | include std POSIX lib  |
| \pg           | include global         |
| \pl           | include local          |
| \pd           | define                 |
| \pu           | undefine               |
| \pif          | #if #endif             |
| \pie          | #if #else #endif       |
| \pid          | #ifdef #else #endif    |
| \pin          | #iifndef #else #endif  |
| \pind         | #ifndef #define #endif |
| \pe           | #error                 |
| \pli          | #line                  |
| \pp           | #pragma                |
| \pw           | #warning               |

### Idioms

| Idioms        | Description            |
|:-------------:|------------------------|
| \if           | function               |
| \isf          | static function        |
| \im           | main function          |
| \ie           | enum                   |
| \is           | struct                 |
| \iu           | union                  |
| \isc          | scanf                  |
| \ipr          | printf                 |
| \ica          | calloc                 |
| \ima          | malloc                 |
| \ire          | realloc                |
| \isi          | sizeof                 |
| \ias          | assert                 |
| \ii           | open input file        |
| \io           | open output file       |
| \ifpr         | fprintf                |
| \ifsc         | fscanf                 |
| \i0           | for(x=0;x<n;x+=1)      |
| \in           | for(x=n-1;x>=0;x-=1)   |

### Comments 

| Comments      | Description                |
|:-------------:|----------------------------|
| \cl           | end of line comment        |
| \cj           | adjust end of line comment |
| \cs           | set EOL comment column     |
| \c\*          | code → comment /**/        |
| \cc           | code → comment //          |
| \co           | comment → code             |
| \cn           | toggle non C comment       |
| \cfr          | frame comment              |
| \cfu          | function comment           |
| \cme          | method comment             |
| \ccl          | class comment              |
| \cfdi         | c file header              |
| \cfdh         | h file header              |
| \ccs          | c file sections (pick)     |
| \chs          | h file sections (pick)     |
| \ccc          | all c file sections        |
| \ccp          | all c++ file sections      |
| \chs          | all h file sections        |
| \chp          | all h++ file setions       |
| \ckc          | keyword comments (pick)    |
| \csc          | special comments (pick)    |
| \cma          | macros                     |
| \cd           | date                       |
| \ct           | time                       |

