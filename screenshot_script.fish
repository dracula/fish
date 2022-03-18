set birth 1428
set death 1476
echo -n Count Dracula: (math $death - $birth) > obituary.txt

suck_blood && transmogrify # Not real commands

set weaknesses "Sunlight" "Garlic"
for weakness in $weaknesses; echo "\"Not $weakness!\", he exclaimed."; end
