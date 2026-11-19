<div dir="rtl" align="center">

<img src="https://puzzlenetdesk.ir/logo.jpg" alt="PuzzleDesk" width="140">

# پازل‌دسک — PuzzleDesk

**نرم‌افزار ریموت دسکتاپ پازل‌نت — خدمتی نوین از گروه فنی پازل‌نت**

[![Release](https://img.shields.io/github/v/release/puzzle-net-iran/PuzzleDesk?label=%D9%86%D8%B3%D8%AE%D9%87&color=AD0214)](https://github.com/puzzle-net-iran/PuzzleDesk/releases)
[![License: AGPL-3.0](https://img.shields.io/badge/License-AGPL--3.0-blue.svg)](LICENCE)
[![Website](https://img.shields.io/badge/Website-puzzlenetdesk.ir-AD0214)](https://puzzlenetdesk.ir)

[🌐 وب‌سایت](https://puzzlenetdesk.ir) •
[⬇️ دانلود](#-دانلود) •
[🚀 شروع سریع](#-شروع-سریع) •
[🛠️ ساخت از سورس](#️-ساخت-از-سورس) •
[💬 پشتیبانی](#-پشتیبانی)

</div>

---

## معرفی

**پازل‌دسک** نرم‌افزار کنترل از راه دور (ریموت دسکتاپ) گروه فنی پازل‌نت است؛ بر پایهٔ
[RustDesk](https://github.com/rustdesk/rustdesk) نسخهٔ ۱٫۵٫۱ ساخته شده و با برند و
سرور اختصاصی پازل‌نت ارائه می‌شود. همهٔ اتصال‌ها از **سرور ریموت ما** عبور می‌کند —
سریع، پایدار و تحت کنترل گروه فنی پازل‌نت؛ هیچ ترافیکی سمت سرورهای عمومی RustDesk
نمی‌رود.

با پازل‌دسک می‌توانید از هر جایی به کامپیوتر خودتان یا کامپیوتر مشتری وصل شوید:
پشتیبانی از راه دور، کار از خانه، دسترسی به فایل‌ها و مدیریت سیستم‌ها — بدون
نیاز به هیچ تنظیم اضافه‌ای.

## ⬇️ دانلود

آخرین نسخه: **[v1.5.1-puzzledesk1](https://github.com/puzzle-net-iran/PuzzleDesk/releases/tag/v1.5.1-puzzledesk1)**

### ویندوز

| فایل | معماری | حجم |
| --- | --- | --- |
| [rustdesk-1.5.1-x86_64.exe](https://github.com/puzzle-net-iran/PuzzleDesk/releases/download/v1.5.1-puzzledesk1/rustdesk-1.5.1-x86_64.exe) | ۶۴ بیتی (x86_64) | ۲۶ مگابایت |
| [rustdesk-1.5.1-x86_64.msi](https://github.com/puzzle-net-iran/PuzzleDesk/releases/download/v1.5.1-puzzledesk1/rustdesk-1.5.1-x86_64.msi) | ۶۴ بیتی (x86_64) — نصب‌کننده | ۲۶٫۷ مگابایت |
| [rustdesk-1.5.1-aarch64.exe](https://github.com/puzzle-net-iran/PuzzleDesk/releases/download/v1.5.1-puzzledesk1/rustdesk-1.5.1-aarch64.exe) | ARM64 | ۲۴٫۱ مگابایت |
| [rustdesk-1.5.1-aarch64.msi](https://github.com/puzzle-net-iran/PuzzleDesk/releases/download/v1.5.1-puzzledesk1/rustdesk-1.5.1-aarch64.msi) | ARM64 — نصب‌کننده | ۲۴٫۸ مگابایت |
| [rustdesk-1.5.1-x86-sciter.exe](https://github.com/puzzle-net-iran/PuzzleDesk/releases/download/v1.5.1-puzzledesk1/rustdesk-1.5.1-x86-sciter.exe) | ۳۲ بیتی (x86) — نسخهٔ سبک | ۱۳٫۶ مگابایت |

> نسخه‌های ویندوز فعلاً بدون امضای دیجیتال منتشر می‌شوند؛ هنگام نصب، هشدار
> SmartScreen ویندوز را با «Run anyway» رد کنید.

### اندروید

نسخهٔ اندروید به‌زودی منتشر می‌شود.

## 🚀 شروع سریع

۱. **دانلود و اجرا** — فایل ویندوز را دانلود و اجرا کنید؛ نیازی به نصب نیست
   (نسخهٔ exe قابل‌حمل است).
۲. **آیدی و رمز را ببینید** — بعد از اجرا، یک آیدی ۹ رقمی و یک رمز یک‌بارمصرف
   روی صفحه می‌آید.
۳. **وصل شوید** — از دستگاه دیگر، آیدی را وارد کنید، رمز را بدهید و متصل شوید.

برای اتصال همیشگی، در تنظیمات یک **رمز ثابت** بگذارید و گزینهٔ «اجازهٔ اتصال
بدون تأیید» را فعال کنید.

## ✨ امکانات

- **کنترل کامل از راه دور** — صفحه، کیبورد و موس دستگاه مقابل، با کیفیت بالا
- **انتقال فایل** — جابه‌جایی فایل بین دو دستگاه، با کشیدن و رها کردن
- **چت و تماس** — گفت‌وگوی متنی و صوتی در حین اتصال
- **تونل TCP** — اتصال امن به سرویس‌های داخلی شبکهٔ مقابل
- **دسترسی بدون حضور** — با رمز ثابت، حتی وقتی کسی پای دستگاه نیست
- **چند مانیتور** — جابه‌جایی بین مانیتورهای دستگاه مقابل
- **سرور اختصاصی** — اتصال از سرور خودمان، بدون واسطهٔ خارجی
- **رابط فارسی** — زبان پیش‌فرض برنامه فارسی است

## 🔒 امنیت و حریم خصوصی

- اتصال‌ها با رمزنگاری سرتاسری محافظت می‌شوند.
- رمز اتصال فقط دست شماست؛ حتی ما هم به دستگاه شما دسترسی نداریم.
- سرور رله و راندوو روی زیرساخت خود پازل‌نت میزبانی می‌شود و هیچ داده‌ای
  سمت سرورهای خارجی نمی‌رود.
- برای امنیت بیشتر، رمز ثابت قوی بگذارید و آیدی خود را فقط به کسانی بدهید
  که به آن‌ها اعتماد دارید.

## 🖥️ سرور

سرور پازل‌دسک (rendezvous + relay) روی VPS اختصاصی پازل‌نت میزبانی می‌شود و
کلاینت از پیش برای اتصال به آن تنظیم شده است؛ کاربر هیچ تنظیمی لازم ندارد.
وضعیت لحظه‌ای سرور را می‌توانید روی [وب‌سایت](https://puzzlenetdesk.ir)
ببینید (چراغ سبز = وصل، قرمز = قطع).

## 🛠️ ساخت از سورس

بیلدها به‌صورت خودکار با GitHub Actions ساخته می‌شوند؛ برای ساخت دستی:

```sh
git clone https://github.com/puzzle-net-iran/PuzzleDesk
cd PuzzleDesk
```

- فایل‌های باینری (آیکون‌ها و فونت‌ها) در این مخزن نیستند؛ اسکریپت
  `.github/scripts/fetch-upstream-assets.sh` آن‌ها را در CI از کامیت
  upstream بازیابی می‌کند.
- پیش‌نیازها: Rust (stable)، Flutter، و vcpkg برای وابستگی‌های C++
  (جزئیات کامل در [مستندات ساخت RustDesk](https://rustdesk.com/docs/en/dev/build/)).
- سرور و کلید عمومی در `libs/hbb_common/src/config.rs` تنظیم شده‌اند.

ورک‌فلوها در `.github/workflows/` هستند؛ بیلد ریلیز با پوش به شاخهٔ
`release` اجرا می‌شود.

## 📁 ساختار مخزن

- `src/` — هستهٔ Rust برنامه (سرور، کلاینت، پلتفرم)
- `flutter/` — رابط کاربری (Flutter)
- `libs/hbb_common/` — کد مشترک با سرور (پروتکل، پیکربندی)
- `libs/scrap/` ،`libs/enigo/` ،`libs/clipboard/` — ضبط صفحه، ورودی و کلیپ‌بورد
- `.github/workflows/` — بیلد و ریلیز خودکار

## 🤝 مشارکت

مشارکت در بهبود پازل‌دسک آزاد است؛ Issue باز کنید یا Pull Request بفرستید.
قوانین خانهٔ مخزن (حداقل تغییر، بدون ریفکتور بی‌مورد) در
[`fork/AGENTS.md`](https://github.com/puzzle-net-iran/PuzzleDesk/blob/master/AGENTS.md)
آمده است.

## 📄 لایسنس و اعتبار

پازل‌دسک تحت لایسنس **AGPL-3.0** منتشر می‌شود ([متن کامل](LICENCE)) و
فورکی از [RustDesk](https://github.com/rustdesk/rustdesk) است؛ لایسنس و اعتبار
بالادستی حفظ شده است.

## 💬 پشتیبانی

- 🌐 وب‌سایت: [puzzlenetdesk.ir](https://puzzlenetdesk.ir)
- 💬 چت پشتیبانی: [tawk.to](https://tawk.to/0233e6eb0a0f478f10b8690c7c83dca85e22f9fa)
- ✈️ تلگرام: [@pazzle_net](https://t.me/pazzle_net)
- 🏢 گروه فنی پازل‌نت: [puzzlenet-group.ir](https://puzzlenet-group.ir)

---

<div dir="ltr" align="center">

## PuzzleDesk (English)

**PuzzleDesk** is PuzzleNet's remote desktop client — a branded fork of
[RustDesk](https://github.com/rustdesk/rustdesk) 1.5.1 (AGPL-3.0), preconfigured
to use PuzzleNet's self-hosted rendezvous/relay server. No traffic goes to
RustDesk's public servers.

- **Download:** [Releases](https://github.com/puzzle-net-iran/PuzzleDesk/releases) — Windows (x86_64 / aarch64 / x86 Sciter) available now; Android coming soon.
- **Quick start:** run the app, share your 9-digit ID and one-time password, connect.
- **Website:** [puzzlenetdesk.ir](https://puzzlenetdesk.ir) •
  **Support:** [Tawk.to chat](https://tawk.to/0233e6eb0a0f478f10b8690c7c83dca85e22f9fa) •
  **Telegram:** [@pazzle_net](https://t.me/pazzle_net)

</div>
