echo Hello there
echo --------------

echo Project A \(a\)
echo Project B \(b\)

echo
echo "Where do you want to go?..."

read dest

case $dest in
  a)
    cd "C:\Destionation\folder\a"
    ;;
  b)
    cd "C:\Destionation\folder\a"
    ;;
esac