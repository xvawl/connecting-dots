platform=""
if [[ "$(uname)" = "Darwin" ]]; then
  platform="mac"
elif [[ "$(uname)" = "Linux" ]]; then
  platform="linux"
fi

echo $platform

dots_programs=(
  tig
  tree
)

# only installed on mac-brew
dots_mac_programs=(
  #
)

for dots_p in "${dots_programs[@]}"
do
  echo "$dots_p"
done