
def create_fact(number, question, answer)
  Fact.create(:ftype => Fact::WESTMINSTER_SHORTER, :question => question, :header => number, :text => answer) unless Fact.find_by_header(number)
end

create_fact("1", "What is the chief end of man?" , "Man's chief end is to glorify God, and to enjoy him forever.")
create_fact("2", "What rule has God given to direct us how we may glorify and enjoy him?" , "The word of God, which is contained in the scriptures of the Old and New Testaments, is the only rule to direct us how we may glorify and enjoy him.")
create_fact("3", "What do the scriptures principally teach?" , "The scriptures principally teach what man is to believe concerning God, and what duty God requires of man.")
create_fact("4", "What is God?" , "God is a spirit, infinite, eternal, and unchangeable, in his being, wisdom, power, holiness, justice, goodness and truth.")
create_fact("5", "Are there more Gods than one?" , "There is but one only, the living and true God.")
create_fact("6", "How many persons are there in the Godhead?" , "There are three persons in the Godhead; the Father, the Son, and the Holy Ghost; and these three are one God, the same in substance, equal in power and glory.")
create_fact("7", "What are the decrees of God?" , "The decrees of God are his eternal purpose, according to the counsel of his will, whereby, for his own glory, he hath foreordained whatsoever comes to pass.")
create_fact("8", "How does God execute his decrees?" , "God executes his decrees in the works of creation and providence.")
create_fact("9", "What is the work of creation?" , "The work of creation is God's making all things of nothing, by the word of his power, in the space of six days, and all very good.")
create_fact("10", "How did God create man?" , "God created man male and female, after his own image, in knowledge, righteousness and holiness, with dominion over the creatures.")
create_fact("11", "What are God's works of providence?" , "God's works of providence are his most holy, wise and powerful preserving and governing all his creatures, and all their actions.")
create_fact("12", "What special act of providence did God exercise toward man in the estate wherein he was created?" , "When God had created man, he entered into a covenant of life with him, upon condition of perfect obedience; forbidding him to eat of the tree of the knowledge of good and evil, upon the pain of death.")
create_fact("13", "Did our first parents continue in the estate wherein they were created?" , "Our first parents, being left to the freedom of their own will, fell from the estate wherein they were created, by sinning against God.")
create_fact("14", "What is sin?" , "Sin is any want of conformity unto, or transgression of, the law of God.")
create_fact("15", "What was the sin whereby our first parents fell from the estate wherein they were created?" , "The sin whereby our first parents fell from the estate wherein they were created was their eating the forbidden fruit.")
create_fact("16", "Did all mankind fall in Adam's first transgression?" , "The covenant being made with Adam, not only for himself, but for his posterity; all mankind, descending from him by ordinary generation, sinned in him, and fell with him, in his first transgression.")
create_fact("17", "Into what estate did the fall bring mankind?" , "The fall brought mankind into an estate of sin and misery.")
create_fact("18", "Wherein consists the sinfulness of that estate whereinto man fell?" , "The sinfulness of that estate whereinto man fell consists in the guilt of Adam's first sin, the want of original righteousness, and the corruption of his whole nature, which is commonly called original sin; together with all actual transgressions which proceed from it.")
create_fact("19", "What is the misery of that estate whereinto man fell?" , "All mankind by their fall lost communion with God, are under his wrath and curse, and so made liable to all miseries in this life, to death itself, and to the pains of hell forever.")
create_fact("20", "Did God leave all mankind to perish in the estate of sin and misery?" , "God having, out of his mere good pleasure, from all eternity, elected some to everlasting life, did enter into a covenant of grace, to deliver them out of the estate of sin and misery, and to bring them into an estate of salvation by a redeemer.")
create_fact("21", "Who is the redeemer of God's elect?" , "The only redeemer of God's elect is the Lord Jesus Christ, who, being the eternal Son of God, became man, and so was, and continues to be, God and man in two distinct natures, and one person, forever.")
create_fact("22", "How did Christ, being the Son of God, become man?" , "Christ, the Son of God, became man, by taking to himself a true body and a reasonable soul, being conceived by the power of the Holy Ghost in the womb of the virgin Mary, and born of her, yet without sin.")
create_fact("23", "What offices does Christ execute as our redeemer?" , "Christ, as our redeemer, executes the offices of a prophet, of a priest, and of a king, both in his estate of humiliation and exaltation.")
create_fact("24", "How does Christ execute the office of a prophet?" , "Christ executes the office of a prophet, in revealing to us, by his word and Spirit, the will of God for our salvation.")
create_fact("25", "How does Christ execute the office of a priest?" , "Christ executes the office of a priest, in his once offering up of himself a sacrifice to satisfy divine justice, and reconcile us to God; and in making continual intercession for us.")
create_fact("26", "How does Christ execute the office of a king?" , "Christ executes the office of a king, in subduing us to himself, in ruling and defending us, and in restraining and conquering all his and our enemies.")
create_fact("27", "Wherein did Christ's humiliation consist?" , "Christ's humiliation consisted in his being born, and that in a low condition, made under the law, undergoing the miseries of this life, the wrath of God, and the cursed death of the cross; in being buried, and continuing under the power of death for a time.")
create_fact("28", "Wherein consists Christ's exaltation?" , "Christ's exaltation consists in his rising again from the dead on the third day, in ascending up into heaven, in sitting at the right hand of God the Father, and in coming to judge the world at the last day.")
create_fact("29", "How are we made partakers of the redemption purchased by Christ?" , "We are made partakers of the redemption purchased by Christ, by the effectual application of it to us by his Holy Spirit.")
create_fact("30", "How does the Spirit apply to us the redemption purchased by Christ?" , "The Spirit applies to us the redemption purchased by Christ, by working faith in us, and thereby uniting us to Christ in our effectual calling.")
create_fact("31", "What is effectual calling?" , "Effectual calling is the work of God's Spirit, whereby, convincing us of our sin and misery, enlightening our minds in the knowledge of Christ, and renewing our wills, he does persuade and enable us to embrace Jesus Christ, freely offered to us in the gospel.")
create_fact("32", "What benefits do they that are effectually called partake of in this life?" , "They that are effectually called do in this life partake of justification, adoption and sanctification, and the several benefits which in this life do either accompany or flow from them.")
create_fact("33", "What is justification?" , "Justification is an act of God's free grace, wherein he pardons all our sins, and accepts us as righteous in his sight, only for the righteousness of Christ imputed to us, and received by faith alone.")
create_fact("34", "What is adoption?" , "Adoption is an act of God's free grace, whereby we are received into the number, and have a right to all the privileges of, the sons of God.")
create_fact("35", "What is sanctification?" , "Sanctification is the work of God's free grace, whereby we are renewed in the whole man after the image of God, and are enabled more and more to die unto sin, and live unto righteousness.")
create_fact("36", "What are the benefits which in this life do accompany or flow from justification, adoption and sanctification?" , "The benefits which in this life do accompany or flow from justification, adoption and sanctification, are, assurance of God's love, peace of conscience, joy in the Holy Ghost, increase of grace, and perseverance therein to the end.")
create_fact("37", "What benefits do believers receive from Christ at death?" , "The souls of believers are at their death made perfect in holiness, and do immediately pass into glory; and their bodies, being still united to Christ, do rest in their graves till the resurrection.")
create_fact("38", "What benefits do believers receive from Christ at the resurrection?" , "At the resurrection, believers being raised up in glory, shall be openly acknowledged and acquitted in the day of judgment, and made perfectly blessed in the full enjoying of God to all eternity.")
create_fact("39", "What is the duty which God requires of man?" , "The duty which God requires of man is obedience to his revealed will.")
create_fact("40", "What did God at first reveal to man for the rule of his obedience?" , "The rule which God at first revealed to man for his obedience was the moral law.")
create_fact("41", "Where is the moral law summarily comprehended?" , "The moral law is summarily comprehended in the ten commandments.")
create_fact("42", "What is the sum of the ten commandments?" , "The sum of the ten commandments is to love the Lord our God with all our heart, with all our soul, with all our strength, and with all our mind; and our neighbor as ourselves.")
create_fact("43", "What is the preface to the ten commandments?" , "The preface to the ten commandments is in these words, I am the Lord your God, who brought you out of the land of Egypt, out of the house of slavery.")
create_fact("44", "What does the preface to the ten commandments teach us?" , "The preface to the ten commandments teaches us that because God is the Lord, and our God, and redeemer, therefore we are bound to keep all his commandments.")
create_fact("45", "Which is the first commandment?" , "The first commandment is, You shall have no other gods before me.")
create_fact("46", "What is required in the first commandment?" , "The first commandment requires us to know and acknowledge God to be the only true God, and our God; and to worship and glorify him accordingly.")
create_fact("47", "What is forbidden in the first commandment?" , "The first commandment forbids the denying, or not worshiping and glorifying the true God as God, and our God; and the giving of that worship and glory to any other, which is due to him alone.")
create_fact("48", "What are we specially taught by these words before me</I> in the first commandment?" , "These words before me in the first commandment teach us that God, who sees all things, takes notice of, and is much displeased with, the sin of having any other god.")
create_fact("49", "Which is the second commandment?" , "The second commandment is, You shall not make for yourself a carved image, or any likeness of anything that is in heaven above, or that is in the earth beneath, or that is in the water under the earth. You shall not bow down to them or serve them, for I the Lord your God am a jealous God, visiting the iniquity of the fathers on the children to the third and the fourth generation of those who hate me,&nbsp;but showing steadfast love to thousands&nbsp;of those who love me and keep my commandments.")
create_fact("50", "What is required in the second commandment?" , "The second commandment requires the receiving, observing, and keeping pure and entire, all such religious worship and ordinances as God hath appointed in his word.")
create_fact("51", "What is forbidden in the second commandment?" , "The second commandment forbids the worshiping of God by images, or any other way not appointed in his word.")
create_fact("52", "What are the reasons annexed to the second commandment?" , "The reasons annexed to the second commandment are, God's sovereignty over us, his propriety in us, and the zeal he hath to his own worship.")
create_fact("53", "Which is the third commandment?" , "The third commandment is, You shall not take the name of the Lord your God in vain, for the Lord will not hold him guiltless who takes his name in vain.")
create_fact("54", "What is required in the third commandment?" , "The third commandment requires the holy and reverent use of God's names, titles, attributes, ordinances, word and works.")
create_fact("55", "What is forbidden in the third commandment?" , "The third commandment forbids all profaning or abusing of anything whereby God makes himself known.")
create_fact("56", "What is the reason annexed to the third commandment?" , "The reason annexed to the third commandment is that however the breakers of this commandment may escape punishment from men, yet the Lord our God will not suffer them to escape his righteous judgment.")
create_fact("57", "Which is the fourth commandment?" , "The fourth commandment is, Remember the Sabbath day, to keep it holy. Six days you shall labor, and do all your work,&nbsp;but the seventh day is a Sabbath to the Lord your God. On it you shall not do any work, you, or your son, or your daughter, your male servant, or your female servant, or your livestock, or the sojourner who is within your gates.&nbsp;For in six days the Lord made heaven and earth, the sea, and all that is in them, and rested the seventh day. Therefore the Lord blessed the Sabbath day and made it holy.")
create_fact("58", "What is required in the fourth commandment?" , "The fourth commandment requires the keeping holy to God such set times as he hath appointed in his word; expressly one whole day in seven, to be a holy Sabbath to himself.")
create_fact("59", "Which day of the seven hath God appointed to be the weekly Sabbath?" , "From the beginning of the world to the resurrection of Christ, God appointed the seventh day of the week to be the weekly Sabbath; and the first day of the week ever since, to continue to the end of the world, which is the Christian Sabbath.")
create_fact("60", "How is the Sabbath to be sanctified?" , "The Sabbath is to be sanctified by a holy resting all that day, even from such worldly employments and recreations as are lawful on other days; and spending the whole time in the public and private exercises of God's worship, except so much as is to be taken up in the works of necessity and mercy.")
create_fact("61", "What is forbidden in the fourth commandment?" , "The fourth commandment forbids the omission or careless performance of the duties required, and the profaning the day by idleness, or doing that which is in itself sinful, or by unnecessary thoughts, words or works, about our worldly employments or recreations.")
create_fact("62", "What are the reasons annexed to the fourth commandment?", "The reasons annexed to the fourth commandment are, God's allowing us six days of the week for our own employments, his challenging a special propriety in the seventh, his own example, and his blessing the Sabbath day.")
create_fact("63", "Which is the fifth commandment?", "The fifth commandment is, Honor your father and your mother, that your days may be long in the land that the Lord your God is giving you.")
create_fact("64", "What is required in the fifth commandment?", "The fifth commandment requires the preserving the honor, and performing the duties, belonging to every one in their several places and relations, as superiors, inferiors or equals.")
create_fact("65", "What is forbidden in the fifth commandment?", "The fifth commandment forbids the neglecting of, or doing anything against, the honor and duty which belongs to every one in their several places and relations.")
create_fact("66", "What is the reason annexed to the fifth commandment?", "The reason annexed to the fifth commandment is a promise of long life and prosperity (as far as it shall serve for God's glory and their own good) to all such as keep this commandment.")
create_fact("67", "Which is the sixth commandment?", "The sixth commandment is, You shall not murder.")
create_fact("68", "What is required in the sixth commandment?", "The sixth commandment requires all lawful endeavors to preserve our own life, and the life of others.")
create_fact("69", "What is forbidden in the sixth commandment?", "The sixth commandment forbids the taking away of our own life, or the life of our neighbor unjustly, or whatsoever tends thereunto.")
create_fact("70", "Which is the seventh commandment?", "The seventh commandment is, You shall not commit adultery.")
create_fact("71", "What is required in the seventh commandment?", "The seventh commandment requires the preservation of our own and our neighbor's chastity, in heart, speech and behavior.")
create_fact("72", "What is forbidden in the seventh commandment?", "The seventh commandment forbids all unchaste thoughts, words and actions.")
create_fact("73", "Which is the eighth commandment?", "The eighth commandment is, You shall not steal.")
create_fact("74", "What is required in the eighth commandment?", "The eighth commandment requires the lawful procuring and furthering the wealth and outward estate of ourselves and others.")
create_fact("75", "What is forbidden in the eighth commandment?", "The eighth commandment forbids whatsoever does or may unjustly hinder our own or our neighbor's wealth or outward estate.")
create_fact("76", "Which is the ninth commandment?", "The ninth commandment is, You shall not bear false witness against your neighbor.")
create_fact("77", "What is required in the ninth commandment?", "The ninth commandment requires the maintaining and promoting of truth between man and man, and of our own and our neighbor's good name, especially in witness-bearing.")
create_fact("78", "What is forbidden in the ninth commandment?", "The ninth commandment forbids whatsoever is prejudicial to truth, or injurious to our own or our neighbor's good name.")
create_fact("79", "Which is the tenth commandment?", "The tenth commandment is, You shall not covet your neighbor's house; you shall not covet your neighbor's wife, or his male servant, or his female servant, or his ox, or his donkey, or anything that is your neighbor's.")
create_fact("80", "What is required in the tenth commandment?", "The tenth commandment requires full contentment with our own condition, with a right and charitable frame of spirit toward our neighbor, and all that is his.")
create_fact("81", "What is forbidden in the tenth commandment?", "The tenth commandment forbids all discontentment with our own estate, envying or grieving at the good of our neighbor, and all inordinate motions and affections to anything that is his.")
create_fact("82", "Is any man able perfectly to keep the commandments of God?", "No mere man since the fall is able in this life perfectly to keep the commandments of God, but does daily break them in thought, word and deed.")
create_fact("83", "Are all transgressions of the law equally heinous?", "Some sins in themselves, and by reason of several aggravations, are more heinous in the sight of God than others.")
create_fact("84", "What does every sin deserve?", "Every sin deserves God's wrath and curse, both in this life, and that which is to come.")
create_fact("85", "What does God require of us that we may escape his wrath and curse due to us for sin?", "To escape the wrath and curse of God due to us for sin, God requires of us faith in Jesus Christ, repentance unto life, with the diligent use of all the outward means whereby Christ communicates to us the benefits of redemption.")
create_fact("86", "What is faith in Jesus Christ?", "Faith in Jesus Christ is a saving grace, whereby we receive and rest upon him alone for salvation, as he is offered to us in the gospel.")
create_fact("87", "What is repentance unto life?", "Repentance unto life is a saving grace, whereby a sinner, out of a true sense of his sin, and apprehension of the mercy of God in Christ, does, with grief and hatred of his sin, turn from it unto God, with full purpose of, and endeavor after, new obedience.")
create_fact("88", "What are the outward means whereby Christ communicates to us the benefits of redemption?", "The outward and ordinary means whereby Christ communicates to us the benefits of redemption, are his ordinances, especially the word, ordinances, and prayer; all which are made effectual to the elect for salvation.")
create_fact("89", "How is the word made effectual to salvation?", "The Spirit of God makes the reading, but especially the preaching, of the word, an effectual means of convincing and converting sinners, and of building them up in holiness and comfort, through faith, unto salvation.")
create_fact("90", "How is the word to be read and heard, that it may become effectual to salvation?", "That the word may become effectual to salvation, we must attend thereunto with diligence, preparation and prayer; receive it with faith and love, lay it up in our hearts, and practice it in our lives.")
create_fact("91", "How do the ordinances become effectual means of salvation?", "The ordinances become effectual means of salvation, not from any virtue in them, or in him that does administer them; but only by the blessing of Christ, and the working of his Spirit in them that by faith receive them.")
create_fact("92", "What is an ordinance?", "An ordinance is a symbolic observance instituted by Christ; wherein, by sensible signs, Christ, and the benefits of the new covenant, are represented, sealed, and applied to believers.")
create_fact("93", "Which are the ordinances of the New Testament?", "The ordinances of the New Testament are baptism and the Lord's supper.")
create_fact("94", "What is Baptism?" , "Baptism is an ordinance of the New Testament, instituted by Jesus Christ to be to the person baptized a sign of his fellowship with him, in his death, and burial, and resurrection, of his being engrafted into him, of remission of sins, and of his giving up himself to God through Jesus Christ, to live and walk in newness of life.")
create_fact("95", "To whom is baptism to be administered?", "Baptism is to be administered to all those who actually profess repentance towards God and faith in our Lord Jesus Christ, and to none other.")
create_fact("96", "What is the Lord's supper?", "The Lord's supper is an ordinance of the New Testament, wherein, by giving and receiving bread and wine according to Christ's appointment, his death is showed forth; and the worthy receivers are, not after a corporal and carnal manner, but by faith, made partakers of his body and blood, with all his benefits, to their spiritual nourishment and growth in grace.")
create_fact("97", "What is required to the worthy receiving of the Lord's supper?", "It is required of them that would worthily partake of the Lord's supper, that they examine themselves of their knowledge to discern the Lord's body, of their faith to feed upon him, of their repentance, love, and new obedience; lest, coming unworthily, they eat and drink judgment to themselves.")
create_fact("98", "What is prayer?", "Prayer is an offering up of our desires unto God, for things agreeable to his will, in the name of Christ, with confession of our sins, and thankful acknowledgment of his mercies.")
create_fact("99", "What rule hath God given for our direction in prayer?", "The whole word of God is of use to direct us in prayer; but the special rule of direction is that form of prayer which Christ taught his disciples, commonly called the Lord's prayer.")
create_fact("100", "What does the preface of the Lord's prayer teach us?", "The preface of the Lord's prayer, which is, Our Father in heaven, teaches us to draw near to God with all holy reverence and confidence, as children to a father able and ready to help us; and that we should pray with and for others.")
create_fact("101", "What do we pray for in the first petition?", "In the first petition, which is, Hallowed be your name, we pray that God would enable us and others to glorify him in all that whereby he makes himself known; and that he would dispose all things to his own glory.")
create_fact("102", "What do we pray for in the second petition?", "In the second petition, which is, Your kingdom come, we pray that Satan's kingdom may be destroyed; and that the kingdom of grace may be advanced, ourselves and others brought into it, and kept in it; and that the kingdom of glory may be hastened.")
create_fact("103", "What do we pray for in the third petition?", "In the third petition, which is, Your will be done in earth, as it is in heaven, we pray that God, by his grace, would make us able and willing to know, obey and submit to his will in all things, as the angels do in heaven.")
create_fact("104", "What do we pray for in the fourth petition?", "In the fourth petition, which is, Give us this day our daily bread, we pray that of God's free gift we may receive a competent portion of the good things of this life, and enjoy his blessing with them.")
create_fact("105", "What do we pray for in the fifth petition?", "In the fifth petition, which is, And forgive us our debts, as we also have forgiven our debtors, we pray that God, for Christ's sake, would freely pardon all our sins; which we are the rather encouraged to ask, because by his grace we are enabled from the heart to forgive others.")
create_fact("106", "What do we pray for in the sixth petition?", "In the sixth petition, which is, And lead us not into temptation, but deliver us from evil, we pray that God would either keep us from being tempted to sin, or support and deliver us when we are tempted.")

def create_book(num, name, chapter_count, verse_count, word_count, chapter_hash)
  unless BibleBook.find_by_num(num)
    bk = BibleBook.create(:num => num, :name => name, :chapter_count => chapter_count, :verse_count => verse_count, :word_count => word_count)
    chapter_hash.keys.sort.each do |key|
      bk.bible_chapters.build(:chapter_num => key, :verse_count => chapter_hash[key])
    end
    bk.save!
  end
end

create_book(1, 'Genesis', 50, 1533, 38262, {49 => 33,38 => 30,27 => 46,16 => 16,5 => 32,44 => 34,33 => 20,22 => 24,11 => 32,50 => 26,39 => 23,28 => 22,17 => 27,6 => 22,45 => 28,34 => 31,23 => 20,12 => 20,1 => 31,40 => 23,29 => 35,18 => 33,7 => 24,46 => 34,35 => 29,24 => 67,13 => 18,2 => 25,41 => 57,30 => 43,19 => 38,8 => 22,47 => 31,36 => 43,25 => 34,14 => 24,3 => 24,42 => 38,31 => 55,20 => 18,9 => 29,48 => 22,37 => 36,26 => 35,15 => 21,4 => 26,43 => 34,32 => 32,21 => 34,10 => 32})
create_book(2, 'Exodus', 40, 1213, 32685, {38 => 31,27 => 21,16 => 36,5 => 23,33 => 23,22 => 31,11 => 10,39 => 43,28 => 43,17 => 16,6 => 30,34 => 35,23 => 33,12 => 51,1 => 22,40 => 38,29 => 46,18 => 27,7 => 25,35 => 35,24 => 18,13 => 22,2 => 25,30 => 38,19 => 25,8 => 32,36 => 38,25 => 40,14 => 31,3 => 22,31 => 18,20 => 26,9 => 35,37 => 29,26 => 37,15 => 27,4 => 31,32 => 35,21 => 36,10 => 29})
create_book(3, 'Leviticus', 27, 859, 24541, {27 => 34,16 => 34,5 => 19,22 => 33,11 => 47,17 => 16,6 => 30,23 => 44,12 => 8,1 => 17,18 => 30,7 => 38,24 => 23,13 => 59,2 => 16,19 => 37,8 => 36,25 => 55,14 => 57,3 => 17,20 => 27,9 => 24,26 => 46,15 => 33,4 => 35,21 => 24,10 => 20})
create_book(4, 'Numbers', 36, 1288, 32896, {27 => 23,16 => 50,5 => 31,33 => 56,22 => 41,11 => 35,28 => 31,17 => 13,6 => 27,34 => 29,23 => 30,12 => 16,1 => 54,29 => 40,18 => 32,7 => 89,35 => 34,24 => 25,13 => 33,2 => 34,30 => 16,19 => 22,8 => 26,36 => 13,25 => 18,14 => 45,3 => 51,31 => 54,20 => 29,9 => 23,26 => 65,15 => 41,4 => 49,32 => 42,21 => 35,10 => 36})
create_book(5, 'Deuteronomy', 34, 959, 28352, {27 => 26,16 => 22,5 => 33,33 => 29,22 => 30,11 => 32,28 => 68,17 => 20,6 => 25,34 => 12,23 => 25,12 => 32,1 => 46,29 => 29,18 => 22,7 => 26,24 => 22,13 => 18,2 => 37,30 => 20,19 => 21,8 => 20,25 => 19,14 => 29,3 => 29,31 => 30,20 => 20,9 => 29,26 => 19,15 => 23,4 => 49,32 => 52,21 => 23,10 => 22})
create_book(6, 'Joshua', 24, 658, 18854, {16 => 10,5 => 15,22 => 34,11 => 23,17 => 18,6 => 27,23 => 16,12 => 24,1 => 18,18 => 28,7 => 26,24 => 33,13 => 33,2 => 24,19 => 51,8 => 35,14 => 15,3 => 17,20 => 9,9 => 27,15 => 63,4 => 24,21 => 45,10 => 43})
create_book(7, 'Judges', 21, 618, 18966, {16 => 31,5 => 31,11 => 40,17 => 13,6 => 40,12 => 15,1 => 36,18 => 31,7 => 25,13 => 25,2 => 23,19 => 30,8 => 35,14 => 20,3 => 31,20 => 48,9 => 57,15 => 20,4 => 24,21 => 25,10 => 18})
create_book(8, 'Ruth', 4, 85, 2574, {1 => 22,2 => 23,3 => 18,4 => 22})
create_book(9, '1 Samuel', 31, 810, 25048, {27 => 12,16 => 23,5 => 12,22 => 23,11 => 15,28 => 25,17 => 58,6 => 21,23 => 29,12 => 25,1 => 28,29 => 11,18 => 30,7 => 17,24 => 22,13 => 23,2 => 36,30 => 31,19 => 24,8 => 22,25 => 44,14 => 52,3 => 21,31 => 13,20 => 42,9 => 27,26 => 25,15 => 35,4 => 22,21 => 15,10 => 27})
create_book(10, '2 Samuel', 24, 695, 20600, {16 => 23,5 => 25,22 => 51,11 => 27,17 => 29,6 => 23,23 => 39,12 => 31,1 => 27,18 => 33,7 => 29,24 => 25,13 => 39,2 => 32,19 => 43,8 => 18,14 => 33,3 => 39,20 => 26,9 => 13,15 => 37,4 => 12,21 => 22,10 => 19})
create_book(11, '1 Kings', 22, 816, 24513, {16 => 34,5 => 18,22 => 53,11 => 43,17 => 24,6 => 38,12 => 33,1 => 53,18 => 46,7 => 51,13 => 34,2 => 46,19 => 21,8 => 66,14 => 31,3 => 28,20 => 43,9 => 28,15 => 34,4 => 34,21 => 29,10 => 29})
create_book(12, '2 Kings', 25, 719, 23517, {16 => 20,5 => 27,22 => 20,11 => 21,17 => 41,6 => 33,23 => 37,12 => 21,1 => 18,18 => 37,7 => 20,24 => 20,13 => 25,2 => 25,19 => 37,8 => 29,25 => 30,14 => 29,3 => 27,20 => 21,9 => 37,15 => 38,4 => 44,21 => 26,10 => 36})
create_book(13, '1 Chronicles', 29, 942, 20365, {27 => 34,16 => 43,5 => 26,22 => 19,11 => 47,28 => 21,17 => 27,6 => 81,23 => 32,12 => 40,1 => 54,29 => 30,18 => 17,7 => 40,24 => 31,13 => 14,2 => 55,19 => 19,8 => 40,25 => 31,14 => 17,3 => 24,20 => 8,9 => 44,26 => 32,15 => 29,4 => 43,21 => 30,10 => 14})
create_book(14, '2 Chronicles', 36, 822, 26069, {27 => 9,16 => 14,5 => 14,33 => 25,22 => 12,11 => 23,28 => 27,17 => 19,6 => 42,34 => 33,23 => 21,12 => 16,1 => 17,29 => 36,18 => 34,7 => 22,35 => 27,24 => 27,13 => 22,2 => 18,30 => 27,19 => 11,8 => 18,36 => 23,25 => 28,14 => 15,3 => 17,31 => 21,20 => 37,9 => 31,26 => 23,15 => 19,4 => 22,32 => 33,21 => 20,10 => 19})
create_book(15, 'Ezra', 10, 280, 7440, {5 => 17,6 => 22,1 => 11,7 => 28,2 => 70,8 => 36,3 => 13,9 => 15,4 => 24,10 => 44})
create_book(16, 'Nehemiah', 13, 406, 10480, {5 => 19,11 => 36,6 => 19,12 => 47,1 => 11,7 => 73,13 => 31,2 => 20,8 => 18,3 => 32,9 => 38,4 => 23,10 => 39})
create_book(17, 'Esther', 10, 167, 5633, {5 => 14,6 => 14,1 => 22,7 => 10,2 => 23,8 => 17,3 => 15,9 => 32,4 => 17,10 => 3})
create_book(18, 'Job', 42, 1070, 18098, {38 => 41,27 => 23,16 => 22,5 => 27,33 => 33,22 => 30,11 => 20,39 => 30,28 => 28,17 => 16,6 => 30,34 => 37,23 => 17,12 => 25,1 => 22,40 => 24,29 => 25,18 => 21,7 => 21,35 => 16,24 => 25,13 => 28,2 => 13,41 => 34,30 => 31,19 => 29,8 => 22,36 => 33,25 => 6,14 => 22,3 => 26,42 => 17,31 => 40,20 => 29,9 => 35,37 => 24,26 => 14,15 => 35,4 => 21,32 => 22,21 => 34,10 => 22})
create_book(19, 'Psalms', 150, 2461, 42704, {129 => 8,18 => 50,55 => 23,92 => 15,148 => 14,37 => 40,74 => 23,111 => 10,130 => 8,56 => 13,93 => 5,19 => 14,149 => 9,75 => 10,112 => 10,1 => 6,38 => 22,131 => 3,94 => 23,20 => 9,57 => 11,150 => 6,113 => 9,2 => 12,39 => 13,76 => 12,132 => 18,21 => 13,58 => 11,95 => 11,3 => 8,40 => 17,77 => 20,114 => 8,133 => 3,22 => 31,59 => 17,96 => 13,115 => 18,4 => 8,41 => 13,78 => 72,134 => 3,23 => 6,60 => 12,97 => 12,116 => 19,5 => 12,42 => 11,79 => 13,135 => 21,24 => 10,61 => 8,98 => 9,117 => 2,6 => 10,43 => 5,80 => 19,136 => 26,25 => 22,62 => 12,99 => 9,118 => 29,7 => 17,44 => 26,81 => 16,137 => 9,26 => 12,63 => 11,100 => 5,119 => 176,8 => 9,45 => 17,82 => 8,138 => 8,27 => 14,64 => 10,101 => 8,120 => 7,46 => 11,83 => 18,9 => 20,139 => 24,65 => 13,102 => 28,28 => 9,121 => 8,84 => 12,10 => 18,47 => 9,140 => 13,103 => 22,29 => 11,66 => 20,122 => 9,11 => 7,48 => 14,85 => 13,141 => 10,30 => 12,67 => 7,104 => 35,123 => 4,12 => 8,49 => 20,86 => 17,142 => 7,31 => 24,68 => 35,105 => 45,124 => 8,13 => 6,50 => 23,87 => 7,143 => 12,32 => 11,69 => 36,106 => 48,125 => 5,14 => 7,51 => 19,88 => 18,144 => 15,33 => 22,70 => 5,107 => 43,126 => 6,15 => 5,52 => 9,89 => 52,145 => 21,34 => 22,71 => 24,108 => 13,127 => 5,16 => 11,53 => 6,90 => 17,146 => 10,35 => 28,72 => 20,109 => 31,128 => 6,17 => 15,54 => 7,91 => 16,147 => 20,36 => 12,73 => 28,110 => 7})
create_book(20, 'Proverbs', 31, 915, 15038, {27 => 27,16 => 33,5 => 23,22 => 29,11 => 31,28 => 28,17 => 28,6 => 35,23 => 35,12 => 28,1 => 33,29 => 27,18 => 24,7 => 27,24 => 34,13 => 25,2 => 22,30 => 33,19 => 29,8 => 36,25 => 28,14 => 35,3 => 35,31 => 31,20 => 30,9 => 18,26 => 28,15 => 33,4 => 27,21 => 31,10 => 32})
create_book(21, 'Ecclesiastes', 12, 222, 5579, {5 => 20,11 => 10,6 => 12,12 => 14,1 => 18,7 => 29,2 => 26,8 => 17,3 => 22,9 => 18,4 => 16,10 => 20})
create_book(22, 'Song of Solomon', 8, 117, 2658, {5 => 16,6 => 13,1 => 17,7 => 13,2 => 17,8 => 14,3 => 11,4 => 16})
create_book(23, 'Isaiah', 66, 1292, 37036, {60 => 22,49 => 26,38 => 22,27 => 13,16 => 14,5 => 30,66 => 24,55 => 13,44 => 28,33 => 24,22 => 25,11 => 16,61 => 11,50 => 11,39 => 8,28 => 29,17 => 14,6 => 13,56 => 12,45 => 25,34 => 17,23 => 18,12 => 6,1 => 31,62 => 12,51 => 23,40 => 31,29 => 24,18 => 7,7 => 25,57 => 21,46 => 13,35 => 10,24 => 23,13 => 22,2 => 22,63 => 19,52 => 15,41 => 29,30 => 33,19 => 25,8 => 22,58 => 14,47 => 15,36 => 22,25 => 12,14 => 32,3 => 26,64 => 12,53 => 12,42 => 25,31 => 9,20 => 6,9 => 21,59 => 21,48 => 22,37 => 38,26 => 21,15 => 9,4 => 6,65 => 25,54 => 17,43 => 28,32 => 20,21 => 17,10 => 34})
create_book(24, 'Jeremiah', 52, 1364, 42654, {49 => 39,38 => 28,27 => 22,16 => 21,5 => 31,44 => 30,33 => 26,22 => 30,11 => 23,50 => 46,39 => 18,28 => 17,17 => 27,6 => 30,45 => 5,34 => 22,23 => 40,12 => 17,1 => 19,51 => 64,40 => 16,29 => 32,18 => 23,7 => 34,46 => 28,35 => 19,24 => 10,13 => 27,2 => 37,52 => 34,41 => 18,30 => 24,19 => 15,8 => 22,47 => 7,36 => 32,25 => 38,14 => 22,3 => 25,42 => 22,31 => 40,20 => 18,9 => 26,48 => 47,37 => 21,26 => 24,15 => 21,4 => 31,43 => 13,32 => 44,21 => 14,10 => 25})
create_book(25, 'Lamentations', 5, 154, 3411, {5 => 22,1 => 22,2 => 22,3 => 66,4 => 22})
create_book(26, 'Ezekiel', 48, 1273, 39401, {38 => 23,27 => 36,16 => 63,5 => 17,44 => 31,33 => 33,22 => 31,11 => 25,39 => 29,28 => 26,17 => 24,6 => 14,45 => 25,34 => 31,23 => 49,12 => 28,1 => 28,40 => 49,29 => 21,18 => 32,7 => 27,46 => 24,35 => 15,24 => 27,13 => 23,2 => 10,41 => 26,30 => 26,19 => 14,8 => 18,47 => 23,36 => 38,25 => 17,14 => 23,3 => 27,42 => 20,31 => 18,20 => 49,9 => 11,48 => 35,37 => 28,26 => 21,15 => 8,4 => 17,43 => 27,32 => 32,21 => 32,10 => 22})
create_book(27, 'Daniel', 12, 357, 11602, {5 => 31,11 => 45,6 => 28,12 => 13,1 => 21,7 => 28,2 => 49,8 => 27,3 => 30,9 => 27,4 => 37,10 => 21})
create_book(28, 'Hosea', 14, 197, 5174, {5 => 15,11 => 12,6 => 11,12 => 14,1 => 11,7 => 16,13 => 16,2 => 23,8 => 14,14 => 9,3 => 5,9 => 17,4 => 19,10 => 15})
create_book(29, 'Joel', 3, 73, 2033, {1 => 20,2 => 32,3 => 21})
create_book(30, 'Amos', 9, 146, 4216, {5 => 27,6 => 14,1 => 15,7 => 17,2 => 16,8 => 14,3 => 15,9 => 15,4 => 13})
create_book(31, 'Obadiah', 1, 21, 669, {1 => 21})
create_book(32, 'Jonah', 4, 48, 1320, {1 => 17,2 => 10,3 => 10,4 => 11})
create_book(33, 'Micah', 7, 105, 3152, {5 => 15,6 => 16,1 => 16,7 => 20,2 => 13,3 => 12,4 => 13})
create_book(34, 'Nahum', 3, 47, 1284, {1 => 15,2 => 13,3 => 19})
create_book(35, 'Habakkuk', 3, 56, 1475, {1 => 17,2 => 20,3 => 19})
create_book(36, 'Zephaniah', 3, 53, 1616, {1 => 18,2 => 15,3 => 20})
create_book(37, 'Haggai', 2, 38, 1130, {1 => 15,2 => 23})
create_book(38, 'Zechariah', 14, 211, 6443, {5 => 11,11 => 17,6 => 15,12 => 14,1 => 21,7 => 14,13 => 9,2 => 13,8 => 23,14 => 21,3 => 10,9 => 17,4 => 14,10 => 12})
create_book(39, 'Malachi', 4, 55, 1781, {1 => 14,2 => 17,3 => 18,4 => 6})
create_book(40, 'Matthew', 28, 1071, 23343, {27 => 66,16 => 28,5 => 48,22 => 46,11 => 30,28 => 20,17 => 27,6 => 34,23 => 39,12 => 50,1 => 25,18 => 35,7 => 29,24 => 51,13 => 58,2 => 23,19 => 30,8 => 34,25 => 46,14 => 36,3 => 17,20 => 34,9 => 38,26 => 75,15 => 39,4 => 25,21 => 46,10 => 42})
create_book(41, 'Mark', 16, 678, 14949, {16 => 20,5 => 43,11 => 33,6 => 56,12 => 44,1 => 45,7 => 37,13 => 37,2 => 28,8 => 38,14 => 72,3 => 35,9 => 50,15 => 47,4 => 41,10 => 52})
create_book(42, 'Luke', 24, 1151, 25640, {16 => 31,5 => 39,22 => 71,11 => 54,17 => 37,6 => 49,23 => 56,12 => 59,1 => 80,18 => 43,7 => 50,24 => 53,13 => 35,2 => 52,19 => 48,8 => 56,14 => 35,3 => 38,20 => 47,9 => 62,15 => 32,4 => 44,21 => 38,10 => 42})
create_book(43, 'John', 21, 879, 18658, {16 => 33,5 => 47,11 => 57,17 => 26,6 => 71,12 => 50,1 => 51,18 => 40,7 => 53,13 => 38,2 => 25,19 => 42,8 => 59,14 => 31,3 => 36,20 => 31,9 => 41,15 => 27,4 => 54,21 => 25,10 => 42})
create_book(44, 'Acts', 28, 1007, 24229, {27 => 44,16 => 40,5 => 42,22 => 30,11 => 30,28 => 31,17 => 34,6 => 15,23 => 35,12 => 25,1 => 26,18 => 28,7 => 60,24 => 27,13 => 52,2 => 47,19 => 41,8 => 40,25 => 27,14 => 28,3 => 26,20 => 38,9 => 43,26 => 32,15 => 41,4 => 37,21 => 40,10 => 48})
create_book(45, 'Romans', 16, 433, 9422, {16 => 27,5 => 21,11 => 36,6 => 23,12 => 21,1 => 32,7 => 25,13 => 14,2 => 29,8 => 39,14 => 23,3 => 31,9 => 33,15 => 33,4 => 25,10 => 21})
create_book(46, '1 Corinthians', 16, 437, 9462, {16 => 24,5 => 13,11 => 34,6 => 20,12 => 31,1 => 31,7 => 40,13 => 13,2 => 16,8 => 13,14 => 40,3 => 23,9 => 27,15 => 58,4 => 21,10 => 33})
create_book(47, '2 Corinthians', 13, 257, 6046, {5 => 21,11 => 33,6 => 18,12 => 21,1 => 24,7 => 16,13 => 14,2 => 17,8 => 24,3 => 18,9 => 15,4 => 18,10 => 18})
create_book(48, 'Galatians', 6, 149, 3084, {5 => 26,6 => 18,1 => 24,2 => 21,3 => 29,4 => 31})
create_book(49, 'Ephesians', 6, 155, 3022, {5 => 33,6 => 24,1 => 23,2 => 22,3 => 21,4 => 32})
create_book(50, 'Philippians', 4, 104, 2183, {1 => 30,2 => 30,3 => 21,4 => 23})
create_book(51, 'Colossians', 4, 95, 1979, {1 => 29,2 => 23,3 => 25,4 => 18})
create_book(52, '1 Thessalonians', 5, 89, 1837, {5 => 28,1 => 10,2 => 20,3 => 13,4 => 18})
create_book(53, '2 Thessalonians', 3, 47, 1022, {1 => 12,2 => 17,3 => 18})
create_book(54, '1 Timothy', 6, 113, 2244, {5 => 25,6 => 21,1 => 20,2 => 15,3 => 16,4 => 16})
create_book(55, '2 Timothy', 4, 83, 1666, {1 => 18,2 => 26,3 => 17,4 => 22})
create_book(56, 'Titus', 3, 46, 896, {1 => 16,2 => 15,3 => 15})
create_book(57, 'Philemon', 1, 25, 430, {1 => 25})
create_book(58, 'Hebrews', 13, 303, 6897, {5 => 14,11 => 40,6 => 20,12 => 29,1 => 14,7 => 28,13 => 25,2 => 18,8 => 13,3 => 19,9 => 28,4 => 16,10 => 39})
create_book(59, 'James', 5, 108, 2304, {5 => 20,1 => 27,2 => 26,3 => 18,4 => 17})
create_book(60, '1 Peter', 5, 105, 2476, {5 => 14,1 => 25,2 => 25,3 => 22,4 => 19})
create_book(61, '2 Peter', 3, 61, 1553, {1 => 21,2 => 22,3 => 18})
create_book(62, '1 John', 5, 105, 2517, {5 => 21,1 => 10,2 => 29,3 => 24,4 => 21})
create_book(63, '2 John', 1, 13, 298, {1 => 13})
create_book(64, '3 John', 1, 15, 294, {1 => 15})
create_book(65, 'Jude', 1, 25, 608, {1 => 25})
create_book(66, 'Revelation', 22, 404, 11952, {16 => 21,5 => 14,22 => 21,11 => 19,17 => 18,6 => 17,12 => 17,1 => 20,18 => 24,7 => 17,13 => 18,2 => 29,19 => 21,8 => 13,14 => 20,3 => 22,20 => 15,9 => 21,15 => 8,4 => 11,21 => 27,10 => 11})
