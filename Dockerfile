# از یک تصویر سبک و پایدار پایتون استفاده کن
FROM python:3.11-slim                                                                                                                                                 # دایرکتوری کاری داخل کانتینر رو /app قرار بده
WORKDIR /app
                                                                                   # اول فایل requirements.txt رو کپی کن                                              COPY requirements.txt .
# سپس کتابخانه‌ها رو نصب کن                                                         RUN pip install --no-cache-dir -r requirements.txt
                                                                                   # حالا تمام محتوای پوشه پروژه (کد ربات) رو کپی کن
COPY . .
                                                                                   # در نهایت، دستور اجرای ربات رو مشخص کن
CMD ["python", "bot_final.py"]
