global aLessons;
global startTime;

set startTime 0;


# Yale system adaptation:
#
# : means a bar over the vowel
# ; means a falling over the vowel
# ' means a rising over the vowel
#
# example: using tau as base word
#
# high         : ta:u
# high rising  : ta'u
# mid          : tau
# low falling  : ta;uh 
# low rising   : ta'uh
# low          : tauh


######################################  
# put lessons here, in the format:
#
# "lesson name" {
#
#   english   cantonese
#   english   cantonese
#   english   { cantonese_option_1 canotese_option_2 }
#   { english phrase }   { 
#                          { cantonese phrase option 1 }
#                          { cantonese phrase option 2 }
#                          { cantonese phrase option 3 }
#                        }
# }
#
#
######################################
set lLessons {
			
"numbers" {
	
	zero       li:ng
	one        ya:t
	two        {yih le'uhng}
	three      sa:am
	four       sei
	five       {m'h ng'h}
	six        luhk
	seven      cha:t
	eight      baat
	nine       ga'u
	ten        sahp
	hundred    baak
	dollar     ma:n
	pound      bohng
	dozen      da:
	
}


"fruit" {
    
	fruit      {{sa:ang gwo'}}
	mango      {{mo:ng gwo'}}
	orange     cha'ang
	apple      {{pi;hng gwo'}}
	banana     {{he:ung ji:u}}
	grape      {{ta;ih ji'}}
	pear       le'i
	watermelon {{sa:i gwa:}}
	papaya     {{muhk gwa:}}
	pineapple  {{bo: lo'h}}
	lychee     {{laih ji:}}
	kiwi       {{ke;ih yih gwo'}}
	durian     {{lauh lihn}}

}

"fruit2" {
	{an orange} {{ya:t go cha'ang}}
	
	{3 papaya}  {{sa:am go muhk gwa:}}
	
	{a pound of bananas} {{ya:t bohng he:ung ji:u}}

}

"interests and leisure" {

	{watch a film}        {{ta'i dihn yi'ng} {ta'i hei}}
	{watch television}    {{ta'i dihn sih}}
	{go travelling}       {{heui le'uih ha;hng}}
	{take pictures}       {{yi'ng se'ung}}
	{listen to music}     {{te:ng ya:m ngohk}}
	{listen to radio}     {{te:ng sa:u ya:m ge:i}}
	{play tennis}         {{da' mo'hng ka;uh}}
	{play basketball}     {{da' la;ahm ka;uh}}
	{play soccer}         {{tek ju:k ka;uh}}
	{play mah johng}      {{da' mah ju:k}}
	{ride a bike}         {{cha'ai da:an che:}}
	{swim}                {{ya;uh se'ui}}
	{run}                 {{pa'au bouh}}
	{sing a song}         {{cheung go:}}
	{read a book}         {{ta'i syu:}}
	{read a newspaper}    {{ta'i bou ji'}}
	{read a magazine}     {{ta'i jahp zih}}
	{window shopping}     {{ha;ahn ga:ai}}
	{play videogames}     {{wa'an ya;uh hei ge:i}}
	
	
}
	
"around the house" {

	{rubbish bag}  {{laahp saap do'i}}
	TV             {{dihn sih}}
	{living room}  {{haak te:ng}}
	{dining room}  {{faahn te:ng}}
	bedroom        {{seuih fo'ng}}
	room           fo'ng
	{study room}   {{syu: fo'ng}}
	bathroom       {{chu:ng le;uhng fo'ng}}
	toilet         {{chi so'}}
	basement       {{deih lo;uh}}
	garage         {{che: fo;hng}}
	garden         {{fa: yu'n}}
	balcony        {{ke;h la'u}}
	key            {{so' si;h}}
	{vacuum cleaner} {{ka:p cha;hn ge:i}}
	{washing machine} {{sa'i yi: ge:i}}
	bed            cho;hng
	furniture      {{ga; si:}}
	curtain        {{che:ung li'm}}
	telephone      {{di;hn wa'}}
	door           mu;hn
	sofa           {{so: fa'}}
	{dining table} {{cha;h ge:i}}
	bookcase       {{syu: ga'}}
	carpet         {{deih ji:n}}
	lamp           da:ng
	
}
	
"ortega" {
	ooo	{むもみむ}
	oox	{もみもみ}
	oxo	{まむーむ}
	oxx	{ざまもむ}
	xoo	{さーむまむみ}
	xox	{ざもみまむま}
	xxo	{ざみむむ}
	xxx	{ざももまーま}
}



	
}; # end set lLessons

foreach {sLesson lLesson} $lLessons {
	set aLessons($sLesson) $lLesson
}