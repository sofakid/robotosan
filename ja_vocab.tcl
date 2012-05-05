global aLessons;
global lVocabLessons;

# -------------------------------------------------------- 
# put vocab lessons here, in the format:
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
# -------------------------------------------------------- 
set lVocabLessons {

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

"v7" {
  
  {cut, slice}          {切る} {きる}
  {send}                {送る} {おくる}
  {give}                {あげる} {あげる}
  {receive}             {もらう} {もらう}
  {lend}                {貸す} {かす}
  {borrow}              {借りる} {かりる}
  {teach}               {教える} {おしえる}
  {learn}               {習う} {ならう}
  {make (a phone call)} {かける} {かける}
  
  {hand, arm}   {手} {て}
  {chopsticks}  {はし} {はし}
  {spoon}       {スプーン} {スプーン}
  {knife}       {ナイフ} {ナイフ}
  {fork}        {フォーク} {フォーク}
  {scissors}    {はさみ} {はさみ}
  
  {fax}                 {ファクス} {ファクス}
  {word processor}      {ワープロ} {ワープロ}
  {personal computer}   {パソコン} {パソコン}
  
  {hole punch}      {パンチ} {パンチ}
  {stapler}         {ホッチキス} {ホッチキス}
  {scotch tape}     {セロテープ} {セロテープ}
  {eraser}          {消しゴム} {けしゴム}
  {paper}           {紙} {かみ}
  
  {shirt}           {シャツ} {シャツ}
  {gift}            {プレゼント} {プレゼント}
  {baggage, parcel} {荷物} {にもつ}
  {money}           {お金} {おかね}
  {ticket}          {切符} {きっぷ}
  
  {Christmas}               {クリスマス} {クリスマス}
  {(my) father}             {父} {ちち}
  {(my) mother}             {母} {はは}
  {(someone else's) father} {お父さん} {おとうさん}
  {(someone else's) mother} {お母さん} {おかあさん}
  
  {already}         {もう} {もう}
  {not yet}         {まだ} {まだ}
  {from now on}     {これから} {これから}
  
  {trip, tour}        {旅行} {りょこう}
  {souvenir, present} {お土産} {おみあげ}

  {Europe} {ヨーロップ} {ヨーロップ}
  {Spain}  {スペイン} {スペイン}

  
}

"v8" {

  {handsome}                 {ハンサムな} {ハンサムな}
  {beautiful, clean}         {きれいな} {きれいな}
  {quiet}                    {静かな} {しずかな}
  {lively}                   {にぎやかな} {にぎやかな}
  {famous}                   {有名な} {ゆうめいな}
  {kind}                     {親切な} {しんせつな}
  {healthy, sound, cheerful} {元気な} {げんきな}
  {free (time)}              {暇な} {ひまな}
  {convenient}               {分離な} {ぶんりな}
  {fine, nice, wonderful}    {すてきな} {すてきな}

  {big, large}      {大きい} {おおきい}
  {small, little}   {小さい} {ちいさい}
  {new}             {新しい} {あたらしい}
  {old (not age)}   {古い} {ふるい}
  {good}            {いい} {よい}
  {bad}                             {悪い} {わるい}
  {hot (climate, objects)}          {{暑い} {熱い}} {あつい}
  {cold (weather)}                  {寒い} {さむい}
  {cold (touch)}                    {冷たい} {つめたい}
  {difficult}                       {難しい} {むずかしい}
  {easy}                            {易しい} {やさしい}
  {expensive, tall, high}           {高い} {たかい}
  {inexpensive}                     {安い} {やすい}
  {low (building height), short}    {低い} {ひくい}
  {interesting, funny (joke)}       {面白い} {おもしろい}
  {delicious}                       {おいしい} {おいしい}
  {busy}                            {忙しい} {いそがしい}
  {enjoyable}                       {楽しい} {たのしい}
  
  {white}   {白い} {しろい}
  {black}   {黒い} {くろい}
  {red}     {赤い} {あかい}
  {blue}    {青い} {あおい}
  
  {cherry blossom}  {桜} {さくら}
  {mountain}        {山} {やま}

  {town, city}   {町} {まち}
  {food}         {食べ物} {たべもの}
  {car, vehicle} {車} {くるま}
  {place}        {所} {ところ}
  
  {study (n)}                  {勉強} {べんきょう}
  {life (eg. university life)} {生活} {せいかつ}
  {work, business}             {お仕事} {おしごと}
  
  {how (for adj.)}                  {どう} {どう}
  {what kind of (for adj.)}         {どんな} {どんな}
  {which one (of three or more)}    {どれ} {どれ}
  
  {very　１}                    {とても} {とても}
  {very　２}                    {たいへん} {たいへん}
  {not so (with a neg)}     {あまり} {あまり}
  
  {(you're) wrong} {違います} {ちがいます}
  {(you're) right} {あています} {あています}
  
}

"v9" {

   {understand} {} {}
   {have (objects)} {} {}
   {have (people, animals)} {} {}
   
   {like} {} {}
   {dislike} {} {}
   {sports} {} {}
   {baseball} {} {}
   {dance} {} {}
   {music} {} {}
   {song,singing} {} {}
   {classical music} {} {}
   {jazz} {} {}
   {concert} {} {}
   {karaoke} {} {}
   {kabuki} {} {}
   {picture, drawing} {} {}
   
   {letter,character} {} {}
   {chinese characters} {} {}
   {roman alphabet} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}
   {} {} {}

}

"v7conv" {  
  {what a nice knife} {} {}
  {Excuse me. / Anybody home? / May I come in?} {} {}
  {Welcome.} {} {}
  {Do come in.} {} {}
  {Thank you / May I? (i'm afraid i may be disturbing you)} {} {}
  {Won't you have - ? / } {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}
  {} {} {}


}

"temporal" {
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
   {from -} {から} {から}
   {up to -} {まで} {まで}
  
}

}; # end set lLessons
#
# TODO 
#  - there's a bunch of veggies and fruits in lesson 6
#  - keto foods

#  {work, business} {} {} a suru verb
#
#  CHECK KANJI
#  - v6 gohan 
#  - v6 oya (hot water)
#  - v7 hashi (chopsticks)
#  - はさみ
#　　  {very}                    {とても} {たいへん}
#
#
#
#
#
#


proc buildVocabLessons {} {
   
    #puts "Building vocab lessons"
   
    global aLessons
    global lVocabLessons
 
    foreach {sLesson lLesson} $lVocabLessons {
        set aLessons($sLesson) $lLesson
    }

}

lappend lessonBuilders buildVocabLessons
