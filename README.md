
**Proje nasıl çalışır , kodlar ne anlama geliyor ?**
----------

![](https://cdn-images-1.medium.com/max/800/1*vMPk-jMnmXsCZ01ZQiVdbg.png)

Bilgisayarınızda Ruby kurulu olmalı. Kurulu değilse aşağıdaki gibi kurulumu yapabilirsiniz. Burada linux kurulumu anlatılacaktır.

**sudo apt-get update**   
**sudo apt-get install curl**   
**\curl -L** [**https://get.rvm.io**](https://get.rvm.io) **| bash -s stable --ruby** 

**rvm get stable --autolibs=enable  
rvm install ruby  
rvm --default use ruby-2.5.3**

Kurulumu doğru yapdığını kontrol etmek için **ruby -v** komutunu çalıştıralım.

![](https://cdn-images-1.medium.com/max/800/1*ZQIHAmCiloV-GnqNzVD24w.png)

şu şekilde bir çıktı aldıysanız herşeyi doğru yapmışsınızdır.

Halen bi sıkıntı varsa aşağıdaki yazıya göz atabilirsiniz.

[**Linux işletim sistemine(debian tabanlı) Ruby on Rails kurulumu nasıl yapılır ?**  
_1.) Sistemimizi kurulum için hazırlayalım.Hatasız bir şekilde aşağıdaki kodu çalıştıralım._medium.com](https://medium.com/nafidurmus/linux-i%C5%9Fletim-sistemine-debian-tabanl%C4%B1-ruby-on-rails-kurulumu-nas%C4%B1l-yap%C4%B1l%C4%B1r-ddd040f3dc93 "https://medium.com/nafidurmus/linux-i%C5%9Fletim-sistemine-debian-tabanl%C4%B1-ruby-on-rails-kurulumu-nas%C4%B1l-yap%C4%B1l%C4%B1r-ddd040f3dc93")[](https://medium.com/nafidurmus/linux-i%C5%9Fletim-sistemine-debian-tabanl%C4%B1-ruby-on-rails-kurulumu-nas%C4%B1l-yap%C4%B1l%C4%B1r-ddd040f3dc93)

Her şeyi yaptınız fakat kurulumu yapamadıysanız bana ulaşın 😃

----------

2.Ruby yi kurduğunuzu varsayalım şimdi diğer adıma geçiyoruz. Şimdi yandex translate apisinden kendimiz bir api key almamız gerekli.

İlk olarak [**Yandex translate**](https://translate.yandex.com/developers/keys)  sitesine girelim ve **Create a new key** butonuna tıklayalım. Oluşan api key ileride bize lazım olacak.

![](https://cdn-images-1.medium.com/max/800/1*S4uUQ2MZ4oYHMOti3bk27g.png)

tmsl ile başlayan kod bize lazım olacaktır

Şimdi aşağıdaki tablodan dil kodlarına bakalım. Tablodan istediğimiz kodu seçerek istediğimiz dile çevirebiliriz.

![](https://cdn-images-1.medium.com/max/1200/1*JZWpkZdUMSjRqVJUSBXu5w.png)

istediğiniz dil kodunu seçerek , istediğiniz dile çeviri yapabilirsiniz.

Yandex altyazı dosyasındaki dile otomatik olarak belirliyor. Bize sadece çevirmek istediğimiz dilin kodunu bulmakta.

3.Şimdi denemek için bir alt yazı dosyası bulalım. **turkcealtyazi.org** a girerek bir film bulalım. Ben Joker i buldum ve sadece ingilizce altyazısı olduğunu gördüm.

[**Joker**](https://turkcealtyazi.org/mov/7286456/joker.html)  için ingilizce olan [**altyazıyı**](https://turkcealtyazi.org/sub/740489/joker.html) indirelim.

![](https://cdn-images-1.medium.com/max/1200/1*d_WMDt1a-04rEmBO5AM5iA.png)

Joker filminin ingilizce altyazı dosyası

Altyazı dosyasının içinde 784 tane çevirmeli satır var. Yani 3136 tane satırı gözden geçirmemiz gerekecek.

Şimdi çeviri işlemi için hangi kodu çalıştıracağıza bakalım.

[https://gist.github.com/nafidurmus/bc7dfb23219771eccaf7a15b8997edb3](https://gist.github.com/nafidurmus/bc7dfb23219771eccaf7a15b8997edb3)

  

Yukarıdaki kodda ;

> **ruby** : ruby dosyası çalıştıracağımızı

> **-r ./subtitle-for-everyone.rb** : çalıştıracağımız proje dosyasını ekledik.

> **-e** : script i çalıştırmak için izin verdik

> **translate** : dosyanın içindeki fonksiyonun adı

> **yandex_translate_id** : yandex ten aldığımız api

> **altyazı_dosyasının_konumu** : çevirilecek dosyanın konumu ve adı

> **cevirilmesini_istediğiniz_dilin_kod** : istenen dil kodu (örnek : tr)

Şimdi çalıştıracağımız kodun örneğine bakalım.

![](https://cdn-images-1.medium.com/max/1200/1*q59KJ-2fVCnfOTuIa374fg.png)

yukarıdaki kodların çalışır halde olanı (kırmızıyla kapatılan alan çeviri apisinden)

Şimdi kodu çalıştıralım ve çevirelerin nasıl değiştiğine bakalım. Aşağıdaki videodan değişimleri izleyebilirsiniz.
