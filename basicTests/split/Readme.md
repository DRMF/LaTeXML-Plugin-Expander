Split Documentation:
Goals:
  Split the file when math tags were found
  Take data from comments and display as plain text in split files
  
Process:
  To achieve this, I looked at the latexmlpost documentation where there was a --split option. I had to use this option for my needs. I ended up using the following command:
  latexmlpost split.xml --format=html5 --stylesheet=~/Documents/LaTeXML-Plugin-WikiText/lib/LaTeXML/resources/XSLT/LaTeXML-wikiText-split.xsl > split/splitTest1.wikiText --splitpath="//ltx:para" --split --destination=split/splitTest2.wikiText
  
  This places all split files into a directory called split. Inside, there are two useless files, splitTest2.wikiText and splitTest1.wikiText, but the syntax of the latexmlpost command required these destination. This command splits when it sees para elements. A consequence of this is that any other para elements would also be generated but this was necessary to take the comments and place in generated files.
  
  To include comments, I edited the math stylesheet. When a math tag was found, the following commands also ran:
  '''<xsl:if test="following-sibling::comment()[1]">
	   <xsl:element name="p">
			 <xsl:value-of select="following-sibling:comment()[1]"/>
	   </xsl:element>
    </xsl:if>'''

If a comment was found, it would select the data in the comment and place in a <p> tag.
    
Bugs:
  latexml creates comments for every 25 lines in .tex files so if this happens to be after a math tag, this is also included.
  Comments were not formatted for readability, it is exactly as is in the latex file
