//menu text draw
//        |                         |                         |                         |                         |                         |                         |                         |
if (tier="main")
    text="       PAUSE MENU         Continue                  Current statistics        Help/info                 Options                   Retry Sector/boss         Quit to Main menu         Quit game                 ";
if (tier="help"){
    text="       HELP / INFO        Back to Pause menu        Game basics|              Stats and Special traits  Basic weapon info < ";
    if (weaponlist[weaponinfo]>=20 && weaponlist[weaponinfo]<=27){
        text+="P";
        text+=string(weaponlist[weaponinfo]-19)+" >  ";
        }
    else{
        if (weaponlist[weaponinfo]<10)
            text+="0";
        text+=string(weaponlist[weaponinfo])+" >  ";
        }
    text+="Basic enemy info < ";
    if (enemyinfo<10)
        text+="0";
    text+=string(enemyinfo)+" >   ";
    text+="Hidden skills             ";
    if (global.extras7){
        text+="Scrambler < ";
        if (global.scrambler)
            text+="ON  >"
        else
            text+="OFF >"
        }
    }
if (tier="help2"){
    if (global.sector==1)
        text="       GAME BASICS        Back to Help menu         Full controls             Difficulty level info     Sectors and saving        Health                    Nanofields and leveling";
    else
        text="       GAME BASICS        Back to Help menu         Full controls             Difficulty level info     Sectors and saving        Health                    Nanofields and leveling   Cracking interface        ";
    }
if (tier="options")
    text="        OPTIONS           Back to Pause menu        Screen shaking            Voices                    Sound effects             Music                     Show time                 Human blood";
if (tier="retry"){
    if (global.horse)
    text="          RETRY?          Yes (lose a life)         No#$#Note: Hold F4 to retry~at any time in-game";
    else
    text="          RETRY?          Yes                       No#$#Note: Hold F4 to retry~at any time in-game";
    }
if (tier="quitmain")
    text="    QUIT TO MAIN MENU?    Yes                       No#$#Note: Hold F2 to return~~ to~the main menu at~~~~~~ any time";
if (tier="quit")
    text="        QUIT GAME?        Yes                       No#$#Note: Press Alt+F4 to~~~~ immediately quit the game at any time";
if (tier="horse")
    text="       PAUSE MENU         Continue                  Instructions              Hints                     Retry stage               Quit to Main menu         Quit game                 ";
if (tier="wait")
    text="~~~";