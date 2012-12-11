
class Backup

    def compare(file1, file2)
        if file2 == file1
            return true
        end
    end
    
    def backup(dir)
        Dir[dir]
    end

end
