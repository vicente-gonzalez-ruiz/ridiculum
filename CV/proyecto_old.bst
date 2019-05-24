% BibTeX standard bibliography style `proyectos'

ENTRY
  { title
%	    Título del proyecto.
    entity
%	    Nombre de la entidad financiadora.
    start
%	    Fecha de comienzo del proyecto.
    finish
%	    Fecha de fin del proyecto.
    head
%	    Nombre del investigador principal.
    code
%	    Código del proyecto.
    money
%	     Financiación del proyecto.
    number_of_researchers
%	    Pues eso.
  }
% There are no integer entry variables
  {}
  { label }

INTEGERS { output.state before.all mid.sentence after.sentence after.block }

FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}

FUNCTION {output.bibitem}
{ newline$
  "\bibitem{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

% This function finishes all entries.
FUNCTION {fin.entry}
{ add.period$
  write$
  newline$
}

FUNCTION {project}
{ output.bibitem
  "\textbf{Título:} " write$
  title write$
  "\newline" write$
  "\textbf{Entidad financiadora:} " write$
  entity write$
  "\newline" write$
  "\textbf{Duraci\'on desde:} " write$
  start write$
  " \textbf{Hasta:} " write$
  finish write$
  "\newline" write$
  "\textbf{Investigador principal:} " write$
  head write$
  "\newline" write$
%  new.block
%  note output
  fin.entry
}

% We use entry type `misc' for an unknown type; BibTeX gives a warning.
FUNCTION {default.type} { project }

% Now we read in the .BIB entries.
READ

% Now comes the computation for numeric labels.
% We use either the sorted order or original order.
% We still have to keep track of the longest (in width$ terms) label, for use
% by the "thebibliography" environment.

STRINGS { longest.label }

INTEGERS { number.label longest.label.width }

FUNCTION {initialize.longest.label}
{ "" 'longest.label :=
  #1 'number.label :=
  #0 'longest.label.width :=
}

FUNCTION {longest.label.pass}
{ number.label int.to.str$ 'label :=
  number.label #1 + 'number.label :=
  label width$ longest.label.width >
    { label 'longest.label :=
      label width$ 'longest.label.width :=
    }
    'skip$
  if$
}

EXECUTE {initialize.longest.label}

ITERATE {longest.label.pass}

% Escribe la cadena `\begin{thebibliography}{<numero_de_entradas>}'
% Now we're ready to start writing the .BBL file.
% We begin, if necessary, with a LaTeX macro for unnamed names in an alphabetic
% label; next comes stuff from the `preamble' command in the database files.
% Then we give an incantation containing the command
%     \begin{thebibliography}{...}
% where the `...' is the longest label.
%
% We also call init.state.consts, for use by the output routines.
FUNCTION {begin.bib}
{ preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{"  longest.label  * "}" * write$ newline$
}

EXECUTE {begin.bib}

EXECUTE {init.state.consts}

% Now we produce the output for all the entries
ITERATE {call.type$}

% Finally, we finish up by writing the `\end{thebibliography}' command.
FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}" write$ newline$
}

EXECUTE {end.bib}
