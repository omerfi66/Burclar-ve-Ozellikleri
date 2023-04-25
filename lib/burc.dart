class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResmi;
  final String _burcBuyukResim;

  get burcAdi => this._burcAdi;



  get burcTarihi => this._burcTarihi;



  get burcDetayi => this._burcDetayi;

 

  get burcKucukResmi => this._burcKucukResmi;



  get burcBuyukResim => this._burcBuyukResim;


  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResmi, this._burcBuyukResim);
@override
  String toString() {
    
    return "$_burcAdi - $_burcBuyukResim";
  }
}
