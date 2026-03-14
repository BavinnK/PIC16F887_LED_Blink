#
# Generated Makefile - do not edit!
#
#
# This file contains information about the location of compilers and other tools.
# If you commmit this file into your revision control server, you will be able to 
# to checkout the project and build it from the command line with make. However,
# if more than one person works on the same project, then this file might show
# conflicts since different users are bound to have compilers in different places.
# In that case you might choose to not commit this file and let MPLAB X recreate this file
# for each user. The disadvantage of not commiting this file is that you must run MPLAB X at
# least once so the file gets created and the project can be built. Finally, you can also
# avoid using this file at all if you are only building from the command line with make.
# You can invoke make with the values of the macros:
# $ makeMP_CC="/opt/microchip/mplabc30/v3.30c/bin/pic30-gcc" ...  
#
SHELL=cmd.exe
PATH_TO_IDE_BIN=C:/Program Files (x86)/Microchip/MPLABX/v3.35/mplab_ide/mplab_ide/modules/../../bin/
# Adding MPLAB X bin directory to path.
PATH:=C:/Program Files (x86)/Microchip/MPLABX/v3.35/mplab_ide/mplab_ide/modules/../../bin/:$(PATH)
# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH="C:\Program Files (x86)\Microchip\MPLABX\v3.35\sys\java\jre1.8.0_91/bin/"
OS_CURRENT="$(shell uname -s)"
<<<<<<< HEAD
MP_CC="C:\Program Files (x86)\Microchip\xc8\v1.36\bin\xc8.exe"
# MP_CPPC is not defined
# MP_BC is not defined
MP_AS="C:\Program Files (x86)\Microchip\xc8\v1.36\bin\xc8.exe"
MP_LD="C:\Program Files (x86)\Microchip\xc8\v1.36\bin\xc8.exe"
# MP_AR is not defined
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files (x86)/Microchip/MPLABX/v3.35/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar"
MP_CC_DIR="C:\Program Files (x86)\Microchip\xc8\v1.36\bin"
# MP_CPPC_DIR is not defined
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files (x86)\Microchip\xc8\v1.36\bin"
MP_LD_DIR="C:\Program Files (x86)\Microchip\xc8\v1.36\bin"
# MP_AR_DIR is not defined
=======
# MP_CC is not defined
# MP_CPPC is not defined
# MP_BC is not defined
MP_AS="C:\Program Files (x86)\Microchip\MPLABX\v3.35\mpasmx\mpasmx.exe"
MP_LD="C:\Program Files (x86)\Microchip\MPLABX\v3.35\mpasmx\mplink.exe"
MP_AR="C:\Program Files (x86)\Microchip\MPLABX\v3.35\mpasmx\mplib.exe"
DEP_GEN=${MP_JAVA_PATH}java -jar "C:/Program Files (x86)/Microchip/MPLABX/v3.35/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar"
# MP_CC_DIR is not defined
# MP_CPPC_DIR is not defined
# MP_BC_DIR is not defined
MP_AS_DIR="C:\Program Files (x86)\Microchip\MPLABX\v3.35\mpasmx"
MP_LD_DIR="C:\Program Files (x86)\Microchip\MPLABX\v3.35\mpasmx"
MP_AR_DIR="C:\Program Files (x86)\Microchip\MPLABX\v3.35\mpasmx"
>>>>>>> 3f5c2ce (so i moved from X8C compiler to MPASM compiler and transitioned from inline asm to full main.s pure assembly took me 2 hour to just run the program)
# MP_BC_DIR is not defined
