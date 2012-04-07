\version "2.12.3"

\include "english.ly"

melodyWithChordSymbols =
		<<
			\time 4/4

			% chords
			\new ChordNames {
				\chordmode {
			        \huge
			
					% A section
					\set noChordSymbol = "" 
					\partial 8 r8 |
					\repeat volta 2 {
						bf1:7 | bf1:7 | bf1:7 | bf1:7 | \break
						ef1:7 | ef1:7 | bf1:7 | bf1:7 | \break
						f1:7 | bf1 | bf1 |  
					}
					% endings 1. and 2.
					\alternative { {bf2 f2:7}{bf2 f4:7 bf4:7} } | \break
					
					% B section
					\repeat volta 2 {	
						ef1 | bf2:7 c2:dim | ef1:6 | ef1:7 | \break
						af1:7 | af1:7 | ef1 | ef1 |  \break
						bf1:7 | bf1:7 | ef1 | 
					}
					\alternative { 
						{ef2 c4:dim bf4:7} 
						{ef1}
					}  \break
	            }
	        }

			% notes
			{
				\set Score.markFormatter = #format-mark-box-alphabet
				\mark \default
				
				\key bf \major
				
				% A section
				\partial 8 d'8 |
				\repeat volta 2 {
%					bf1:7 | bf1:7 | bf1:7 | bf1:7 | \break
					f'4 g'4 af'4 g'4 | 
					f'8 g'4 af'8 ~af'4. g'8 |
					f'8 f'8 g'4 af'4 g'8 g'8 |
					f'8 g'4 f'8 ~f'4. g'8 |
					
%					ef1:7 | ef1:7 | bf1:7 | bf1:7 | \break
					bf'4 c''4 df''4 c''4 | 
					bf'8 c''4 df''8 ~df''4 bf'8 bf'8~ |
					bf'2 r8 f'8 cs'8 d'8 |
					b2 r8 f'8 f'8 d'8 |

%					f1:7 | bf1 | bf1 |  
					f'4. e'8 ef'8 c'4. |
					bf'8 f'8 bf'8 f'8 f'4 d'8 bf8~ |
					bf2 r2 |
					
				}
				% endings 1. and 2.
				\alternative { 
%					{bf2 f2:7}
					{r4 f'8 f'8~ f'4 r8 d'8}
%					{bf2 f4:7 bf4:7} 
					{bf4 bf'8 bf'8 a'4 af'4 }
				} \bar "||" \break
				
				% B section
				\mark \default
				\key ef \major
				\repeat volta 2 {	
					
					% ef1 | 
					g'2. g'4 |
					% bf2:7 c2:dim | 
					af'2 a'2 | 
					% ef1:6 | 
					r8 bf'8 c''8 ef''8~ ef''8 c''8 bf'8 ef'8 |
					% ef1:7 |
					g'4 gf'8 f'8~ f'4. ef'8 |

					% af1:7 | 
					gf'8 ef'8 f'4 f'8 df'4. |
					% af1:7 | 
					r4 gf'8 ef'8 f'8 ef'4 ef'8~ |
					% ef1 | 
					ef'2 r2 |
					% ef1 |  \break
					r2 r8 bf'8 bf'8 g'8 |
					
					% bf1:7 | 
					bf'4. bf'8 a'8 bf'8~ bf'4 |
					% bf1:7 | 
					r4 fs'8 g'8 ef'8 fs'4 ef'8~ |
					% ef1 | 
					ef'2 r2 | 
				}
				\alternative { 
					% {ef2 c4:dim bf4:7} 
					{r4 bf'8 bf'8 a'4 af'4}
					% {ef1}
					{r4 bf'8 ef''8~ ef''2}
				}  \break
			}

			%\include "include/lyrics.ly"

		>>	

% -----------------------------------------------
% Typeset using Lilypond 
% Copyright c. 2011 by Lucas Gonze <lucas@gonze.com>
% Hereby donated to the public domain.
% -----------------------------------------------





