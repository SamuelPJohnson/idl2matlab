% i2m_ztitle
% --------------------------------------------
% Equivalent to :
% graphic keyword ZTITLE = "..."
% en IDL

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                    IDL2SCILAB Project
%
%--------------------------------------------------------
%   ILL (Institut Laue Langevin)
%
%   38000 GRENOBLE Cedex
%--------------------------------------------------------
% Fonction : fonction i2m_ztitle
% Auteurs :
%                 Bourtembourg Reynald
% Date creation : 19 / 05 / 2003
% Modifications : 21 / 05 / 2003
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function i2m_ztitle(titre)

global i2mvs_z

if isempty(titre)
	% On regarde si !Z.TITLE est definie
	if ~isempty(i2mvs_z.title)
		% On utilise !Z.TITLE comme titre du graphe
		theText = strrep(i2mvs_z.title,'!C',sprintf('\n'));
		theText = strrep(theText,'!!','!');
		zlabel(theText);
	end
else
	% TITLE a ete passe en keyword, on utilise la valeur du keyword
	theText = strrep(mat2str(titre),'!C',sprintf('\n'));
	theText = strrep(theText,'!!','!');
	zlabel(theText);
end
