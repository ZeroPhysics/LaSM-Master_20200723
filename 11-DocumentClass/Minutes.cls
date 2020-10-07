% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Eigene Klasse und benötigte Latex Version definieren
% ----------------------------------------------------- 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{\CLSPath Minutes}[2018/02/09 LaSM Minutes]

% \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
% Laden der Dokumentklasse
% ----------------------------------------------------- 
\LoadClass[
twoside 	= false,			    % doppelseitiges Layout, fährt auch
]
{scrartcl}


\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage{setspace}
% 
\pagestyle{fancy}
\fancyhf{}% Alle Felder loeschen
\renewcommand{\headrulewidth}{0pt}
\cfoot{Seite \thepage \hspace{1pt} von \pageref{LastPage}}


\setlength{\parindent}{0pt} 
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
	\hrule 
	\medskip
	\thispagestyle{fancy}
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
\newcommand{\inputBM}{}