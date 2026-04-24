# Custom Command Framework (cmd_fw) — Kullanım Kılavuzu
**Pack Format:** 57 | **Minecraft:** 1.21.2 – 1.21.3

---

## Nasıl Çalışır?

1. Oyuncu bir **Writable Book** açar.
2. **1. Sayfa** → Komut adı (örn. `heal`)
3. **2. Sayfa** → Argüman 1 (opsiyonel)
4. **3. Sayfa** → Argüman 2 (opsiyonel)
5. Kitabı **ana eline alır** ve `/trigger cmd_fw` yazar.

Framework kitabı okur, yetki kontrolü yapar ve ilgili handler fonksiyonunu çağırır.

---

## Başka Datapack'ten Komut Kaydetme

### 1. load fonksiyonunda kayıt
```mcfunction
# mypk:init — (minecraft:load tag'ına eklenmiş olmalı)
function cmd_fw:api/register {name:"heal",description:"Kendini iyileştirir",permission:0,handler:"mypk:commands/heal"}
function cmd_fw:api/register {name:"tp",description:"Teleport [OP]",permission:2,handler:"mypk:commands/tp"}
```

### 2. Handler fonksiyonu yaz
```mcfunction
# mypk:commands/heal
# @s = komutu yazan oyuncu
effect give @s minecraft:instant_health 1 5 true
function cmd_fw:api/respond {msg:"İyileştirildin!"}
```

### 3. Argümanları kullanma
```mcfunction
# mypk:commands/greet
# Sayfa 2'den arg0'ı al
function cmd_fw:api/has_arg {index:0}
execute if function mypk:commands/greet_check run function cmd_fw:api/get_arg {index:0,dest_ns:"mypk:data",dest_path:"greet.target"}
function mypk:commands/greet_send with storage mypk:data greet

# greet_send.mcfunction (MACRO - Params: target)
# $tellraw @a [{"text":"Merhaba "},{"text":"$(target)","color":"yellow"},{"text":"!"}]
```

---

## İzin Seviyeleri

| Seviye | Anlam       | Varsayılan      |
|--------|-------------|-----------------|
| 0      | Herkes      | Tüm oyuncular   |
| 1      | Moderatör   | Manuel atanır   |
| 2      | Admin       | Manuel atanır   |
| 3      | Sr. Admin   | Manuel atanır   |
| 4      | Sahip / OP  | Manuel atanır   |

İzin atamak: `/trigger cmd_fw` (kitapta: `setperm` / `OyuncuAdı` / `2`)

Veya direkt: `scoreboard players set <oyuncu> cmd_fw.perm <seviye>`

---

## API Fonksiyonları

| Fonksiyon                   | Açıklama                              |
|-----------------------------|---------------------------------------|
| `cmd_fw:api/register`       | Komut kaydet (MACRO)                  |
| `cmd_fw:api/respond`        | Başarı mesajı gönder (MACRO)          |
| `cmd_fw:api/respond_error`  | Hata mesajı gönder (MACRO)            |
| `cmd_fw:api/respond_info`   | Bilgi mesajı gönder (MACRO)           |
| `cmd_fw:api/get_arg`        | Argümanı storage'a al (MACRO)         |
| `cmd_fw:api/has_arg`        | Argüman var mı? return 1/0 (MACRO)    |
| `cmd_fw:api/arg_count`      | Argüman sayısını skora yaz            |
| `cmd_fw:api/set_perm`       | Oyuncu iznini ayarla (MACRO)          |
| `cmd_fw:api/give_book`      | Komut kitabı ver                      |

---

## Built-in Komutlar

| Komut       | Açıklama                | Gerekli İzin |
|-------------|-------------------------|--------------|
| `help`      | Tüm komutları listeler  | 0            |
| `version`   | Framework sürümü        | 0            |
| `getperm`   | Kendi izin seviyeni gör | 0            |
| `setperm`   | Oyuncu izni ata         | 4            |
| `givebook`  | Yeni kitap al           | 0            |

---

## Storage Yapısı

```
cmd_fw:engine
├── version         String   "1.0.0"
├── handlers        Compound {komutAdi: {permission:N, handler:"ns:path", description:"..."}, ...}
├── help_lines      List     [{name:"...", description:"...", permission:N}, ...]
├── current         Compound
│   ├── name        String   (şu anki komut adı)
│   ├── args        List     [arg0, arg1, arg2]  (String listesi)
│   ├── handler     String   (handler fonksiyon yolu)
│   └── perm_required Int   (gereken izin seviyesi)
└── help_iter       List     (help döngüsü için geçici kopya)

cmd_fw:temp
└── setperm         Compound {target:"...", level_raw:"...", level:N}
```

---

## Debug Modu

`tag <oyuncu> add cmd_fw.debug` ile oyuncuya debug tag'ı eklenirse  
framework tüm kayıt/hata mesajlarını o oyuncuya gönderir.

---

## Notlar

- Komut adları **küçük harf**, **boşluksuz** olmalı (alfanümerik + `_`)
- Handler fonksiyonu `@s` konteksinde çalışır (komutu yazan oyuncu)
- Kitap sayfası başına ~100 karakter sığar (MC limiti)
