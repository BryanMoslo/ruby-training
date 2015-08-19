require "json"
class WordsCounter
  def self.get_words
    lines = []
    File.open("lib/files/#{@file_name}.txt", "r") do |f|
      f.each_line do |line|
        lines << line.split(/\W+/)
      end
    end

    words = lines.flatten
  end

  def self.dup_hash(ary)
    hash = Hash.new(0)
    ary.each { | v | hash.store(v, hash[v]+1) }
    
    hash
  end

  def self.export_file(words_hash)
    File.open("lib/files/#{@file_name}.json", 'w') do |f|
      f.write(JSON.pretty_generate(words_hash))
    end
  end

  def self.words_counter(file_name)
    @file_name = file_name
    words = get_words
    duplicated_words = dup_hash(words)

    export_file(duplicated_words)
  end
end
