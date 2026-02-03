![Ürün Performansı Pivot Tablosu](teknoloji_pivot.png)

# 📊 SQL & Excel ile Satış Analizi (Teknoloji Mağazası)

Bu proje, bir teknoloji mağazasına ait satış verilerinin **SQL Server** ve **Excel Pivot Table** kullanılarak analiz edilmesini amaçlamaktadır.  
Analizin temel odağı, ürünlerin **toplam satış adedi** ve **toplam ciro** açısından performanslarının karşılaştırılmasıdır.

Proje, yalnızca sayısal sonuçlar üretmekle kalmaz; aynı zamanda bu sonuçların **iş mantığıyla yorumlanmasını** hedefler.

---

## 🛠️ Kullanılan Teknolojiler

- **SQL Server**
  - JOIN
  - GROUP BY
  - Window Function (`RANK() OVER`)
- **Microsoft Excel**
  - Pivot Table
  - Combo Chart (Sütun + Çizgi)
  - Dilimleyici (Slicer)

---

## 🗄️ Kullanılan Veri Yapısı

Analiz aşağıdaki tablolar üzerinden gerçekleştirilmiştir:

- `urunler (urun_id, urun_adi, kategori, marka, birim_fiyat, stok)`
- `siparisler (siparis_id, musteri_id, siparis_tarihi)`
- `siparis_detay (siparis_detay_id, siparis_id, urun_id, adet, birim_fiyat)`

Toplamda:
- **244 adet ürün satışı**
- **₺2.699.356 toplam ciro**
verisi analiz edilmiştir.

---

## 📐 Analiz Yaklaşımı

1. SQL ile ürün bazlı:
   - Toplam satış adedi
   - Toplam ciro
   hesaplanmıştır.
2. Ürünler;
   - Satış adedine göre
   - Ciroya göre  
   ayrı ayrı **sıralanmıştır (RANK)**.
3. Sonuçlar Excel’e aktarılarak Pivot Table oluşturulmuştur.
4. Aynı grafikte:
   - **Sütunlar:** Toplam Ciro
   - **Çizgi:** Toplam Satış Adedi  
   olacak şekilde karşılaştırmalı görselleştirme yapılmıştır.

---

## 📊 İstatistiksel ve Mantıksal Yorumlar

### 🔹 1. Ciro ve Adet Arasındaki Doğal Dengesizlik
Bazı ürünlerin satış adedi düşük olmasına rağmen toplam cirosu oldukça yüksektir.  
Bu durum **ürün fiyatlarının yüksek olmasından dolayı doğal kabul edilebilir**.

**Örnek:**
- MacBook Air M1 / MacBook Pro M2  
  - Görece az satılmıştır  
  - Ancak birim fiyatları yüksek olduğu için toplam ciroda üst sıralardadır

Bu, satış performansının yalnızca adetle ölçülmemesi gerektiğini göstermektedir.

---

### 🔹 2. Çok Satan ≠ Çok Kazandıran
Bazı ürünler yüksek satış adedine sahip olmasına rağmen toplam ciroya katkısı sınırlıdır.

**Örnek:**
- Mouse, klavye gibi çevre birimleri  
  - Çok satılması doğaldır (erişilebilir fiyat)
  - Ancak düşük birim fiyat nedeniyle ciro katkısı sınırlı kalır

Bu tür ürünler:
- Müşteri çekmek
- Sepet doldurmak  
amacıyla önemlidir; ancak ana gelir kaynağı değildir.

---

### 🔹 3. Satılmayan veya Az Satılan Ürünler
Bazı ürünlerin hem satış adedi hem de cirosu düşüktür.

Bu durum:
- Ürünün pahalı olması
- Yanlış hedef kitle
- Düşük talep
- Alternatif ürünlerin daha cazip olması  

gibi nedenlerle **istatistiksel olarak normal kabul edilebilir**.

Bu ürünler için:
- Fiyat revizyonu
- Kampanya
- Stok azaltımı  

gibi aksiyonlar önerilebilir.

---

### 🔹 4. Ürünler İki Ana Gruba Ayrılmaktadır

| Ürün Tipi | Özellik |
|---------|--------|
| **Premium Ürünler** | Az satılır, yüksek ciro üretir |
| **Hacim Ürünleri** | Çok satılır, düşük ciro üretir |

Bu ayrım, mağaza satış stratejisinin dengeli yürütüldüğünü göstermektedir.

---

## 📈 Görselleştirme Açıklaması

Grafikte:
- **Mavi sütunlar:** Toplam Ciro
- **Turuncu çizgi:** Toplam Satış Adedi  

kullanılarak ürün performansları aynı anda analiz edilmiştir.  
Bu yöntem, tek bir metrik yerine **çok boyutlu değerlendirme** yapılmasını sağlamaktadır.

---

## 🧠 Sonuç

Bu çalışma, SQL ve Excel kullanılarak:
- Anlamlı veri agregasyonu
- Doğru görselleştirme
- Mantıklı iş yorumları  

yapılabileceğini göstermektedir.

Proje; akademik çalışmalar, veri analizi dersleri ve **junior data analyst portföyleri** için uygundur.

---

