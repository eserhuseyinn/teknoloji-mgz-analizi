SELECT
    urun_adi,
    toplam_adet,
    toplam_ciro,
    RANK() OVER (ORDER BY toplam_adet DESC) AS adet_sirasi,
    RANK() OVER (ORDER BY toplam_ciro DESC) AS ciro_sirasi
FROM (
    SELECT
        u.urun_adi,
        SUM(sd.adet) AS toplam_adet,
        SUM(sd.adet * sd.birim_fiyat) AS toplam_ciro
    FROM siparis_detay sd
    JOIN urunler u
        ON sd.urun_id = u.urun_id
    GROUP BY u.urun_adi
) t
ORDER BY ciro_sirasi;



