sleep 0.5
testStr="$(pbpaste)"
if [[ "$testStr" =~ .*/twitter.* ]]; then
pbpaste | perl -pe "s/(?<=\/\/)(?!fx)twitter(?=.com)/fxtwitter/" | perl -pe 'chomp' | pbcopy;
#osascript -- - "$var2" <<'EOF'
#  on run(argv)
#    return display notification item 1 of argv
#  end
#EOF
fi