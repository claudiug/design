class Backup
  include Singleton

  attr_accessor :backup_directory, :interval
  attr_reader :data_sources

  def initialize
    @data_sources = []
    @backup_directory = '/backup'
    @interval = 60
  end

  def backup_files
    this_dir = Time.new.ctime.tr(' :', '_')
    this_location = File.join(@backup_directory, this_dir)
    @data_sources.each {|source| source.backup(this_location)}
  end

  def run
    while true
      backup_files
      sleep(@interval)
    end
  end
end

class DataSource
  attr_reader :directory, :finder_expression

  def initialize(directory, finder_expression)
    @directory = directory
    @finder_expression = finder_expression
  end

  def backup(backup_directory)
    files = @finder_expression.evalutate(@directory)
    files.each do |file|
      backup_file(path, backup_directory)
    end
  end

  def backup_file(path, back_directory)
    copy_path  = File.join(back_directory, path)
    FileUtils.mkdir_p(File.dirname(copy_path))
    FileUtils.cp(path, copy_path)
  end
end