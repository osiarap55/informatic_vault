## Searching for text

The best know and powerful progrma for finding text or matching text is **grep**.

### Different versions or programs of **grep**

Traditionally, there were three separate progrmas for seearching through text files:

 * **grep**
	The original text-mataching program. It uses Bsic REgular Expressions (BREs) as defined POSIX, and we describe later in the chapter.

 * **egrep**
	"Exrtended grep." This programs uses Extended REgular Expressions (EREs), which are more powerful regualar expresion notation. The cost of EREs is that they can be more computationally expensive to use.

 * **fgrep**
	"Fast grep." This variant matches fixed strings instead of regulat expressions using an algorithm optimized for fixed-string mattching. Yhe original version also was the variant that could match multiple strings *parallel*. In others word, *grep* and *egrep* could match only single regular expresions, whereas *fgrep* used different algorithm that could match multiple strings.

### POSIX 1992

The 1992 POSIX standard merge all three variants into one grep program whose beahevior is controlled by different options. anyways *egrep* and *fgrep* still can be used.

#searching_and_substitutions
