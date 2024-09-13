*** Variables ***
#Element Page
${TRENDWATCH_BUTTON}    //h3[contains(text(),'DXT360 Trendwatch')]//following::button[1]
${TRANDWATCH_IMG_LOGO}    //img[@src='/logo.png' and @alt='DXT 360']

#Element Channel Navigate
${TRANDWATCH_TWITTER_BUTTON}    //button[@data-testid='twitter_desktop']
${TRANDWATCH_YOUTUBE_BUTTON}    //button[@data-testid='youtube_desktop']
${TRANDWATCH_GOOGLE_BUTTON}    //button[@data-testid='google_desktop']
${TRANDWATCH_FACEBOOK_BUTTON}    //button[@data-testid='facebook_desktop']
${TRANDWATCH_FORUM_BUTTON}    //button[@data-testid='forum_desktop']
${TRANDWATCH_INSTAGRAM_BUTTON}    //button[@data-testid='instagram_desktop']
${TRANDWATCH_TIKTOK_BUTTON}    //button[@data-testid='tiktok_desktop']

#Element Mode
${TRANDWATCH_SLIDE_MODE_BUTTON}    //section[@class='flex items-center space-x-4']/div[1]/div[1]
${TRANDWATCH_TABLE_MODE_BUTTON}    //section[@class='flex items-center space-x-4']/div[1]/div[2]
${TRANDWATCH_TV_MODE_BUTTON}    //*[@class='relative group inline-block']
${TRANDWATCH_SLIDE_MODE_NEXT_BUTTON}    //div[@class='z-0 space-x-3']/button[1]
${TRANDWATCH_SLIDE_MODE_PREV_BUTTON}    //div[@class='z-0 space-x-3']/button[2]

#Element dropdown country
${TRANSWATCH_DD_COUNTRY}    //*[@id='headlessui-listbox-button-:rk:']
${TRANSWATCH_DD_INDONESIA}    //*[@id='headlessui-listbox-option-:r1e:']
${TRANSWATCH_DD_COUNTRY_SINGAPORE}   //*[@id='headlessui-listbox-option-:r1f:'] 
${TRANSWATCH_DD_COUNTRY_MALAYSIA}    //*[@id='headlessui-listbox-option-:r1g:']
${TRANSWATCH_DD_COUNTRY_THAILAND}    //*[@id='headlessui-listbox-option-:r1h:']         


