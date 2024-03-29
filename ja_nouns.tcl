# -----
# Nouns
# -----

# ------
# Places
# ------
namespace eval nouns {

set lPronouns {
   {I} {私} {わたし} {self}
   {you} {あなた} {あなた} {you}
   {we} {私たち} {わたしたち} {you}
   {him} {かれ} {かれ} {}
   {her} {かのじょ} {かのじょ} {}
}

set lNounPlaces {

    {university}                  {大学} {だいがく}
    {hospital}                    {病院} {びょういん}

    {classroom} {教室} {きょうしつ}
    {dining hall} {食堂} {しょくどう}
    {office} {事務所} {じむしょ}
    {conference room} {会議室} {かいぎしつ}
    {reception desk} {受付} {うけつけ}
    {lobby} {ロビー} {ロビー}
    {room} {部屋} {へや}
    {restroom} {お手洗い} {おてあらい}
    {toilet} {トイレ} {トイレ}
    {staircase} {階段} {かいだん}
    {elevator} {エレベーター} {エレベーター}
    {escalator} {エスカレーター} {エスカレーター}
    {company} {会社} {かいしゃ}
    {house} {内} {うち}
    {department} {売り場} {うりば}
    {basement} {地下} {ちか}
    {dorm #check} {りょう} {りょう}

    {Italy} {イタリア} {イタリア}
    {Switzerland} {スイス} {スイス}

   {New York} {ニューヨーク} {ニューヨーク}
   {Beijing} {北京} {ペキン}
   {London} {ロンドン} {ロンドン}
   {Bangkok} {バンコク} {バンコク}
   {Los Angeles} {ロサンゼルス} {ロサンゼルス}

   {department store} {デパート} {デパート}
   {bank} {銀行} {ぎんこう}
   {post office} {郵便局} {ゆうびんきょく}
   {library} {図書館} {としょかん}
   {art museum} {美術館} {びじゅつかん}

   {school}          {学校} {がっこう}
   {supermarket}     {スーパー} {スーパー}
   {station}         {駅} {えき}
  
   {mountain}        {山} {やま}

   {town}         {町} {まち}
   {city}         {町} {まち}
   {place}        {所} {ところ}

}; # end set lNounPlaces

# ------
# Things
# ------

set lNounThings {

    {university}                  {大学} {だいがく}
    {hospital}                    {病院} {びょういん}

    {book} {本} {ほん}
    {dictionary} {辞書} {じしょ}
    {magazine　雑誌} {ざし} {ざし}
    {newspaper} {新聞} {しんぶん}
    {notebook} {ノート} {ノート}
    {pocket notebook} {手帳} {てちょう}
    {business card} {名刺} {めいし}
    {card} {カード} {カード}
    {telephone card} {テレホンカード} {テレホンカード}
    {pencil} {鉛筆} {えんぴつ}
    {ballpoint pen} {バールペン} {バールペン}
    {mechanical pencil} {シャープペンシル} {シャープペンシル}
    {key} {鍵} {かぎ}
    {watch} {時計} {とけい}
    {clock} {時計} {とけい}
    {umbrella} {傘} {かさ}
    {bag} {鞄} {かばん}
    {briefcase} {鞄} {かばん}
    {cassette tape} {カセットテープ} {カセットテープ}
    {tape recorder} {テープレコーダー} {テープレコーダー}
    {television} {テレビ} {テレビ}
    {radio} {ラジオ} {ラヂオ}
    {camera} {カメラ} {カメラ}
    {computer} {コンピューター} {コンピューター}
    {personal computer} {パソコン} {パソコン}
    {automobile} {自動車} {じどうしゃ}
    {car} {車} {くるま}
    {desk} {机} {つくえ}
    {chair} {いす} {いす}
    {chocolate} {チョコレート} {チョコレート}
    {coffee} {コーヒー} {コーヒー}
    {blackboard} {黒板} {こくばん}


    {classroom} {教室} {きょうしつ}
    {dining hall} {食堂} {しょくどう}
    {office} {事務所} {じむしょ}
    {conference room} {会議室} {かいぎしつ}
    {reception desk} {受付} {うけつけ}
    {lobby} {ロビー} {ロビー}
    {room} {部屋} {へや}
    {restroom} {お手洗い} {おてあらい}
    {toilet} {トイレ} {トイレ}
    {staircase} {階段} {かいだん}
    {elevator} {エレベーター} {エレベーター}
    {escalator} {エスカレーター} {エスカレーター}
    {country} {お国} {おくに}
    {company} {会社} {かいしゃ}
    {house} {内} {うち}
    {telephone} {電話} {でんわ}
    {shoes} {靴} {くつ}
    {necktie} {ネクタイ} {ネクタイ}
    {wine} {ワイン} {ワイン}
    {cigarette} {タバコ} {タバコ}
    {department} {売り場} {うりば}
    {basement} {地下} {ちか}
    {dorm #check} {りょう} {りょう}

   {department store} {デパート} {デパート}
   {bank} {銀行} {ぎんこう}
   {post office} {郵便局} {ゆうびんきょく}
   {library} {図書館} {としょかん}
   {art museum} {美術館} {びじゅつかん}

  {airplane}        {飛行機} {ひこうき}
  {ship}            {船} {ふね}
  {electric train}  {電車} {でんしゃ}
  {subway}          {地下鉄} {ちかてつ}
  {Shinkansen}      {新幹線} {しんかんせん}
  {bus}             {バス} {バス}
  {taxi}            {タクシー} {タクシー}
  {bicycle}         {自転車} {じてんしゃ}
  {unicycle}        {一輪車} {いちりんしゃ}
  
  
 
  {meal}                {ご飯} {ごはん}
  {cooked rice}         {ご飯} {ごはん}
  {breakfast}           {朝ごはん} {あさごはん}
  {lunch}               {昼ごはん} {ひるごはん}
  {supper}              {晩ごはん} {ばんごはん}
  
  {bread}       {パン} {パン}
  {egg}         {卵} {たまご}
  {meat}        {肉} {にく}
  {fish}        {魚} {さかな}
  {vegetable}   {野菜} {やさい}
  {fruit}       {果物} {くだもの}
  
  {water (cold)}    {お水} {おみず}
  {water (hot)}     {おや} {おや}
  {tea}             {お茶} {おちゃ}
  {green tea}       {お茶} {おちゃ}
  {red tea}         {紅茶} {こうちゃ}
  {milk}            {牛乳} {ぎゅうにゅう}
  {milk (katakana)} {ミルク} {ミルク}
  {juice}           {ジュース} {ジュース}
  {beer}            {ビール} {ビール}
  {alcohol}         {お酒} {おさけ}
  {sake}            {お酒} {おさけ}
  
  {video tape}                  {ビデオ} {ビデオ}
  {video deck}                  {ビデオ} {ビデオ}
  {movie}                       {映画} {えいが}
  {CD}                          {ＣＤ} {CD}
  {MD}                          {ＭＤ} {MD}
  {DVD}                         {ＤＶＤ} {DVD}
  {letter}                      {手紙} {てがみ}
  {report}                      {レポート} {レポート}
  {essay}                       {レポート} {レポート}
  {assignment}                  {レポート} {レポート}
  {photograph}                  {写真} {しゃしん}
  {store}                 {店} {みせ}
  {restaurant}                  {レストラン} {レストラン}
  {garden}                      {庭} {にわ}
  {flower garden}               {庭} {にわ}
  {yard}                        {庭} {にわ}
  
  {homework}                {宿題} {しゅくだい}
  
  {flower} {花} {はな}
  {cherry blossom}  {桜} {さくら}
  {mountain}        {山} {やま}

  {town}         {町} {まち}
  {city}         {町} {まち}
  {food}         {食べ物} {たべもの}
  {vehicle}      {車} {くるま}
  {car}          {車} {くるま}
  {place}        {所} {ところ}

  {air conditioner} {エアコン} {エアコン}
  {passport} {パスポート} {パスポート}
  {name} {名前} {なまえ}
  {map} {地図} {ちず}

  {salt} {塩} {しお}
  {sugar} {砂糖} {さとう}

}; # end set lNounThings

set lModesOfTransportation {

  {airplane}        {飛行機} {ひこうき}
  {ship}            {船} {ふね}
  {electric train}  {電車} {でんしゃ}
  {subway}          {地下鉄} {ちかてつ}
  {Shinkansen}      {新幹線} {しんかんせん}
  {bus}             {バス} {バス}
  {taxi}            {タクシー} {タクシー}
  {bicycle}         {自転車} {じてんしゃ}
  {unicycle}        {一輪車} {いちりんしゃ}
  {on foot}         {歩いて} {あるいて}

  {local (train)}                  {普通} {ふつう}
  {rapid (train)}                  {急行} {きゅうこう}
  {express (train)}                {特急} {とっきゅう}

}

variable lInanimateObjects {

    {university}                  {大学} {だいがく}
    {hospital}                    {病院} {びょういん}

    {book} {本} {ほん}
    {dictionary} {辞書} {じしょ}
    {magazine　雑誌} {ざし} {ざし}
    {newspaper} {新聞} {しんぶん}
    {notebook} {ノート} {ノート}
    {pocket notebook} {手帳} {てちょう}
    {business card} {名刺} {めいし}
    {card} {カード} {カード}
    {telephone card} {テレホンカード} {テレホンカード}
    {pencil} {鉛筆} {えんぴつ}
    {ballpoint pen} {バールペン} {バールペン}
    {mechanical pencil} {シャープペンシル} {シャープペンシル}
    {key} {鍵} {かぎ}
    {watch} {時計} {とけい}
    {clock} {時計} {とけい}
    {umbrella} {傘} {かさ}
    {bag} {鞄} {かばん}
    {briefcase} {鞄} {かばん}
    {cassette tape} {カセットテープ} {カセットテープ}
    {tape recorder} {テープレコーダー} {テープレコーダー}
    {television} {テレビ} {テレビ}
    {radio} {ラジオ} {ラヂオ}
    {camera} {カメラ} {カメラ}
    {computer} {コンピューター} {コンピューター}
    {personal computer} {パソコン} {パソコン}
    {automobile} {自動車} {じどうしゃ}
    {car} {車} {くるま}
    {desk} {机} {つくえ}
    {chair} {いす} {いす}
    {chocolate} {チョコレート} {チョコレート}
    {coffee} {コーヒー} {コーヒー}
    {blackboard} {黒板} {こくばん}


    {classroom} {教室} {きょうしつ}
    {dining hall} {食堂} {しょくどう}
    {office} {事務所} {じむしょ}
    {conference room} {会議室} {かいぎしつ}
    {reception desk} {受付} {うけつけ}
    {lobby} {ロビー} {ロビー}
    {room} {部屋} {へや}
    {restroom} {お手洗い} {おてあらい}
    {toilet} {トイレ} {トイレ}
    {staircase} {階段} {かいだん}
    {elevator} {エレベーター} {エレベーター}
    {escalator} {エスカレーター} {エスカレーター}
    {country} {お国} {おくに}
    {company} {会社} {かいしゃ}
    {house} {内} {うち}
    {telephone} {電話} {でんわ}
    {shoes} {靴} {くつ}
    {necktie} {ネクタイ} {ネクタイ}
    {wine} {ワイン} {ワイン}
    {cigarette} {タバコ} {タバコ}
    {department} {売り場} {うりば}
    {basement} {地下} {ちか}
    {dorm #check} {りょう} {りょう}

   {department store} {デパート} {デパート}
   {bank} {銀行} {ぎんこう}
   {post office} {郵便局} {ゆうびんきょく}
   {library} {図書館} {としょかん}
   {art museum} {美術館} {びじゅつかん}

  {airplane}        {飛行機} {ひこうき}
  {ship}            {船} {ふね}
  {electric train}  {電車} {でんしゃ}
  {subway}          {地下鉄} {ちかてつ}
  {Shinkansen}      {新幹線} {しんかんせん}
  {bus}             {バス} {バス}
  {taxi}            {タクシー} {タクシー}
  {bicycle}         {自転車} {じてんしゃ}
  {unicycle}        {一輪車} {いちりんしゃ}
  
  {meal}                {ご飯} {ごはん}
  {cooked rice}         {ご飯} {ごはん}
  {breakfast}           {朝ごはん} {あさごはん}
  {lunch}               {昼ごはん} {ひるごはん}
  {supper}              {晩ごはん} {ばんごはん}
  
  {bread}       {パン} {パン}
  {egg}         {卵} {たまご}
  {meat}        {肉} {にく}
  {vegetable}   {野菜} {やさい}
  {fruit}       {果物} {くだもの}
  
  {water (cold)}    {お水} {おみず}
  {water (hot)}     {おや} {おや}
  {tea}             {お茶} {おちゃ}
  {green tea}       {お茶} {おちゃ}
  {red tea}         {紅茶} {こうちゃ}
  {milk}            {牛乳} {ぎゅうにゅう}
  {milk (katakana)} {ミルク} {ミルク}
  {juice}           {ジュース} {ジュース}
  {beer}            {ビール} {ビール}
  {alcohol}         {お酒} {おさけ}
  {sake}            {お酒} {おさけ}
  
  {video tape}                  {ビデオ} {ビデオ}
  {video deck}                  {ビデオ} {ビデオ}
  {movie}                       {映画} {えいが}
  {CD}                          {ＣＤ} {CD}
  {MD}                          {ＭＤ} {MD}
  {DVD}                         {ＤＶＤ} {DVD}
  {letter}                      {手紙} {てがみ}
  {report}                      {レポート} {レポート}
  {essay}                       {レポート} {レポート}
  {assignment}                  {レポート} {レポート}
  {photograph}                  {写真} {しゃしん}
  {store}                       {店} {みせ}
  {restaurant}                  {レストラン} {レストラン}
  {garden}                      {庭} {にわ}
  {flower garden}               {庭} {にわ}
  {yard}                        {庭} {にわ}
  
  {homework}                {宿題} {しゅくだい}
  
  {flower} {花} {はな}
  {cherry blossom}  {桜} {さくら}
  {mountain}        {山} {やま}

  {town}         {町} {まち}
  {city}         {町} {まち}
  {food}         {食べ物} {たべもの}
  {vehicle}      {車} {くるま}
  {car}          {車} {くるま}
  {place}        {所} {ところ}

  {air conditioner} {エアコン} {エアコン}
  {passport} {パスポート} {パスポート}
  {name} {名前} {なまえ}
  {map} {地図} {ちず}

  {salt} {塩} {しお}
  {sugar} {砂糖} {さとう}


}; # end set lInanimateObjects

variable lAnimateObjects {
  {person}                 {人} {ひと}
  {friend}                 {友達} {ともだち}
  {family}                 {家族} {かぞく}
  {dog}                    {犬} {いぬ}
  {cat}                    {猫} {ねこ}
  {fish}                   {魚} {さかな}
  {man} {男の人} {おとこのひと}
  {woman} {女の人} {おんなのひと}
  {boy} {男の子} {おとこのこ}
  {girl} {女の子} {おんなのこ}
};

variable lPositions {
  {on top of}       {上} {うえ}
  {underneath}      {下} {した}
  {before}          {前} {まえ}
  {behind}          {後ろ} {うしろ}
  {to the right of} {右} {みぎ}
  {to the left of}  {左} {ひだり}
  {inside of}       {中} {なか}
  {outside of}      {外} {そと}
  {next to}         {隣} {となり}
  {near}            {近く} {ちかく}
};

variable lBetween {
  {between}         {間} {あいだ}
}

proc buildNounVocab {} {

   global aLessons
   
   set lWords {}
   set lLesson {}
   
   foreach "sNative sKanji sKana" $::nouns::lNounThings {
	
	    lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
      ::ui::overwriting sKana($sNative) $aKana($sNative) $sKana
		}
	    
		set aKanji($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	foreach "sNative sKanji sKana" $::nouns::lNounPlaces {
	
	  lappend lWords $sNative
	    
		if {[info exists sKana($sNative)]} {
		  ::ui::overwriting sKana($sNative) $aKana($sNative) $sKana
    }
	    
		set aKanji($sNative) $sKanji;
		set aKana($sNative) $sKana;
	}
	
	foreach sWord [lShuffle $lWords] {
	    lappend lLesson $sWord $aKanji($sWord) $aKana($sWord) 
	}
	
	set aLessons("nounsVocab") $lLesson

}

# ---------
# selectors
# ---------
proc randomFromList {l tags} {

   set n [llength $l]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 3)]
   set lOut [lrange $l $j [expr $j + 2]]
   lappend lOut {}
   return $lOut

}

proc randomThing {tags} {

   set n [llength $::nouns::lNounThings]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 3)]
   set lOut [lrange $::nouns::lNounThings $j [expr $j + 2]]
   lappend lOut {}
   return $lOut

}

proc randomAnimate {tags} {

   return [randomFromList $::nouns::lAnimateObjects $tags]

}

proc randomInanimate {tags} {

   return [randomFromList $::nouns::lInanimateObjects $tags]

}

proc randomPosition {tags} {

   return [randomFromList $::nouns::lPositions $tags]

}

proc randomBetween {tags} {

   return [randomFromList $::nouns::lBetween $tags]

}


proc randomPerson {tags} {

   set n [llength $::nouns::lPronouns]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 3)]
   set lOut [lrange $::nouns::lPronouns $j [expr $j + 2]]
   lappend lOut {}
   return $lOut

}

proc randomPlace {tags} {

   set n [llength $::nouns::lNounPlaces]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 3)]
   set lOut [lrange $::nouns::lNounPlaces $j [expr $j + 2]]
   lappend lOut {}
   return $lOut

}

proc randomModeOfTransportation {tags} {

   set n [llength $::nouns::lModesOfTransportation]
   set j [expr {int(rand()*31*$n)%$n}]
   set j [expr $j - ($j % 3)]
   set lOut [lrange $::nouns::lModesOfTransportation $j [expr $j + 2]]
   lappend lOut {}
   return $lOut

}

};

lappend lessonBuilders ::nouns::buildNounVocab