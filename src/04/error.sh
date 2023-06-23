#!/bin/bash

 if   [[ "${column1_background}" =~ [1-6] && "${column1_font_color}" =~ [1-6]  && "${column2_background}" =~ [1-6] && "${column2_font_color}" =~ [1-6] ]]; then
     . ./system.sh
elif [ "${column1_background}" -eq "${column1_font_color}" ] || [ "${column2_background}" -eq "${column2_font_color}" ]; then 
    echo 'please choose another color, because background and font text is one color!'
elif [[ "${column1_background}" =~ [.,@$/%\&*+=-] || "${column1_font_color}" =~ [.,@$/%\&*+=-]  || "${column2_background}" =~ [.,@$/%\&*+=-] || "${column2_font_color}" =~ [.,@$/%\&*+=-] ]]; then
    echo 'input correct arguments without ~!@#$/\%^&*,.!'
else
   . ./system.sh
fi
