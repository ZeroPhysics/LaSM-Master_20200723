%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Eigene Klasse und benötigte Latex Version definieren
% ----------------------------------------------------- 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{\CLSPath Thesis}[2018/04/30 LaSM Thesis]
%
%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Laden der Dokumentklasse
% ----------------------------------------------------- 
\LoadClass[
	11pt,
	BCOR 		= 8mm, 	            	% Bindekorrektur
	twoside 	= true,					% doppelseitiges Layout, fährt auch vertikalen Ausgleich durch für einheitliche Grundlinien
	DIV  		= calc,					% Anzahl der gleihmäßigen Unterteilungen zur Bildung des Satzspiegel, S.30 scrguide
	draft 		= false, 				% Entwurfsmodus: gibt z.B. Hinweise auf Absätze die manuelle Nachbearbeitung erfordlich machen 
										% durch schwarze KÃ¤stchen
	fleqn,								% Gleichungen linksbündig ausgeben. Option muss in der
										% Dokumentenklasse geladen werden. Wird nicht in KOMAoptions
										% unterstützt.
	titlepage 	= firstiscover, 		% Haupttitel, als Umschlagseite ausgegeben wird (Auswirkung auf Randabstände)
]
{scrbook}
%
%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Seitenformatierung: Kopf und Fußzeile formatieren 
% ----------------------------------------------------- 
\RequirePackage[headsepline=true]{scrlayer-scrpage}	                % neu für \usepackage{scrpage2}
\pagestyle{scrheadings}                 % Kopf und Fußzeile im Seitenstil festelegen
\setkomafont{pagehead}{\small}
%
%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Neuer Befehl um FRONTMATTER vordefiniert in LaSM-Master einzufügen
% ----------------------------------------------------- 
\newcommand{\inputFM}{
%	
\frontmatter
%
% Titelseite
\input{\FMPath Titlepage-Thesis}
%
% Erklärung
\input{\FMPath Erklaerung}
%
% Abstract
\addchap{Kurzfassung} 
\input{\FMPath Abstract}
%
% Danksagung
\addchap{Danksagung}
\input{\FMPath Acknowledgements}
\tableofcontents		% Inhaltsverzeichnis
\listoffigures			% Abbildungsverzeichnis
\listoftables
%
% Symbolverzeichnis
\addchap{Symbolverzeichnis} 
\input{\FMPath Symbols}
%
% Abkürzungsverzeichnis
\addchap{Abk\"urzungsverzeichnis} 
\input{\FMPath Abbreviations}
\mainmatter
%
} % ENDE von Befehl um Frontmatter in der main einzufügen
%
%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Neuer Befehl um APPENDIX vordefiniert in LaSM-Master einzufügen
% ----------------------------------------------------- 
%
\newcommand{\inputAPPENDIX}{%  Befehl um Backmatter in der main einzufügen
%
% - - - - - - - - - - - - - - - - - - - - - - - - -
% Redefine space above annex headings using the same as for backmatter (\vspChapBM)
% (definition of \vspChapBM in CommandsVariables.sty)
\renewcommand*{\chapterheadstartvskip}
{\vspace*{\vspChapBM\topskip}}   
% - - - - - - - - - - - - - - - - - - - - - - - - -
%
\appendix   
} % ENDE von Befehl um Backmatter in der main einzufügen
%
%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Neuer Befehl um BACKMATTER vordefiniert in LaSM-Master einzufügen
% ----------------------------------------------------- 
% Backmatter can include:
%   Epilogue, Extro or Outro, Afterword, Conclusion, Postscript, Appendix,
%   Glossary, Bibliography, Index, Colophon, Postface
%
\newcommand{\inputBM}{%  Befehl um Backmatter in der main einzufügen
%
\backmatter           
%
% - - - - - - - - - - - - - - - - - - - - - - - - -
% Redefine space above headings using \vspChapBM
% (definition of \vspChapBM in CommandsVariables.sty)
\renewcommand*{\chapterheadstartvskip}
{\vspace*{\vspChapBM\topskip}}   
% - - - - - - - - - - - - - - - - - - - - - - - - -
%
\printbibliography
} % ENDE von Befehl um Backmatter in der main einzufügen