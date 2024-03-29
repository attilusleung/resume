% resume.cls
% Basic resume template
% Newton Ni, cn279@cornell.edu

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2017/10/10]

% Inherit from article
\LoadClass{article}

% Prerequisites
\RequirePackage{enumitem}
\RequirePackage{fontspec}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage{titlecaps}
\RequirePackage{color}
\RequirePackage{ifthen}
\RequirePackage{hyperref}

% Package options
\Addlcwords{and}
\definecolor{accent}{RGB}{38, 139, 210}

% Margins
\RequirePackage[left=1in, right=1in, top=1.25in, bottom=0in, headheight=50pt, headsep=5pt]{geometry}

% Hyphenation
\RequirePackage[none]{hyphenat}

% Minimum requirements for .cls file
\renewcommand{\normalsize}{\fontsize{11pt}{11pt}\selectfont}
% \setlength{\textwidth}{6.5in}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{9in}
\pagenumbering{gobble}

% Font loading
\setmainfont{Raleway}

% Define variables
\def \@author{Jimbo Smith}
\def \@phone{000-000-0000}
\def \@email{abcdef@gmail.com}
\def \@site{test.com}

\newcommand{\setauthor}[1]{\def \@author{#1}}
\newcommand{\setphone}[1]{\def \@phone{#1}}
\newcommand{\setemail}[1]{\def \@email{#1}}
\newcommand{\setsite}[1]{\def \@site{#1}}

% Make header
\fancypagestyle{default}{
    \fancyhf{}
    \chead{
        \begin{spacing}{0.75}
            \huge{\@author}
        \end{spacing}
        \href{mailto:\@email}{\@email}
    }
    \lhead{\@phone}
    \rhead{\href{https://\@site}{\@site}}
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\headrule}{\hbox to\headwidth{\color{accent}\leaders\hrule width \headrulewidth\hfill}}
    \renewcommand{\footrulewidth}{0pt}
}
\AtBeginDocument{\thispagestyle{default}}

% Utility macros
\def \@rule{\color{accent}\hrule}
\def \@break{\vspace{.6\baselineskip}}
\def \@smallbreak{\vspace{.1\baselineskip}}
\def \@bigbreak{\vspace{1.4\baselineskip}}

% Entry with title, date, and description
% Usage: \entry{title}{description}{date}
% \newcommand{\entry}[3]{
%     \begin{spacing}{0}
%         \ifthenelse{\equal{#2}{}}{
%             \textbf{#1} \hfill
%         }{
%             \textbf{#1} - #2 \hfill #3
%         }
%     \@break
%     \end{spacing}
% }


\newenvironment{rightcolumn}{
    \begin{flushright}
        \begin{parbox}[t]{0.1 \textwidth}
}{
        \end{parbox}
    \end{flushright}
}


\newenvironment{entry}[3]{
        % \begin{minipage}[t]{0.95 \textwidth}
        \begin{spacing}{0}
            \ifthenelse{\equal{#2}{}}{
                \textbf{#1} \hfill
            }{
                \textbf{#1} - #2
            }
            \ifthenelse{\equal{#3}{}}{
            }{
                % \hfill \break
                \hfill #3
            }
            % \ifthenelse{\equal{#2}{}}{
            % %     \textbf{#1}
            % }{
            % %     \textbf{#1} - #2
            % }
        \end{spacing}
        \@bigbreak
        % \hfill \break
        % \begin{itemize}[label={}, itemsep=-0.7ex, topsep=0ex, leftmargin=*]
    }{
        % \end{itemize}
        % \@bigbreak
        \@break
        % \end{minipage}
        % \hfill
}

\newenvironment{entryleft}[3]{
        % \begin{minipage}[t]{0.73 \textwidth}
        \begin{spacing}{0.2}
            \ifthenelse{\equal{#2}{}}{
                \textbf{#1} \hfill
            }{
                \textbf{#1} - #2
            }
            \ifthenelse{\equal{#3}{}}{
            }{
                % \hfill \break
                \hfill #3
            }
            % \ifthenelse{\equal{#2}{}}{
            % %     \textbf{#1}
            % }{
            % %     \textbf{#1} - #2
            % }
        \end{spacing}
        \@bigbreak
        % \hfill \break
        % \begin{itemize}[label={}, itemsep=-0.7ex, topsep=0ex, leftmargin=*]
    }{
        % \end{itemize}
        % \@bigbreak
        % \end{minipage}
        \hfill
}

\newenvironment{entryright}{
        % \begin{minipage}[t]{0.25 \textwidth}
        \makebox{0.25 \textwidth}[r]
        \begin{flushright}
        \@smallbreak
        % \begin{itemize}[label={}, itemsep=-0.1ex, topsep=0.2ex, leftmargin=*]
        % \small
    }{
        % \end{itemize}
        \end{flushright}
        \end{minipage}
}

\newenvironment{smalldescription}{
        \begin{itemize}[label={}, itemsep=0.1ex, topsep=0.2ex, leftmargin=*]
        \small
    }{
        \end{itemize}
        \@break
}

\newcommand{\entryitem}[2]{
    \begin{spacing}{1} #1 \\ #2 \\ \end{spacing} \@bigbreak
}

% Itemized descriptions
\renewenvironment{description}{
    \begin{minipage}{0.8\textwidth}
    \begin{spacing}{0.2}
        \begin{itemize}[label={-}, itemsep=0.02ex, topsep=0.05ex]
        \small
    }{
        \end{itemize}
        \@break
    \end{spacing}
    \end{minipage}
}

% Automate setting up similar environments
\newcommand{\@makeenvironment}[1] {
    \newenvironment{#1}{
        % not center?
        % \centering
        \raggedright
        % \begin{spacing}{0}
            \textbf{\large{\titlecap{#1}}}
        % \end{spacing}
        \@break
        \\
    }{
        \@rule
        \@break
    }
}

% Same environment, no line break
\newcommand{\@maketightenvironment}[1] {
    \newenvironment{#1}{
        \centering
        \textbf{\large{\titlecap{#1}}}
        \@break
    }{}
}

% Set up different environments
\@makeenvironment{education}
\@makeenvironment{experience}
\@makeenvironment{projects}
\@maketightenvironment{skills}
