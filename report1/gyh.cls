
\ProvidesClass{gyh}[2024/08/23 GYH LaTeX class]

\LoadClass{ctexart}

\RequirePackage{graphicx}

\RequirePackage{listings}

\RequirePackage{tcolorbox}

\RequirePackage{xcolor}

\lstset{
  language=bash,
  backgroundcolor = \color{lightgray},
  showspaces=false,
  showstringspaces=false,
  breaklines=true,
  frame=single
}

\newcommand{\shCode}[1]{
    \lstinline[language=bash]|#1|
}

\newcommand{\ans}[1]{
  \marginpar{\textbf{ans:} #1}
}

\renewcommand\lstlistingname{Step-Code}

\newcommand{\showSh}[1]{
    \lstinputlisting[language=bash, caption={\lstname}]{../../step/#1.sh}
}

\newcommand*\h{\section}
\newcommand*\hh{\subsection}
\newcommand*\hhh{\subsubsection}



% 定义一个名为notebox的tcolorbox样式
\tcbset{
    notebox/.style={
        enhanced,
        colback=green!5,
        colframe=green!35!black,
        fonttitle=\bfseries,
        title=Note:,
        left=8pt,
        right=8pt,
        top=8pt,
        bottom=8pt,
        boxsep=5pt,
        arc=4pt,
    }
}

\newcommand{\note}[1]{
\begin{tcolorbox}[notebox]
  #1
\end{tcolorbox}
}