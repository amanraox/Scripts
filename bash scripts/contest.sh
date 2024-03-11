# echo "Competitive Coding Environment Launched!"|lolcat
# subl

function show_help {
    echo "Usage: contest -cf | -cc | -lc | -ac | -h
    -cf for codeforces contest
    -cc for codechef contest
    -lc for leetcode contest
    -ac for atcode contest
    -h, --help    Display this help message
    " | lolcat
    echo "  This Script is created by --- Aman Umrao" | lolcat
}

function codeforces {
    echo "Codeforces Competitive Coding Environment Launched!"|lolcat
subl
    google-chrome --profile-directory="Profile 1" --new-window "https://codeforces.com/contests"
}

function codechef {
    echo "Codechef Competitive Coding Environment Launched!"|lolcat
subl
    google-chrome --profile-directory="Profile 1" --new-window "https://www.codechef.com/contests?itm_medium=navmenu&itm_campaign=allcontests"
}

function leetcode {
    echo "Leetcode Competitive Coding Environment Launched!"|lolcat
subl
    google-chrome --profile-directory="Profile 1" --new-window "https://leetcode.com/contest/"
}

function atcoder {
    echo "Atcoder Competitive Coding Environment Launched!"|lolcat
subl
    google-chrome --profile-directory="Profile 1" --new-window "https://atcoder.jp/contests/"
}

function gfg {
    echo "GeeksForGeeks Competitive Coding Environment Launched!"|lolcat
subl
    google-chrome --profile-directory="Default" --new-window "https://practice.geeksforgeeks.org/events/rec/gfg-weekly-coding-contest?itm_source=geeksforgeeks&itm_medium=main_header&itm_campaign=contests"
}

# Parse command-line options
#while [[ $# -gt 0 ]]; do
    case "$1" in
        cf|codeforces)
            codeforces
            ;;
        cc|codechef)
            codechef
            ;;
        lc|leetcode)
            leetcode
            ;;
        ac|atcoder)
            atcoder
            ;;
        gfg|GFG)
            gfg
            ;;
        -h|help)
            show_help
            exit 0
            ;;
        *)
            # break
            # ;;
    esac
#done

# Check if the script is called with no arguments
if [ $# -eq 0 ]; then
    show_help
    google-chrome --profile-directory="Profile 1"
    exit 1
fi
#Script is created by Aman Umrao
