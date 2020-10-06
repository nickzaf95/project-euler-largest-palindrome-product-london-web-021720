def palindromeCheck(num)
    n = num.to_s.length
    x = -1
    answer = false
    test = num.to_s
    for i in 0..2
        if i == 0
            x = n -1
        end
        if i == 1
            x = n - 2
        end
        if i == 2
            x = n - 3
        end
        if test[i] == test[x]
            answer = true
        else
            return false
        end
    end
    return true
end

def largest_palindrome_product()
    answer = 0
    for i in 100..999
        for j in 100..999
            current = i * j
            if palindromeCheck(current)
                if (current) > answer
                    answer = current
                end
            end
        end
    end
    print(answer)
    return answer
end
    