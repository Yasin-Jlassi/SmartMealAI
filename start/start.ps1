
Start-Process powershell -ArgumentList "-NoExit -Command ""cd Y:\Projects\smartmeal-ai\backend; venv\Scripts\activate; uvicorn main:app --reload"""
Start-Sleep -Seconds 2
Start-Process powershell -ArgumentList "-NoExit -Command ""cd Y:\Projects\smartmeal-ai\frontend; npx expo start"""
