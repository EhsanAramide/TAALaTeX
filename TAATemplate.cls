\RequirePackage{graphicx}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TAATemplate}[2024/3/16 Teacher Assistants Assistant Template]

\DeclareOption{RTL} {
    \PassOptionsToPackage{left=1in, right=0.75in}{geometry}
}

\DeclareOption{LTR} {
    \PassOptionsToPackage{left=0.75in, right=1in}{geometry}
}

\DeclareOption*{
    \ClassWarning{TAATemplate}{Unknown option '\CurrentOption'}
}

\ExecuteOptions{LTR}
\ProcessOptions\relax

\LoadClass{article}
\RequirePackage{fancyhdr}
\RequirePackage[a4paper, 
                top=1in,
                marginparwidth=0.6in]
                {geometry}


\newcommand{\TAATemplateRHdr}{right header txt}
\newcommand{\TAATemplateLHdr}{left header txt}

\setlength{\footskip}{40pt} % Adjust the value as needed
\setlength{\headheight}{70pt} % Adjust the value as needed

\newcommand{\UniLogo}{%
    \raisebox{\height}{\includegraphics[height=1cm]{images/KNTU-logo.png}}%
}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\UniLogo}
\fancyhf[HR]{\TAATemplateRHdr}
\fancyhf[HL]{\TAATemplateLHdr}
\fancyhf[FC]{\thepage}



% Define the exercise counter
\newcounter{exercise}[section] % Reset exercise counter at each section

% DEFINING AN EXERCISE ENVIRONMENT
\newenvironment{exercise}[1][]{
    \refstepcounter{exercise} % ADDING TO THE EXERCISE COUNTER
    \par\medskip
    \textbf{Exercise \theexercise. #1} \quad
}{
    \medskip
}

% DEFINING An ANSWER Environment.
\newenvironment{answer}[1][]{
    \par\medskip
    \textbf{Answer. #1} \quad
}{
    \medskip
}

\endinput
