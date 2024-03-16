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

\pagestyle{fancy}
\fancyhf[HR]{\TAATemplateRHdr}
\fancyhf[HL]{\TAATemplateLHdr}
\fancyhf[FC]{\thepage}

\endinput