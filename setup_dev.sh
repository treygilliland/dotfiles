mkdir logs

for script in scripts/*.sh; do
  bash "$script" > logs/$(basename $script .sh).txt
done
