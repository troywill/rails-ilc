model="../../app/models/category.rb"
cat >> ${model}<<PERL
has_and_belongs_to_many :items
PERL
emacs ${model}

