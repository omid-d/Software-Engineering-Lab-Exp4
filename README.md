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

نشخه Maven را بالاتر می بریم و در این حالت Maven test بدون مشکل اجرا می شود:

![photo_2025-05-04_15-39-02](https://github.com/user-attachments/assets/26d0569e-9aac-4243-bb37-ba044b172578)

با اجرای calculator.features ابتدا به مشکل برخوردیم و نیاز به تغییر نام فولدر java.test.calculator و همچنین استفاده از io برای استفاده از cucumber بود، با انجام این تغییرات تست به درستی اجرا شد:

![photo_2025-05-04_15-40-18](https://github.com/user-attachments/assets/e6dcc9fd-4b20-40a4-a2b9-79eab16d3bc6)

سپس فایل RunnerTest.java را می سیازیم و کد داده شده را در آن پیاده می کنیم:

![photo_2025-05-04_15-43-47](https://github.com/user-attachments/assets/63852542-7c33-477d-a8c5-1782d4a99329)

با اجرای این کد به ارور زیر می رسیم:

![photo_2025-05-04_15-45-35](https://github.com/user-attachments/assets/0343f236-039f-4579-ac83-a704e86650f6)

سپس با اضافه کردن مسیر فایل features به درسی اجرا می شود

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

![passedtests](https://github.com/user-attachments/assets/b50ecf21-5b4f-4045-b163-2ebe3284fd0d)










