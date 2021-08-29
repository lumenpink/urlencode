# shellcheck shell=bash
Describe 'usage'
It 'Test URL encode'
# shellcheck disable=SC2046
When run script ./urlencode.sh $(cat spec/URLTOENCODE)
The line 1 of output should eq 'Test%2B%3D_-%29%28%2A%26%C2%A8%25%24%23%40%21%22%5B%5D%7B%7D%5E%7E%C2%B4%60%C3%A7%C3%87%3B%3A.%3E%2C%3C%27'
End
End
