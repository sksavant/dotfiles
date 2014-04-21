for profile in $(ls $HOME/.unison/*.prf | rev | cut -b5- | rev); do
    echo "Running unison for profile $(basename $profile)"
    unison $(basename $profile);
    echo ""
done
