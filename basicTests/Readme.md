
   First a LaTeX file (document.tex) was created with commands found in the Wiki2LaTeX Documentation
   This was manually changed into wikitext (saved as document.wikitext) with wikimedia
   Next we used the below commands to test the conversion and to compare to manually created wikitext

   Commands:
   latexml document.tex > document.xml
   The command latexml takes a LaTeX file (document.tex) and converts it into an xml file (document.xml)
   
   latexmlpost document.xml --format=html5 > document.html
   The xml file (document.xml) is then converted into an html file (document.html) with a format of html5 using the command latexmlpost
   
   latexmlpost document.xml --format=html5 --stylesheet=/vagrant/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiText.xsl > document4.html 
   This command uses a stylesheet to convert the xml file (document.xml) to an html file (document4.html) but with wikitext code (can copy source into wikitext)

   Next we compared the generated files starting with the html file

   Problems with conversion to html:
   Bullets: text in new line appears after bullet instead of same line
   Numbers: Numbers changed to letters with parentheses around it instead of numbers with periods after and text goes into new line after letters instead of same line
   Formatting: Font sizes don't change to be big or small, left allignment instead of center allignment when needed, no math formatting, no box around ''ignore''

   Compared to wikiText file:
   wikiText has many of the same problems except there were also double bullets instead of single bullets and math was formatted

   	Tasks:
   	1. Show errors, commands, input and output to Bruce to see if errors are because of latexml software or our input
   	2. Compare manually created wikiText to latexml created wikiText and try to make identical (remove redundant code and simplify)
   		Subtasks:
   			1. Compare manually
   			2. Create individual tests
   			3. Plan implementation
   	3. Implement changes (to be specified later)
   	
   	
   Solutions:
      The XSLT stylesheets were modified to check for cases including bold and italic text, headings, small and big text, and centered text. When these were found, new elements were created. All div elements were commented out and so were most attributes and id's. I also needed to remove the creation of list elements when encountering enumerate and itemize and instead took the data and added a '*' or '#' in front of it as appropriate.
      There were also changes to create a way to split the file at math elements and include comments, further described in the split folder.
