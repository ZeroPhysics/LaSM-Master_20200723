% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Eigene Klasse und benötigte Latex Version definieren
% ----------------------------------------------------- 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{\CLSPath Memo}[2018/02/07 LaSM Memo]

% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Laden der Dokumentklasse
% ----------------------------------------------------- 
\LoadClass[
	11pt,
	paper  		= a4,
	twoside 	= false,			    % doppelseitiges Layout, fährt auch vertikalen Ausgleich durch für einheitliche Grundlinien
	DIV  		= calc,					% Anzahl der gleihmäßigen Unterteilungen zur Bildung des Satzspiegel, S.30 scrguide
	draft 		= false, 				% Entwurfsmodus: gibt z.B. Hinweise auf Absätze die manuelle Nachbearbeitung erfordlich machen 
										% durch schwarze KÃ¤stchen
	fleqn,								% Gleichungen linksbündig ausgeben. Option muss in der
										% Dokumentenklasse geladen werden. Wird nicht in KOMAoptions
										% unterstützt.
]
{scrartcl}
%
%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Neuer Befehl um FRONTMATTER vordefiniert in LaSM-Master einzufügen
% ----------------------------------------------------- 
\newcommand{\inputFM}{
\title{\lasmtitle}
\author{\lasmauthor}
\date{\lasmdate}
\maketitle
\input{\FMPath Symbols}
\input{\FMPath Abbreviations}
}
%
%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Neuer Befehl um APPENDIX vordefiniert in LaSM-Master einzufügen
% ----------------------------------------------------- 
%
\newcommand{\inputAPPENDIX}{}
%
%
% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Neuer Befehl um BACKMATTER vordefiniert in LaSM-Master einzufügen
% ----------------------------------------------------- 
\newcommand{\inputBM}{
%\section*{Symbolverzeichnis} 
%\input{\FMPath Symbols}
\printbibliography
}