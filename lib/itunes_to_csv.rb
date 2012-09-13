require "itunes_to_csv/version"

module ItunesToCsv
  DefaultPath = "~/Music/iTunes/iTunes Music Library.xml"
  class CommandLine
    def self.invoke(args)
      library_path = args.first || File.expand_path(DefaultPath)
      library = ITunes::Library.load(library_path)
      puts library.music.tracks.size
    end
  end
end
