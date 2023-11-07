sleep 0.5
pbpaste | perl -pe "s/(?<=\/\/)(?!fx)twitter(?=.com)/fxtwitter/" | xargs | pbcopy;
#var2="$(pbpaste)"
#osascript -- - "$var2" <<'EOF'
#  on run(argv)
#    return display notification item 1 of argv
#  end
#EOF
