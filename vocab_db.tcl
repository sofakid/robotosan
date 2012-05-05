global aLessons;
global startTime;

set startTime 0;

######################################  
# put lessons here, in the format:
#
# "lesson name" {
#
#   english   kanji kana
#   english   { kanji_option_1 kanji_option_2 
#             } { kana_option_1 kana_option_2 }
#   { english phrase }   { 
#                          { kanji phrase option 1 }
#                          { kanji phrase option 2 }
#                          { kanji phrase option 3 }
#                        } {
#                          { kana phrase option 1 }
#                          { kana phrase option 2 }
#                          { kana phrase option 3 }
#                        } 
#
# }
#
#
######################################
set lLessons {

"v1" {
    I                           {私} {わたし}
    we                          {私たち} {わたしたち}
    you                         {あなた} {あなた}
    {he, she}                   {あの人} {あのひと}
    {he, she (polite)}          {あの方} {あのかた}
    {ladies and gentlemen, all of you} {皆さん} {みなさん}
    teacher                     {先生} {せんせい}
    {teacher (profession)}      {教師} {きょうし}
    student                     {学生} {がくせい}
    {company employee}          {会社員} {かいしゃいん}
    {employee of}               {の社員} {のしゃいん}
    {bank employee}             {銀行員} {ぎんこういん}
    {doctor}                    {医者} {いしゃ}
    {researcher}                {研究者} {けんきゅうしゃ}
    university                  {大学} {だいがく}
    hospital                    {病院} {びょういん}
    {electricity, light}        {電気} {でんき}
    {who}                       {だれ} {だれ}
    {who (polite)}              {どなた} {どなた}
    {how old}                   {何歳} {なんさい}
    {how old (polite)}          {おいくつ} {おいくつ}
    {excuse me, but}            {失礼ですが} {しつれいですが}
    {may i have your name?}     {お名前は} {おなまえは}
    {this is mr yamada}         {こちらは山田さんです} {こちらはやまださんです}
    {i come from canada}        {カナダから来ました} {カナダからきました}
}

"v2" {

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
    {watch, clock} {時計} {とけい}
    {umbrella} {傘} {かさ}
    {bag, briefcase} {鞄} {かばん}
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

    {the English language} {英語} {えいご}
    {the Japanese language} {日本語} {にほんご}
    {what} {何} {なん}
    {so} {そう} {そう}
    {no it isn't / you are wrong} {違います} {ちがいます}
    {I see / is that so?} {そうですか} {そうですか}
    {welll...} {あのう} {あのう}
    {It's nothing} {ほんの気持ちです} {ほんのきもちです}
    {Please / Here you go} {どうぞ} {どうぞ}
    {thanks} {どうも} {どうも}
    {I hope for your kind assitance hereafter} {これからお世話になります} {これからおせわになります}
    {pleased to meet you (response to どうぞよろしく)} {こちらこそよろしく} {こちらこそよろしく}
    
}

"v3" {
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
    {house} {うち} {うち}
    {telephone} {電話} {でんわ}
    {shoes} {靴} {くつ}
    {necktie} {ネクタイ} {ネクタイ}
    {wine} {ワイン} {ワイン}
    {cigarette} {タバコ} {タバコ}
    {department} {売り場} {うりば}
    {basement} {地下} {ちか}
    {dorm #check} {りょう} {りょう}
    {-th floor} {かい} {かい　（がい）}
    {yen} {円} {えん}
    {how much} {いから} {いから}
    {hundred} {百} {ひゃく}
    {thousand} {千} {せん}
    {ten thousand} {万} {まん}
    {excuse me} {すみません} {すみません}
    {polite です} {でございます} {でございます}
    {please show me -} {を見せて下さい} {ください}
    {well, then, in that case} {じゃ} {じゃ}
    {Italy} {イタリア} {イタリア}
    {Switzerland} {スイス} {スイス}
}

"v4" {
   {get up, wake up} {起きる} {おきる}
   {sleep, go to bed} {寝る} {ねる}
   {work} {働く} {はたらく}
   {take a rest, take a holiday} {休む} {やすむ}
   {study} {勉強する} {べんきょうする}
   {finish} {終わる} {おわる}
   {department store} {デパート} {デパート}
   {bank} {銀行} {ぎんこう}
   {post office} {郵便局} {ゆうびんきょく}
   {library} {図書館} {としょかん}
   {art museum} {美術館} {びじゅつかん}
   {now} {今} {いま}
   {-oclock} {時} {じ}
   {-minute} {分} {ぶん}
   {half} {半} {はん}
   {what time} {何時} {なんじ}
   {what minute} {何分} {なんぷん}
   {a.m. / morning} {午前} {ごぜん}
   {p.m. / afternoon} {午後} {ごご}
   {morning} {朝} {あさ}
   {daytime, noon} {昼} {ひる}
   {night} {晩} {ばん}
   {evening} {夜} {よる} 
   {the day before yesterday} {一昨日} {おととい}
   {yesterday } {昨日} {きのう}
   {today} {今日} {きょう}
   {tomorrow} {明日} {あした}
   {the day after tomorrow} {明後日} {あさって}
   {this morning} {今朝} {けさ}
   {this evening, tonight} {今晩} {こんばん}
   {rest, holiday, day off, break} {休み} {やすみ}
   {lunchtime} {昼休み} {ひるやすみ}
   {every morning} {毎朝} {まいあさ}
   {every night} {毎晩} {まいばん}
   {every day} {毎日} {まいにち}
   {Monday} {月曜日} {げつようび}
   {Tuesday} {火曜日} {かようび}
   {Wednesday} {水曜日} {すいようび}
   {Thursday} {木曜日} {もくようび}
   {Friday} {金曜日} {きんようび}
   {Saturday} {土曜日} {どようび}
   {Sunday} {日曜日} {にちようび}
   {what day of the week} {何曜日} {なんようび}
   {number} {番号} {ばんごう}
   {what number} {何番} {なんばん}
   {from -} {から} {から}
   {up to -} {まで} {まで}
   {and (particle connecting nouns)} {と} {と}
   {your place} {そちら} {そちら}
   {That's tough isn't it?} {大変ですね} {たいへんですね}
   {well, let me see} {えーと} {えーと}
   {please (for a favour)} {お願いします} {おねがいします}
   {certainly (sir/madame)} {かしこまりました} {かしこまりました}
   {the number being inquired about} {お問い合わせの番号} {おといあわせのばんごう}
   {New York} {ニューヨーク} {ニューヨーク}
   {Beijing} {北京} {ペキン}
   {London} {ロンドン} {ロンドン}
   {Bangkok} {バンコク} {バンコク}
   {Los Angeles} {ロサンゼルス} {ロサンゼルス}
   
}

"v5" {

  {go}              {行く} {いく}
  {come}            {来る} {くる}
  {return, go home} {帰る} {かえる}
  
  {school}          {学校} {がっこう}
  {supermarket}     {スーパー} {スーパー}
  {station}         {駅} {えき}
  
  {airplane}        {飛行機} {ひこうき}
  {ship}            {船} {ふね}
  {electric train}  {電車} {でんしゃ}
  {subway}          {地下鉄} {ちかてつ}
  {Shinkansen}      {新幹線} {しんかんせん}
  {bus}             {バス} {バス}
  {taxi}            {タクシー} {タクシー}
  {bicycle}         {自転車} {じてんしゃ}
  {on foot}         {歩いて} {あるいて}
  
  {person, people}         {人} {ひと}
  {friend}                 {友達} {ともだち}
  {he, boyfriend, lover}   {彼} {かれ}
  {she, girlfriend, lover} {彼女} {かのじょ}
  {family}                 {家族} {かぞく}
  {alone, by oneself}      {一人で} {ひとりで}
  
  {last week}   {先週} {せんしゅう}
  {this week}   {今週} {こんしゅう}
  {next week}   {来週} {らいしゅう}
  {last month}  {先月} {せんげつ}
  {this month}  {今月} {こんげつ}
  {next month}  {来月} {らいげつ}
  {last year}   {去年} {きょねん}
  {this year}   {今年} {ことし}
  {next year}   {来年} {らいねん}
  
  {when}                           {いつ} {いつ}
  {birthday}                       {誕生日} {たんじょうび}
  {local (train)}                  {普通} {ふつう}
  {rapid (train)}                  {急行} {きゅうこう}
  {express (train)}                {特急} {とっきゅう}
  {next}                           {次の} {つぎの}
  {(train) platform, -th platform} {番線} {ばんせん}
  {you're welcome}                 {どういたしまして} {どういたしまして}
  
}

"v6" {

  {eat}           {食べる} {たべる}
  {drink}         {飲む} {のむ}
  {smoke (a cig)} {吸う} {すう}
  
  {see, look at, watch} {見る} {みる}
  {hear, listen}        {聞く} {きく}
  {read}                {読む} {よむ}
  {write, draw, paint}  {書く} {かく}
  {buy}                 {買う} {かう}
  {take (a photo)}      {撮る} {とる}
  {understand, find, recognize}    {分かる} {わかる}
  
  {do}   {する} {する}
  {meet} {会う} {あう}
  
  {meet a friend} {友達に会う} {ともだちにあう}
  
  {a meal, cooked rice} {ごはん} {ごはん}
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
  {tea, green tea}  {お茶} {おちゃ}
  {red tea}         {紅茶} {こうちゃ}
  {milk}            {牛乳} {ぎゅうにゅう}
  {milk (katakana)} {ミルク} {ミルク}
  {juice}           {ジュース} {ジュース}
  {beer}            {ビル} {ビル}
  {alcohol, sake}   {お酒} {おさけ}
  
  {video tape, video deck}      {ビデオ} {ビデオ}
  {movie}                       {映画} {えいが}
  {CD}                          {ＣＤ} {CD}
  {MD}                          {ＭＤ} {MD}
  {DVD}                         {ＤＶＤ} {DVD}
  {letter}                      {手紙} {てがみ}
  {report, essay, assignment}   {レポート} {レポート}
  {photograph}                  {写真} {しゃしん}
  {store, shop}                 {店} {みせ}
  {restaurant}                  {レストラン} {レストラン}
  {garden, flower garden, yard} {庭} {にわ}
  
  {homework}                {宿題} {しゅくだい}
  {tennis}                  {テニス} {テニス}
  {soccer}                  {サッカー} {サッカー}
  {cherry blossom viewing}  {お花見} {おはなみ}
  
  {flower} {花} {はな}
  
  {what}                            {何} {なに}
  {together}                        {一緒に} {いっしょに}
  {a little while, a little bit}    {ちょっと} {ちょっと}
  {always, usually}                 {いつも} {いつも}
  {sometimes}                       {時々} {ときどき}
  
  {after that, and then (to join sentences)}    {それから} {それから}
  {and (to join sentences)}                     {そひて} {そして}
  
  {yes (informal)}  {ええ} {ええ}
  {that's good}     {いいですね} {いいですね}
  {i see}           {分かりました} {わかりました}

  {Mexico} {メキシコ} {メキシコ}

}

}; # end set lLessons
#
# TODO 
#  - there's a bunch of veggies and fruits in lesson 6
#  - keto foods
#
#  CHECK KANJI
#  - v6 gohan 
#  - v6 oya (hot water)

# ----------
# Adjectives
# ----------

# -------------
# い Adjectives
# -------------
set lIAdj {
  {} {} {}
}

# -------------
# な Adjectives
# -------------
set lNaAdj {
  {} {} {}
}


# -----
# Nouns
# -----

# ------
# Places
# ------

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
    {house} {うち} {うち}
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
    {watch, clock} {時計} {とけい}
    {umbrella} {傘} {かさ}
    {bag, briefcase} {鞄} {かばん}
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
    {house} {うち} {うち}
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
  
  {person, people}         {人} {ひと}
  {friend}                 {友達} {ともだち}
  {family}                 {家族} {かぞく}
 
  {a meal, cooked rice} {ごはん} {ごはん}
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
  {tea, green tea}  {お茶} {おちゃ}
  {red tea}         {紅茶} {こうちゃ}
  {milk}            {牛乳} {ぎゅうにゅう}
  {milk (katakana)} {ミルク} {ミルク}
  {juice}           {ジュース} {ジュース}
  {beer}            {ビル} {ビル}
  {alcohol, sake}   {お酒} {おさけ}
  
  {video tape, video deck}      {ビデオ} {ビデオ}
  {movie}                       {映画} {えいが}
  {CD}                          {ＣＤ} {CD}
  {MD}                          {ＭＤ} {MD}
  {DVD}                         {ＤＶＤ} {DVD}
  {letter}                      {手紙} {てがみ}
  {report, essay, assignment}   {レポート} {レポート}
  {photograph}                  {写真} {しゃしん}
  {store, shop}                 {店} {みせ}
  {restaurant}                  {レストラン} {レストラン}
  {garden, flower garden, yard} {庭} {にわ}
  
  {homework}                {宿題} {しゅくだい}
  
  {flower} {花} {はな}
 

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
  {on foot}         {歩いて} {あるいて}

  {local (train)}                  {普通} {ふつう}
  {rapid (train)}                  {急行} {きゅうこう}
  {express (train)}                {特急} {とっきゅう}

}

# -------------
# Ichidan verbs
# -------------

set lIchidan {

   {get up}   {起きる} {おきる}
   {wake up}  {起きる} {おきる}
   {see}      {} {}
   {look at}  {} {}
   {watch}    {} {}
   {} {} {}
   {} {} {}
   
}; # end set lIchidan

# -----------
# Godan verbs
# -----------
# ? {stand still} {} {ただずむ}

# TODO
# - when 話す is conjugated to noun form, 
#   the kanji needs to absorb the し.
#   i.e. it should be 話 not 話し, 
#   (but 話します is still correct)
set lGodan {
   {die} {死ぬ} {しぬ}
   {drink} {飲む} {のむ}
   {erase} {消す} {けす}
   {finish} {終わる} {おわる}
   {go to bed} {寝る} {ねる}
   {leave} {去る} {さる}
   {return} {帰る} {かえる}
   {go home} {帰る} {かえる}
   {meet} {会う} {あう}
   {play} {遊ぶ} {あそぶ}
   {sell} {売る} {うる}
   {sleep} {寝る} {ねる}
   {speak} {話す} {はなす}
   {study(godan)} {学ぶ} {まなぶ}
   {swim} {泳ぐ} {およぐ}
   {take a rest} {休む} {やすむ}
   {take a holiday} {休む} {やすむ}
   {turn off} {消す} {けす}
   {walk} {歩く} {あるく}
   {win} {勝つ} {かつ}
   {work} {働く} {はたらく}
   {write} {書く} {かく}
 
}; # end set lGodan

# ----------
# Suru verbs
# ----------
# all end with する
set lSuru {
  {study} {勉強} {べんきょう}
  {travel} {旅行} {りょこう}
  {telephone} {電話} {でんわ}
  {take a walk} {散歩} {さんぽ}
  {have a meal} {食事} {しょくじ}
  {marry} {結婚} {けっこん}
  {explain} {説明} {せつめ}
  {do the washing} {洗濯} {せんたく}
  {ask questions} {質問} {しつもん}
  {promise} {約束} {やくそく}
  {reserve} {予約} {よやく}
  {clean} {掃除} {そうじ}
  {shop} {買い物} {かいもの}
  {prepare} {準備} {じゅんび}
  {drive} {ドライブ} {ドライブ}
  {kiss} {キス} {キス}
  {type} {タイプ} {タイプ}
  {knock} {ノック} {ノック}
  {do homework}                {宿題} {しゅくだい}
  {play tennis}                  {テニス} {テニス}
  {play soccer}                  {サッカー} {サッカー}
  {do cherry blossom viewing}  {お花見} {おはなみ}
 
}; # end suru verbs


# TODO
# ----------
# nidan verb
# ----------
# uru/eru - to get. see nidan.pdf


# -----------
# Conjugation
# -----------

# irregular verbs: iku, kuru, suru
proc conjugateIku {} {
   # 　　　　いか　　　いき　いく　いけ　　いこう　　いった　　いって
   return {{行か} {行き} {行く} {行け} {行こう} {行った} {行って}}
}

proc conjugateKuru {} {
   # 　　　　こ　　き　　くる　くれ　　こよう　　きた　　きて
   return {{来} {来} {来る} {来れ} {来よう} {来た} {来て}}
}

proc conjugateSuru {} {
   return {{し} {し} {する} {すれ} {しよう} {した} {して}}
}


proc conjugateIchidan {sVerb} {

   set n [expr [string length $sVerb] -1];
   set b [string range $sVerb 0 [expr $n -1]]
   
   set l {{} {} {る} {れ} {よう} {た} {て}}
	
   foreach [list a i u e o ta te] {
        {} {} {る} {れ} {よう} {た} {て}
   } {};
   
   return [list $b$a $b$i $b$u $b$e $b$o $b$ta $b$te]
   
}

proc conjugateGodan {sVerb} {

   set n [expr [string length $sVerb] -1];
   set cLast [string index $sVerb $n]
   set sBase [string range $sVerb 0 [expr $n -1]]
   
   # base: a i u e o ta te
   switch $cLast {

	   {う} { set l {{あ} {い} {う} {え} {おう} {った} {って}}; }
	   {つ} { set l {{た} {ち} {つ} {て} {とう} {った} {って}}; }
	   {づ} { set l {{だ} {ぢ} {づ} {で} {どう} {っだ} {っで}}; }
	   {る} { set l {{ら} {り} {る} {れ} {ろう} {った} {って}}; }
	
	   {く} { set l {{か} {き} {く} {け} {こう} {いた} {いて}}; }
	   {ぐ} { set l {{が} {ぎ} {ぐ} {げ} {ごう} {いだ} {いで}}; }
	
	   {す} { set l {{さ} {し} {す} {せ} {そう} {した} {して}}; }
	   {ず} { set l {{ざ} {じ} {ず} {ぜ} {ぞう} {じだ} {じで}}; }
	
	   {ぬ} { set l {{な} {に} {ぬ} {ね} {のう} {んだ} {んで}}; }
	   {ふ} { set l {{は} {ひ} {ふ} {へ} {ほう} {んだ} {んで}}; }
	   {ぶ} { set l {{ば} {び} {ぶ} {べ} {ぼう} {んだ} {んで}}; }
	   {ぷ} { set l {{ぱ} {ぴ} {ぷ} {ぺ} {ぽう} {んだ} {んで}}; }
	   {む} { set l {{ま} {み} {む} {め} {もう} {んだ} {んで}}; }
	 
   }
   
   foreach [list a i u e o ta te] $l {};
   
   return [list $sBase$a $sBase$i $sBase$u $sBase$e $sBase$o $sBase$ta $sBase$te]
   
}

proc baseA {l} {
  return [lindex $l 0]
}

proc baseI {l} {
  return [lindex $l 1]
}

proc baseU {l} {
  return [lindex $l 2]
}

proc baseE {l} {
  return [lindex $l 3]
}

proc baseO {l} {
  return [lindex $l 4]
}

proc baseTa {l} {
  return [lindex $l 5]
}

proc baseTe {l} {
  return [lindex $l 6]
}

# for the vFunctions, pass in a list 
# returned by one of the conjugateDans

proc vNeg {v} {
   return "[baseA $v]ない"
}

proc vNegPast {v} {
   return "[baseA $v]なかった"
}

proc vNoun {v} {
   return "[baseI $v]"
}

proc vPresFutPol {v} {
   return "[baseI $v]ます"
}

proc vPastPol {v} {
   return "[baseI $v]ました"
}

proc vNegPol {v} {
   return "[baseI $v]ません"
}

proc vNegPastPol {v} {
   return "[baseI $v]ませんでした"
}

proc vDesireTo {v} {
   return "[baseI $v]たい"
}

proc vDesireToPol {v} {
   return "[baseI $v]たいです"
}

proc vPresFut {v} {
   return "[baseU $v]"
}

proc vIf {v} {
   return "[baseE $v]ば"
}

# verb is now ichidan
proc vCan {v} {
   return "[baseE $v]る"
}

proc vCanPol {v} {
   return "[baseE $v]ます"
}

proc vLets {v} {
   return "[baseO $v]"
}

proc vTryTo {v} {
   return "[baseO $v]とする"
}

proc vWantSomeoneElseTo {v} {
   return "[baseTe $v]欲しい"
}

proc vCommandRude {v} {
   return "[baseE $v]"
}

proc vCommand {v} {
   return "[baseTe $v]"
}

proc vCommandPol {v} {
   return "[baseTe $v]下さい"
}

# iru - to exist (animate)
proc vPresDoing {v} {
   return "[baseTe $v]いる"
}

# imasu
proc vPresDoingPol {v} {
   return "[baseTe $v]います"
}

proc vPast {v} {
   return "[baseTa $v]"
}

proc vIfAndWhen {v} {
   return "[baseTa $v]ら"
}

proc vDoSuchAs {v} {
   return "[baseTa $v]りする"
}

# sentence patterns
global lBasicConj
set lBasicConj {
  {did <v>}                     {vPast}
  {didn't <v>}                  {vNegPast}
  {won't <v>}                   {vNeg}
  {to <v>}                      {vPresFut}
  {will <v>}                    {vPresFut}
  {a <v>}                       {vNoun}
  {want to <v>}                 {vDesireTo}
  {<v> (you piece of shit)!}    {vCommandRude}
  {<v>!}                        {vCommand}
  {<v>ing}                      {vPresDoing}
  {if (i) <v>}                  {vIf}
  
  {did <v> (P)}         {vPastPol}
  {didn't <v> (P)}      {vNegPastPol}
  {won't <v> (P)}       {vNegPol}
  {to <v> (P)}          {vPresFutPol}
  {will <v> (P)}        {vPresFutPol}
  {want to <v> (P)}     {vDesireToPol}
  {<v> please}          {vCommandPol}
  {<v>ing (P)}          {vPresDoingPol}
  
  {if and when (i) <v>}         {vIfAndWhen}
  {do such things as <v>}       {vDoSuchAs}
  {try to <v>}                  {vTryTo}
  {want someone else to <v>}    {vWantSomeoneElseTo}
  {let's <v>}                   {vLets}
  
}; # end lBasicConj

proc tagV {fmt eng} {
   set x [string first "<v>" $fmt]
   return [string replace $fmt $x [expr $x + 2] $eng]
}

global lGodanLessons
proc buildGodanLesson {} {
   
    global lBasicConj
    global lGodan
    global aLessons
   
    foreach {fmt func} $lBasicConj {
   
        foreach {eng kanji kana} $lGodan {
   
            set question [tagV $fmt $eng]
            set kanji    [eval "$func \"[conjugateGodan $kanji]\""]
            set kana     [eval "$func \"[conjugateGodan $kana]\""]
            
            lappend lGodanLessons "$question" "$kanji" "$kana"
        
        }
    }
    
    set aLessons("godan") $lGodanLessons
}

buildGodanLesson




# ---------
# Test shit
# ---------

proc testShit {} {
    foreach {eng kanji kana} $lGodan {
      set a [conjugateGodan $kanji]
      foreach b $a {
        puts $b
      }
    }
    
    foreach {eng kanji kana} $lIchidan {
       set a [conjugateIchidan $kanji]
       foreach b $a {
          puts $b
       }
    }
}

#testShit

# ------------------
# Import the lessons
# ------------------
foreach {sLesson lLesson} $lLessons {
    set aLessons($sLesson) $lLesson
}

