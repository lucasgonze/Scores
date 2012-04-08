\version "2.12.3"

\include "english.ly"

melodyWithChordSymbols =
		<<
			\time 4/4

			% chords
			\new ChordNames {
				\chordmode {
			        \huge
					c1:7 | c1:7 | c1:7 | c1:7 | \break
					c1:7 | c1:7 | c1:7 | c1:7 | \break
					g1:m | g1:m | g1:m | g1:m | \break
					g1:m | g1:m | g1:m | g1:m | \break
	            }
	        }

			% notes
			{
				\key bf \major
				
				\bar "||"
				g'4 c''4 c''4 c''8 b'8 | 
				% produces "warning: tremolo duration is too long", but I dont understand this error, and it doesn't appear to be causing harm.
				c''4 c''4 c''4( bf':4) | 
				g'4 c''8 c''8 c''4 b'4 |
				c''4( bf'4) r4. g'8 |
				
				g'4 c''4 c''4 c''8 b'8 |
				c''4 c''4 c''4( bf'8) g'8 |
				c''4 g'8 g'8 bf'4 bf'4 |
				g'2 r2 |
				
				\bar "||"
				
				d''8 d''8 d''8 d''8 d''4 g'4 |
				bf'4 bf'4 d''8( c''8 bf'4) |
				d''8 d''8 d''8 g'8 bf'4 bf'4 |
				g'2 r2 |
				
				d''8 d''8 d''8 d''8 d''4 g'4 |
				bf'4 bf'4 d''8( c''8 bf'8) d''8 |
				d''4 d''8 g'8 bf'4 bf'4 |
				g'2 r2 
				\bar "||"
				
			}

			\include "include/lyrics.ly"

		>>	

% -----------------------------------------------
% Typeset using Lilypond 
% Copyright c. 2011 by Lucas Gonze <lucas@gonze.com>
% Hereby donated to the public domain.
% -----------------------------------------------





