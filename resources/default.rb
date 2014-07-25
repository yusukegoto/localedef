actions :add
default_action :add

attribute :locale,  kind_of: String
attribute :lang,    kind_of: String
attribute :charmap, kind_of: String
attr_accessor :has_locale, :locale
