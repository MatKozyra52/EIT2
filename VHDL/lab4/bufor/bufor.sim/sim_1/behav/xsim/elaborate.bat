@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Dec 12 18:37:43 +0100 2019
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto daf13d924d774cfc8d5119ca678edb37 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot bufor_tb_behav xil_defaultlib.bufor_tb -log elaborate.log"
call xelab  -wto daf13d924d774cfc8d5119ca678edb37 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot bufor_tb_behav xil_defaultlib.bufor_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
