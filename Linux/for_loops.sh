#!/bin/bash

#for <> in <>;
#do
#<>
#else
#<>
#done

states=('Michigan' 'Minnesota' 'Colorado' 'Illinois' 'Hawaii')

for state in ${states[4]};
do
  if [ $state == 'Hawaii' ];
  then

echo "Hawaii is the best!"
else
echo "I'm not fond of Hawaii"
fi
done

