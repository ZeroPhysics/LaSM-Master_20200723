% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Eigene Klasse und benötigte Latex Version definieren
% ----------------------------------------------------- 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{\CLSPath Paper}[2019/07/02 LaSM Paper]

% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Laden der Dokumentklasse
% ----------------------------------------------------- 
\LoadClass[
	11pt,
	paper  		= a4,
	twocolumn   = true,
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
\title{\lasmtitle}
\author{\lasmauthor}
\newcommand{\inputFM}{
	\twocolumn[
	\begin{@twocolumnfalse}
		\begin{center}
			\maketitle
			%
			\begin{abstract}
				\input{\FMPath Abstract}
				\medskip \\
				% 		Schlagworte: \lasmkeywords
			\end{abstract}
		\end{center}
	\end{@twocolumnfalse}
	\vspace{8ex}
	]
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
\section*{Symbolverzeichnis} 
\input{\FMPath Symbols}
\section*{Abkürzungsverzeichnis} 
\input{\FMPath Abbreviations}
\printbibliography
}