��    &      L              |  D  }  �  �     Z     j     z     �     �     �     �  
   �  #   �  -   �     !	     '	     3	     F	     M	     h	     o	     |	     �	     �	     �	     �	  .   �	  0   �	     $
     8
     E
     T
     h
  V   {
  �   �
  �  �    L  ;  i  z   �  u     �  �  �  }          :      P     q     �     �     �     �  O   �  Z   )  
   �     �  /   �     �  L   �  
   -     8     P  $   h     �     �     �  4   �  7   �     6     S     m     �     �  h   �  �       �  =  �   �  :"  �   �%   # Password input
password = input("Input password", type=PASSWORD)
put_text('password = %r' % password)  # ..demo-only
## ----

# Drop-down selection
gift = select('Which gift you want?', ['keyboard', 'ipad'])
put_text('gift = %r' % gift)  # ..demo-only
## ----

# Checkbox
agree = checkbox("User Term", options=['I agree to terms and conditions'])
put_text('agree = %r' % agree)  # ..demo-only
## ----

# Single choice
answer = radio("Choose one", options=['A', 'B', 'C', 'D'])
put_text('answer = %r' % answer)  # ..demo-only
## ----

# Multi-line text input
text = textarea('Text Area', rows=3, placeholder='Some text')
put_text('text = %r' % text)  # ..demo-only
## ----

# File Upload
img = file_upload("Select a image:", accept="image/*")
if img:    # ..demo-only
    put_image(img['content'], title=img['filename'])  # ..demo-only # Text Output
put_text("Hello world!")
## ----

# Table Output
put_table([
    ['Commodity', 'Price'],
    ['Apple', '5.5'],
    ['Banana', '7'],
])
## ----

# Image Output
put_image(open('/path/to/some/image.png', 'rb').read())  # local image # ..doc-only
put_image('http://example.com/some-image.png')  # internet image # ..doc-only
put_image('https://www.python.org/static/img/python-logo.png')  # ..demo-only
## ----

# Markdown Output
put_markdown('~~Strikethrough~~')
## ----

# File Output
put_file('hello_word.txt', b'hello word!')
## ----

# Show a PopUp
popup('popup title', 'popup text content')

# Show a notification message
toast('New message 🔔') **Script mode** **Server mode** Advanced features Basic Output Basic input Click Callback Combined Output Concurrent Here are some basic types of input. Here are some other types of input functions: Input Input Group Last but not least Layout OK, Have fun with PyWebIO! Output Output Scope Overview Parameter of input functions Run application Style Text input: The results of the above code are as follows:: The results of the above example are as follows: This is an example: User's guide ``pin`` module ``platform`` module ``session`` module age = input("How old are you?", type=NUMBER)
put_text('age = %r' % age)  # ..demo-only code = textarea('Code Edit', code={
    'mode': "python",
    'theme': 'darcula',
}, value='import something\n# Write your python code')
put_code(code, language='python')  # ..demo-only def check_age(p):  # ..demo-only
    if p < 10:                  # ..demo-only
        return 'Too young!!'    # ..demo-only
    if p > 60:                  # ..demo-only
        return 'Too old!!'      # ..demo-only
                                # ..demo-only
data = input_group("Basic info",[
  input('Input your name', name='name'),
  input('Input your age', name='age', type=NUMBER, validate=check_age)
])
put_text(data['name'], data['age']) def check_age(p):  # return None when the check passes, otherwise return the error message
    if p < 10:
        return 'Too young!!'
    if p > 60:
        return 'Too old!!'

age = input("How old are you?", type=NUMBER, validate=check_age)
put_text('age = %r' % age)  # ..demo-only def check_age(p):  # single input item validation  # ..demo-only
    if p < 10:                  # ..demo-only
        return 'Too young!!'    # ..demo-only
    if p > 60:                  # ..demo-only
        return 'Too old!!'      # ..demo-only
                                # ..demo-only
def check_form(data):  # return (input name, error msg) when validation fail
    if len(data['name']) > 6:
        return ('name', 'Name too long!')
    if data['age'] <= 0:
        return ('age', 'Age can not be negative!')

data = input_group("Basic info",[           # ..demo-only
   input('Input your name', name='name'),   # ..demo-only
   input('Input your age', name='age', type=NUMBER, validate=check_age)  # ..demo-only
], validate=check_form)              # ..demo-only
put_text(data['name'], data['age'])    # ..demo-only input('This is label', type=TEXT, placeholder='This is placeholder',
        help_text='This is help text', required=True) Project-Id-Version: PyWebIO 1.5.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-26 16:35+0330
PO-Revision-Date: 2022-02-26 23:39+0330
Last-Translator: Pikhosh <pikhosh@gmail.com>
Language: fa
Language-Team: Persian <>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 # Password input
password = input("پسورد را وارد کنید", type=PASSWORD)
put_text('پسورد = %r' % password)  # ..demo-only
## ----

# Drop-down selection
gift = select('شما چه هدیه ای را می خواهید؟', ['keyboard', 'ipad'])
put_text('هدیه = %r' % gift)  # ..demo-only
## ----

# Checkbox
agree = checkbox("شرط کاربر", options=['من با شرایط و ضوابط موافقت می کنم'])
put_text('موافقت = %r' % agree)  # ..demo-only
## ----

# Single choice
answer = radio("یکی را انتخاب کنید", options=['A', 'B', 'C', 'D'])
put_text('پاسخ = %r' % answer)  # ..demo-only
## ----

# Multi-line text input
text = textarea('ناحیه متن', rows=3, placeholder='قدری متن')
put_text('متن = %r' % text)  # ..demo-only
## ----

# File Upload
img = file_upload("یک تصویر انتخاب کنید:", accept="image/*")
if img:    # ..demo-only
    put_image(img['content'], title=img['filename'])  # ..demo-only # Text Output
put_text("سلام دنیا!")
## ----

# Table Output
put_table([
    ['کالا', 'قیمت'],
    ['سیب', '5.5'],
    ['موز', '7'],
])
## ----

# Image Output
put_image(open('/path/to/some/image.png', 'rb').read())  # local image # ..doc-only
put_image('http://example.com/some-image.png')  # internet image # ..doc-only
put_image('https://www.python.org/static/img/python-logo.png')  # ..demo-only
## ----

# Markdown Output
put_markdown('~~Strikethrough~~')
## ----

# File Output
put_file('hello_word.txt', b'hello word!')
## ----

# Show a PopUp
popup('popup title', 'popup text content')

# Show a notification message
toast('New message 🔔') **حالت اسکریپت** **حالت سرور** ویژگی های پیشرفته خروجی پایه ورودی پایه فراخوانی کلیک خروجی ترکیبی هم زمان در اینجا برخی از انواع پایه ورودی آورده شده. در اینجا برخی از انواع دیگر توابع ورودی آورده شده: ورودی گروه ورودی آخرین اما نه کم اهمیت ترین چیدمان خیلی خب، با PyWebIO اوقات خوشی را داشته باشید! خروجی محدوده خروجی بررسی اجمالی پارامتر توابع ورودی اجرای اپلیکیشن استایل ورودی متن: نتایج کد بالا به شرح زیر است:: نتایج مثال بالا به شرح زیر است: این یک مثال است: راهنمای کاربر ماژول ``pin`` ماژول ``platform`` ماژول ``session`` age = input("شما چند سال دارید؟", type=NUMBER)
put_text('سن = %r' % age)  # ..demo-only code = textarea('ویرایش کد', code={
    'mode': "python",
    'theme': 'darcula',
}, value='import something\n# کد پایتون خودتان را بنویسید')
put_code(code, language='python')  # ..demo-only def check_age(p):  # ..demo-only
    if p < 10:                  # ..demo-only
        return 'خیلی جوان!!'    # ..demo-only
    if p > 60:                  # ..demo-only
        return 'خیلی پیر!!'      # ..demo-only
                                # ..demo-only
data = input_group("اطلاعات پایه",[
  input('نام خود را وارد کنید', name='name'),
  input('سن خود را وارد کنید', name='age', type=NUMBER, validate=check_age)
])
put_text(data['name'], data['age']) def check_age(p):  # return None when the check passes, otherwise return the error message
    if p < 10:
        return 'خیلی جوان!!'
    if p > 60:
        return 'خیلی پیر!!'

age = input("شما چند سال دارید؟", type=NUMBER, validate=check_age)
put_text('age = %r' % age)  # ..demo-only def check_age(p):  # single input item validation  # ..demo-only
    if p < 10:                  # ..demo-only
        return 'خیلی جوان!!'    # ..demo-only
    if p > 60:                  # ..demo-only
        return 'خیلی پیر!!'      # ..demo-only
                                # ..demo-only
def check_form(data):  # return (input name, error msg) when validation fail
    if len(data['name']) > 6:
        return ('name', 'نام خیلی طولانی است!')
    if data['age'] <= 0:
        return ('age', 'سن نمی تواند منفی باشد!')

data = input_group("اطلاعات پایه",[           # ..demo-only
   input('نام خود را وارد کنید', name='name'),   # ..demo-only
   input('سن خود را وارد کنید', name='age', type=NUMBER, validate=check_age)  # ..demo-only
], validate=check_form)              # ..demo-only
put_text(data['name'], data['age'])    # ..demo-only input('این لیبل است', type=TEXT, placeholder='این placeholder است',
        help_text='این help text است', required=True) 