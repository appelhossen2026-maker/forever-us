@echo off
echo Generating image manifest...

echo { > images.json
echo   "chat": [ >> images.json
for %%f in (images\chat\*.jpg images\chat\*.jpeg images\chat\*.png images\chat\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ], >> images.json

echo   "meet": [ >> images.json
for %%f in (images\meet\*.jpg images\meet\*.jpeg images\meet\*.png images\meet\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ], >> images.json

echo   "picture": [ >> images.json
for %%f in (images\picture\*.jpg images\picture\*.jpeg images\picture\*.png images\picture\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ], >> images.json

echo   "proposal": [ >> images.json
for %%f in (images\proposal\*.jpg images\proposal\*.jpeg images\proposal\*.png images\proposal\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ], >> images.json

echo   "marriage": [ >> images.json
for %%f in (images\marriage\*.jpg images\marriage\*.jpeg images\marriage\*.png images\marriage\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ], >> images.json

echo   "baby-coming": [ >> images.json
for %%f in (images\baby-coming\*.jpg images\baby-coming\*.jpeg images\baby-coming\*.png images\baby-coming\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ], >> images.json

echo   "baby-born": [ >> images.json
for %%f in (images\baby-born\*.jpg images\baby-born\*.jpeg images\baby-born\*.png images\baby-born\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ], >> images.json

echo   "family": [ >> images.json
for %%f in (images\family\*.jpg images\family\*.jpeg images\family\*.png images\family\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ], >> images.json

echo   "question": [ >> images.json
for %%f in (images\question\*.jpg images\question\*.jpeg images\question\*.png images\question\*.webp) do (
    echo     "%%f", >> images.json
)
echo   ] >> images.json
echo } >> images.json

echo Done! images.json created!
pause
