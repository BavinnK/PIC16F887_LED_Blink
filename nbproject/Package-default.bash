#!/bin/bash -x

#
# Generated - do not edit!
#

# Macros
TOP=`pwd`
CND_CONF=default
CND_DISTDIR=dist
TMPDIR=build/${CND_CONF}/${IMAGE_TYPE}/tmp-packaging
TMPDIRNAME=tmp-packaging
<<<<<<< HEAD
OUTPUT_PATH=dist/${CND_CONF}/${IMAGE_TYPE}/cc_pic887_gpio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
OUTPUT_BASENAME=cc_pic887_gpio.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
PACKAGE_TOP_DIR=ccpic887gpio.x/
=======
OUTPUT_PATH=dist/${CND_CONF}/${IMAGE_TYPE}/CC_887_FULL_ASM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
OUTPUT_BASENAME=CC_887_FULL_ASM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
PACKAGE_TOP_DIR=cc887fullasm.x/
>>>>>>> 3f5c2ce (so i moved from X8C compiler to MPASM compiler and transitioned from inline asm to full main.s pure assembly took me 2 hour to just run the program)

# Functions
function checkReturnCode
{
    rc=$?
    if [ $rc != 0 ]
    then
        exit $rc
    fi
}
function makeDirectory
# $1 directory path
# $2 permission (optional)
{
    mkdir -p "$1"
    checkReturnCode
    if [ "$2" != "" ]
    then
      chmod $2 "$1"
      checkReturnCode
    fi
}
function copyFileToTmpDir
# $1 from-file path
# $2 to-file path
# $3 permission
{
    cp "$1" "$2"
    checkReturnCode
    if [ "$3" != "" ]
    then
        chmod $3 "$2"
        checkReturnCode
    fi
}

# Setup
cd "${TOP}"
mkdir -p ${CND_DISTDIR}/${CND_CONF}/package
rm -rf ${TMPDIR}
mkdir -p ${TMPDIR}

# Copy files and create directories and links
cd "${TOP}"
<<<<<<< HEAD
makeDirectory ${TMPDIR}/ccpic887gpio.x/bin
=======
makeDirectory ${TMPDIR}/cc887fullasm.x/bin
>>>>>>> 3f5c2ce (so i moved from X8C compiler to MPASM compiler and transitioned from inline asm to full main.s pure assembly took me 2 hour to just run the program)
copyFileToTmpDir "${OUTPUT_PATH}" "${TMPDIR}/${PACKAGE_TOP_DIR}bin/${OUTPUT_BASENAME}" 0755


# Generate tar file
cd "${TOP}"
<<<<<<< HEAD
rm -f ${CND_DISTDIR}/${CND_CONF}/package/ccpic887gpio.x.tar
cd ${TMPDIR}
tar -vcf ../../../../${CND_DISTDIR}/${CND_CONF}/package/ccpic887gpio.x.tar *
=======
rm -f ${CND_DISTDIR}/${CND_CONF}/package/cc887fullasm.x.tar
cd ${TMPDIR}
tar -vcf ../../../../${CND_DISTDIR}/${CND_CONF}/package/cc887fullasm.x.tar *
>>>>>>> 3f5c2ce (so i moved from X8C compiler to MPASM compiler and transitioned from inline asm to full main.s pure assembly took me 2 hour to just run the program)
checkReturnCode

# Cleanup
cd "${TOP}"
rm -rf ${TMPDIR}
