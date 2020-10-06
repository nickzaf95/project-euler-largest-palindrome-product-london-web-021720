class LargestPalindromeProduct 

    def palindromeCheck(num)
        n = num.to_s.length
        x = -1
        test = num.to_s
        thing = false
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
                thing = true
            else
                return false
            end
        end
        return true
    end

    def answer()
        ans = 0
        for i in 100..999
            for j in 100..999
                current = i * j
                if palindromeCheck(current)
                    if (current) > ans
                        ans = current
                    end
                end
            end
        end
        print(ans)
        return ans
    end


end