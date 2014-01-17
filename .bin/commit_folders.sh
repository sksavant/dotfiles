echo 'Usage: <script> <branch_name> <remote1> <remote2>'
branch=$1
shift
folders=$(git status | grep \# | tail -n +5 | cut -b3-)
for f in $folders; do
    git add f;
    git commit -m "added $f";
    for remote in "$@"; do
        git push $remote $branch;
    done
done;
