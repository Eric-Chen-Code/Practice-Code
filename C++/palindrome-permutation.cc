
#include <cstddef>
#include <string.h>
#include <iostream>
#include <map>

using namespace std;

class Solution
{
public:
    bool canPermutePalindrome(std::string s)
    {

        std::map<char, int> mymap;

        for (int i = 0; i < s.length(); i++)
        {
            if ()
                mymap.insert(std::pair<char, int>(s[i], mymap[s[i]] + 1));
        }
    }
};

//elppef
//pelpe
//pepe
//ppleekn
//peep
p-- > 2 e-- > 2

    //store the letter and count