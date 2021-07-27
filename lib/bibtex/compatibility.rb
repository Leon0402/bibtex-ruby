module BibTeX
  @iconv_replacements = Hash['ä', 'ae', 'ö', 'oe', 'ü', 'ue', 'Ä', 'Ae', 'Ö', 'Oe', 'Ü', 'Ue', 'ß', 'ss']

  # Returns +str+ transliterated containing only ASCII characters.
  def self.transliterate(str)
    str.gsub(/[äöüÄÖÜß]/, @iconv_replacements)
  end
end
