#!/bin/bash

git clone https://github.com/jacob-w-gable/Orchis-theme.git
./Orchis-theme/install.sh --color purple
./plymouth/install.sh
cp Orchis-theme/Orchis-GDM /usr/share/themes
git clone https://github.com/yeyushengfan258/Reversal-icon-theme
./Reversal-icon-theme/install.sh
