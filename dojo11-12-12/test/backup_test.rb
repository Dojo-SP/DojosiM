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

    def test_compare_two_diff_files
        assert ! Backup.new.compare('file1.txt', 'file2.txt')
        
    end
    
    def test_compare_equals_files_name
         assert Backup.new.compare("file2.txt", "file2.txt")
    end
        
end
