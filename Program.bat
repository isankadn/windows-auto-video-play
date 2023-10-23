@echo off
powershell -ExecutionPolicy Bypass -File ".\src\AddToScheduler.ps1" > log.txt 2>&1