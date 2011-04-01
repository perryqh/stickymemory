Factory.define :plan do |plan|
  plan.days_duration { 30 }
  plan.start_bible_book { |bb| bb.association :bible_book}
  plan.end_bible_book { |bb| bb.association :bible_book}
end

Factory.sequence :num do |n|
  300 + n
end

Factory.define :bible_book do |bb|
  bb.num { Factory.next(:num) }
  bb.name { "Genesis" }
  bb.chapter_count { 1 }
  bb.verse_count { 1 }
  bb.word_count { 1 }
end
