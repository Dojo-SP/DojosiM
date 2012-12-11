require_relative '../lib/backup'
require 'test/unit'


def File.read(filename)
case filename
when 'file1.txt' then 'conteudo do file 1' 
end
end

class BackupTest < Test::Unit::TestCase

    def test_compare_files
        assert Backup.new.compare("file1.txt", "file1.txt")
    end

end
