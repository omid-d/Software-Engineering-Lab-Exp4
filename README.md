# Software-Engineering-Lab-Exp4

## بخش اول - نمونه اجرا BDD
فایل pom.xml را همانطور که گفته شده تغییر میدهیم.

![image](https://github.com/user-attachments/assets/9635e714-1f06-4db3-b876-c5ee22671449)
حال maven را به شکل زیر تست میکنیم و نتیجه را میبینیم.

![image](https://github.com/user-attachments/assets/28aaabf0-9c75-44e1-bfe9-6f7f45d3b787)

همچنین از قسمت External libraries مشاهده می کنیم که کتابخانه ها نصب شدند. همچنین گزینه import changes و enable auto import را هم انتخاب می کنیم.

![image](https://github.com/user-attachments/assets/48259ded-b385-40e0-9165-859d0330a017)

حال پکیج resources را در پوشه تست به شکل گفته شده می سازیم و تنظیم می کنیم.

![image](https://github.com/user-attachments/assets/873de42c-6a45-4168-a5c7-f313bab9bd09)

سپس پکیج calculator و دایرکتوری features را به شکل زیر می سازیم.

![image](https://github.com/user-attachments/assets/a2f4a471-2e7b-4972-8560-9420a94d5155)

حال calculator.feature را میسازیم و کد داده شده را درونش قرار می دهیم.

![image](https://github.com/user-attachments/assets/1d5dde77-1c90-4950-9f1c-c9531ec730fa)

حال mystepdefs را میسازیم و کد را درونش کپی میکنیم.

![image](https://github.com/user-attachments/assets/53f4054d-02df-4832-bdfb-d63624efb1d3)

و سپس کلاس Calculator را به شکل زیر میسازیم.

![image](https://github.com/user-attachments/assets/f95d6c4c-ab34-4d69-9839-cdaa45b1711e)

حال با تست کردن Maven با مشکل رو‌به‌رو می شویم:

![photo_2025-05-04_15-37-47](https://github.com/user-attachments/assets/8063b712-2eaf-4477-82a7-af297d6985a4)

نسخه Maven را بالاتر می بریم و در این حالت Maven test بدون مشکل اجرا می شود:

![photo_2025-05-04_15-39-02](https://github.com/user-attachments/assets/26d0569e-9aac-4243-bb37-ba044b172578)

با اجرای calculator.features ابتدا به مشکل برخوردیم و نیاز به تغییر نام فولدر java.test.calculator و همچنین استفاده از io برای استفاده از cucumber بود، با انجام این تغییرات تست به درستی اجرا شد:

![photo_2025-05-04_15-40-18](https://github.com/user-attachments/assets/e6dcc9fd-4b20-40a4-a2b9-79eab16d3bc6)

سپس فایل RunnerTest.java را می سیازیم و کد داده شده را در آن پیاده می کنیم:

![photo_2025-05-04_15-43-47](https://github.com/user-attachments/assets/63852542-7c33-477d-a8c5-1782d4a99329)

با اجرای این کد به ارور زیر می رسیم:

![photo_2025-05-04_15-45-35](https://github.com/user-attachments/assets/0343f236-039f-4579-ac83-a704e86650f6)

سپس با اضافه کردن مسیر فایل features به درستی اجرا می شود

![photo_2025-05-04_15-46-50](https://github.com/user-attachments/assets/43f97e68-309a-4667-9cd6-d20b654027b3)

سناریو outline را اضافه می کنیم:

![photo_2025-05-04_15-47-46](https://github.com/user-attachments/assets/d3527c39-9cbb-47a8-9c45-e1a9b9389a7f)

با اجرای RunnerTest به مشکل زیر می رسیم:

![photo_2025-05-04_15-48-16](https://github.com/user-attachments/assets/30964bf8-309d-4d7f-a754-150612260c42)

علت بروز این تست عدد منفی 1- است که چون ما در فایل Mystepdefs فقط اعداد مثبت را ساپورت می کنیم به مشکل بر می خوریم.

## بخش دوم - رفع اشکال کد

 در Mystepdefs حالت `d+` را به به `int` تغییر می دهیم:

![photo_2025-05-04_15-55-28](https://github.com/user-attachments/assets/cab4b9af-6c17-43c7-aa06-de740eb59b8a)

با این تغییر تست بدون مشکل پاس می شود:

![photo_2025-05-04_15-58-15](https://github.com/user-attachments/assets/5575ff71-acff-4b62-8af4-ddc6a6d48143)

---
## بخش دوم - ماشین حساب پیشرفته

در این بخش باید یک ماشین حساب هوشمند را پیاده‌سازی می‌کردیم. 
مشابه بخش گذشته، پیاده‌سازی‌ها را انجام دادیم. ابتدا در فایل 
`AdvancedCalculator.feature`
سناریوهای عادی را اضافه نمودیم.
در این سناریوها سعی نمودیم تمامی حالات جمع، تفریق، ضرب و تقسیم و توان را تست بنماییم.

بخشی از سناریوهای تست عادی:
![image](images/1.png)

سپس سناریو تست‌ها به صورت outline را نیز اضافه نمودیم.

![image2](images/2.png)

همچنین همانطور که گفته شد، تست‌های خاص نیز در بین این 55 تست موجود نوشته شده است.

![image3](images/3.png)
![image4](images/4.png)
![image5](images/5.png)

سپس این سناریوها را به موارد تست تبدیل نمودیم. 
در فایل `AdvancedStepdefs` این کار را انجام دادیم:
![image6](images/6.png)

سپس فایل `.feature` را اجرا می‌کنیم و مشاهده می‌کنیم که تست‌ها پاس خواهند شد.

![image7](images/7.png)

بعد از اجرای فایل 
`RunnerTest` نیز مشاهده می‌شود که تمامی تست‌ها پاس می‌شوند.

![passedtests](https://github.com/user-attachments/assets/b50ecf21-5b4f-4045-b163-2ebe3284fd0d)

---

### توضیح نهایی

در این آزمایش ما با مفهوم BDD آشنا شدیم. 
ابندا یک نمونه پروژه عملی آماده را انجام داده و مطابق با دستور آزمایش پیش بردیم. سپس ایراد آن پروژه را برطرف کردیم.
در بخش نهایی آزمایش نیز، تلاش کردیم با توجه به مفاهیم آموخته، ماشین حسابی پیشرفته را با توجه به BDD و سناریوهای تست پیاده کنیم.

---

### تقسیم کار
در این آزمایش مانند باقی آزمایش‌ها سعی نمودیم تسک‌ها کاملا مساوی و عادلانه تقسیم بشوند به طوری که سهم هر کس تا جای ممکن در کدزنی و گزارش ‌نویسی یکی باشد.
دو نفر از اعضا به طور کامل تسک اول و دوم را که همپوشانی زیادی با هم داشت را انجام دادند. نفر سوم نیز تسک آخر که از تسک‌های دیگر مستقل بود را جلو برد.
همچنین در نهایت نیز تمامی سناریوها تست مجدد شدند و با پاس شدن تمامی آن‌ها، این آزمایش نیز به پایان رسید.

[لینک کانبان‌برد](https://github.com/users/omid-d/projects/3/views/1)

---

### اعضای تیم
- امیررضا آذری - 99101087
- رضا حیدری - 400109616
- امید دلیران - 400104931








