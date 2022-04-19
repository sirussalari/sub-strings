def substrings(str, dictionary)
    str.downcase!
    hash = {}
    for substr in dictionary
        hash[substr] = 0
    end
    for substr in dictionary
        if str.include?(substr)
            hash[substr] += 1
        end
    end
    for substr in hash.keys
        if hash[substr] == 0
            hash.delete(substr)
        end
    end
    return hash
end