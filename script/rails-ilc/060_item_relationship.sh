model="../../app/models/item.rb"
cat >> ${model}<<PERL
has_and_belongs_to_many :categories
belongs_to :location
PERL
emacs ${model}
