��          �               �  �  �  9   i     �     �     �     �     �  j   �  �   _       �   (          !  v   .     �  }   �  ,   *    W  P   s
     �
  5   �
  %     �   1  v   �  �   ,  A   �      @  �  X   �     4     J     e     t     �  �   �    L  "   Q  :  t     �     �  �   �     �  �   �  7   S  �  �  g   ;     �  ]   �  2     �   L  �     8  �  y   �   # A simple script to calculate BMI
from pywebio.input import input, FLOAT
from pywebio.output import put_text

def bmi():
    height = input("Input your height(cm)：", type=FLOAT)
    weight = input("Input your weight(kg)：", type=FLOAT)

    BMI = weight / (height / 100) ** 2

    top_status = [(16, 'Severely underweight'), (18.5, 'Underweight'),
                  (25, 'Normal'), (30, 'Overweight'),
                  (35, 'Moderately obese'), (float('inf'), 'Severely obese')]

    for top, status in top_status:
        if BMI <= top:
            put_text('Your BMI: %.1f. Category: %s' % (BMI, status))
            break

if __name__ == '__main__':
    bmi() **Prerequisites**: PyWebIO requires Python 3.5.2 or newer Development version:: Discussion and support Documentation Features Hello, world Here is a simple PyWebIO script to calculate the `BMI <https://en.wikipedia.org/wiki/Body_mass_index>`_ :: If you want to integrate the ``bmi()`` service into an existing web framework, you can visit :ref:`Integration with a web framework <integration_web_framework>` section of this document. Implement Doc In the last line of the above code, changing the function call ``bmi()`` to `pywebio.start_server(bmi, port=80) <pywebio.platform.tornado.start_server>` will start a bmi web service on port 80 ( :demo_host:`online Demo </bmi>` ). Indices and tables Installation Less intrusive: old script code can be transformed into a Web service only by modifying the input and output operation Manual Need help when use PyWebIO? Make a new discussion on `Github Discussions <https://github.com/wang0618/PyWebIO/discussions>`_. Non-declarative layout, simple and efficient PyWebIO provides a diverse set of imperative functions to obtain user input and output content on the browser, turning the browser into a "rich text terminal", and can be used to build simple web applications or browser-based GUI applications. Using PyWebIO, developers can write applications just like writing terminal scripts (interaction based on input and print function), without the need to have knowledge of HTML and JS. PyWebIO is ideal for quickly building interactive applications that don't require a complicated user interface. Report bugs on the `GitHub issue <https://github.com/wang0618/pywebio/issues>`_. Stable version:: Support data visualization with third-party libraries Support for ``asyncio`` and coroutine Support integration into existing web services, currently supports Flask, Django, Tornado, aiohttp and FastAPI(Starlette) framework This documentation is also available in `PDF and Epub formats <https://readthedocs.org/projects/pywebio/downloads/>`_. This is just a very simple script if you ignore PyWebIO, but after using the input and output functions provided by PyWebIO, you can interact with the code in the browser: Use synchronization instead of callback-based method to get input Project-Id-Version: PyWebIO 1.5.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-26 16:35+0330
PO-Revision-Date: 2022-02-28 13:32+0330
Last-Translator: Pikhosh <pikhosh@gmail.com>
Language: en_US
Language-Team: English <>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 # یک اسکریپت ساده برای محاسبه شاخص توده بدنی
from pywebio.input import input, FLOAT
from pywebio.output import put_text

def bmi():
    height = input("قد خود را وارد کنید(سانتی متر)：", type=FLOAT)
    weight = input("وزن خود را وارد کنید(کیلوگرم)：", type=FLOAT)

    BMI = weight / (height / 100) ** 2

    top_status = [(16, 'کمبود وزن شدید'), (18.5, 'کمبود وزن'),
                  (25, 'عادی'), (30, 'اضافه وزن'),
                  (35, 'چاق متوسط'), (float('inf'), 'چاق شدید')]

    for top, status in top_status:
        if BMI <= top:
            put_text('شاخص توده بدنی شما: %.1f. دسته بندی: %s' % (BMI, status))
            break

if __name__ == '__main__':
    bmi() **پیش نیاز ها**: PyWebIO به Python 3.5.2 یا جدید تر نیاز دارد نسخه توسعه:: بحث و پشتیبانی مستندات ویژگی ها سلام، دنیا در اینجا یک اسکریپت PyWebIO ساده برای محاسبه `شاخص توده بدنی <https://en.wikipedia.org/wiki/Body_mass_index>`_ آورده شده است:: اگر شما می خواهید که سرویس ``bmi()`` را با یک وب فریم ورک موجود ادغام کنید، می توانید بخش :ref:`Integration with a web framework <integration_web_framework>` این مستندات را ببینید. مستندات پیاده سازی در آخرین خط کد بالا، تغییر فراخوانی تابع ``bmi()`` به `pywebio.start_server(bmi, port=80) <pywebio.platform.tornado.start_server>` یک وب سرویس شاخص توده بدنی را روی پورت 80 راه اندازی می کند ( :demo_host:`دمو آنلاین </bmi>` ). ایندکس ها و جداول نصب کمتر مزاحم: کد اسکریپت قدیم می تواند به یک وب سرویس تبدیل شود فقط با اصلاح عملیات ورودی و خروجی کتابچه راهنما هنگام استفاده از PyWebIOنیاز به کمک دارید؟ یک بحث جدید در `Github Discussions <https://github.com/wang0618/PyWebIO/discussions>`_ بسازید. چیدمان Non-declarative، ساده و کارآمد PyWebIO مجموعه ای از توابع ضروری را برای به دست آوردن ورودی کاربر و خروجی دادن محتوا روی مرورگر را ارائه می کند، تبدیل مرورگر به یک «ترمینال متن غنی»، و می تواند برای ساخت وب اپلیکیشن های ساده یا اپلیکیشن های دارای رابط کاربری گرافیکی مبتنی بر مرورگر استفاده شود. با استفاده از PyWebIO، توسعه دهندگان می توانند اپلیکیشن ها را درست مثل نوشتن اسکریپت های ترمینال (تعامل بر پایه تابع Input و Print) بنویسند، بدون نیاز به داشتن دانش HTML و جاوا اسکریپت. PyWebIO برای ساخت سریع اپلیکیشن های تعاملی که یک رابط کاربری پیچیده نیاز ندارند ایده آل است. باگ ها را در `GitHub issue <https://github.com/wang0618/pywebio/issues>`_ گزارش کنید. نسخه پایدار:: پشتیبانی از بصری سازی داده با کتابخانه های شخص ثالث پشتیبانی برای ``asyncio`` و coroutine پشتیبانی از ادغام با وب سرویس های موجود، در حال حاضر پشتیبانی از Flask, Django, Tornado, aiohttp و فریم ورک FastAPI(Starlette) این مستندات همچنین در `فرمت های PDF و Epub <https://readthedocs.org/projects/pywebio/downloads/>`_ در دسترس است. این فقط یک اسکریپت خیلی ساده است اگه شما PyWebIO را نادیده بگیرید، اما بعد از استفاده از توابع ورودی و خروجی ارائه شده توسط PyWebIO، شما می توانید با کد در مرورگر تعامل برقرار کنید: استفاده از همگام سازی بجای متد مبتنی بر فراخوانی برای دریافت ورودی 