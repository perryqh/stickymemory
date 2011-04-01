Factory.define :plan do |plan|
  plan.days_duration { 30 }
  plan.start_bible_book { |bb| bb.association :bible_book}
  plan.end_bible_book { |bb| bb.association :bible_book}
end

Factory.define :bible_book do |bb|

end
