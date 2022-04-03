class CovidModel {
  int? statusCode;
  Data? data;

  CovidModel({this.statusCode, this.data});

  CovidModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    data = json['data'] != null ? Data?.fromJson(json['data']) : null;
  }
}

class Data {
  Metadata? metadata;
  Content? content;

  Data({this.metadata, this.content});

  Data.fromJson(Map<String, dynamic> json) {
    metadata =
        json['metadata'] != null ? Metadata?.fromJson(json['metadata']) : null;
    content =
        json['content'] != null ? Content?.fromJson(json['content']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (metadata != null) {
      data['metadata'] = metadata?.toJson();
    }
    if (content != null) {
      data['content'] = content?.toJson();
    }
    return data;
  }
}

class Metadata {
  String? lastUpdate;

  Metadata({this.lastUpdate});

  Metadata.fromJson(Map<String, dynamic> json) {
    lastUpdate = json['last_update'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['last_update'] = lastUpdate;
    return data;
  }
}

class Content {
  String? kodeProv;
  String? namaProv;
  int? odpProses;
  int? odpSelesai;
  int? odpTotal;
  OdpTotalPerGender? odpTotalPerGender;
  OdpTotalPerUsia? odpTotalPerUsia;
  int? pdpProses;
  int? pdpSelesai;
  int? pdpTotal;
  OdpTotalPerGender? pdpTotalPerGender;
  OdpTotalPerUsia? pdpTotalPerUsia;
  int? otgProses;
  int? otgSelesai;
  int? otgTotal;
  OdpTotalPerGender? otgTotalPerGender;
  OdpTotalPerUsia? otgTotalPerUsia;
  int? positif;
  OdpTotalPerGender? positifPerGender;
  OdpTotalPerUsia? positifPerUsia;
  int? sembuh;
  OdpTotalPerGender? sembuhPerGender;
  OdpTotalPerUsia? sembuhPerUsia;
  int? meninggal;
  OdpTotalPerGender? meninggalPerGender;
  OdpTotalPerUsia? meninggalPerUsia;
  Rdt? rdt;
  Pcr? pcr;

  Content(
      {this.kodeProv,
      this.namaProv,
      this.odpProses,
      this.odpSelesai,
      this.odpTotal,
      this.odpTotalPerGender,
      this.odpTotalPerUsia,
      this.pdpProses,
      this.pdpSelesai,
      this.pdpTotal,
      this.pdpTotalPerGender,
      this.pdpTotalPerUsia,
      this.otgProses,
      this.otgSelesai,
      this.otgTotal,
      this.otgTotalPerGender,
      this.otgTotalPerUsia,
      this.positif,
      this.positifPerGender,
      this.positifPerUsia,
      this.sembuh,
      this.sembuhPerGender,
      this.sembuhPerUsia,
      this.meninggal,
      this.meninggalPerGender,
      this.meninggalPerUsia,
      this.rdt,
      this.pcr});

  Content.fromJson(Map<String, dynamic> json) {
    kodeProv = json['kode_prov'];
    namaProv = json['nama_prov'];
    odpProses = json['odp_proses'];
    odpSelesai = json['odp_selesai'];
    odpTotal = json['odp_total'];
    odpTotalPerGender = json['odp_total_per_gender'] != null
        ? OdpTotalPerGender?.fromJson(json['odp_total_per_gender'])
        : null;
    odpTotalPerUsia = json['odp_total_per_usia'] != null
        ? OdpTotalPerUsia?.fromJson(json['odp_total_per_usia'])
        : null;
    pdpProses = json['pdp_proses'];
    pdpSelesai = json['pdp_selesai'];
    pdpTotal = json['pdp_total'];
    pdpTotalPerGender = json['pdp_total_per_gender'] != null
        ? OdpTotalPerGender?.fromJson(json['pdp_total_per_gender'])
        : null;
    pdpTotalPerUsia = json['pdp_total_per_usia'] != null
        ? OdpTotalPerUsia?.fromJson(json['pdp_total_per_usia'])
        : null;
    otgProses = json['otg_proses'];
    otgSelesai = json['otg_selesai'];
    otgTotal = json['otg_total'];
    otgTotalPerGender = json['otg_total_per_gender'] != null
        ? OdpTotalPerGender?.fromJson(json['otg_total_per_gender'])
        : null;
    otgTotalPerUsia = json['otg_total_per_usia'] != null
        ? OdpTotalPerUsia?.fromJson(json['otg_total_per_usia'])
        : null;
    positif = json['positif'];
    positifPerGender = json['positif_per_gender'] != null
        ? OdpTotalPerGender?.fromJson(json['positif_per_gender'])
        : null;
    positifPerUsia = json['positif_per_usia'] != null
        ? OdpTotalPerUsia?.fromJson(json['positif_per_usia'])
        : null;
    sembuh = json['sembuh'];
    sembuhPerGender = json['sembuh_per_gender'] != null
        ? OdpTotalPerGender?.fromJson(json['sembuh_per_gender'])
        : null;
    sembuhPerUsia = json['sembuh_per_usia'] != null
        ? OdpTotalPerUsia?.fromJson(json['sembuh_per_usia'])
        : null;
    meninggal = json['meninggal'];
    meninggalPerGender = json['meninggal_per_gender'] != null
        ? OdpTotalPerGender?.fromJson(json['meninggal_per_gender'])
        : null;
    meninggalPerUsia = json['meninggal_per_usia'] != null
        ? OdpTotalPerUsia?.fromJson(json['meninggal_per_usia'])
        : null;
    rdt = json['rdt'] != null ? Rdt?.fromJson(json['rdt']) : null;
    pcr = json['pcr'] != null ? Pcr?.fromJson(json['pcr']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['kode_prov'] = kodeProv;
    data['nama_prov'] = namaProv;
    data['odp_proses'] = odpProses;
    data['odp_selesai'] = odpSelesai;
    data['odp_total'] = odpTotal;
    if (odpTotalPerGender != null) {
      data['odp_total_per_gender'] = odpTotalPerGender?.toJson();
    }
    if (odpTotalPerUsia != null) {
      data['odp_total_per_usia'] = odpTotalPerUsia?.toJson();
    }
    data['pdp_proses'] = pdpProses;
    data['pdp_selesai'] = pdpSelesai;
    data['pdp_total'] = pdpTotal;
    if (pdpTotalPerGender != null) {
      data['pdp_total_per_gender'] = pdpTotalPerGender?.toJson();
    }
    if (pdpTotalPerUsia != null) {
      data['pdp_total_per_usia'] = pdpTotalPerUsia?.toJson();
    }
    data['otg_proses'] = otgProses;
    data['otg_selesai'] = otgSelesai;
    data['otg_total'] = otgTotal;
    if (otgTotalPerGender != null) {
      data['otg_total_per_gender'] = otgTotalPerGender?.toJson();
    }
    if (otgTotalPerUsia != null) {
      data['otg_total_per_usia'] = otgTotalPerUsia?.toJson();
    }
    data['positif'] = positif;
    if (positifPerGender != null) {
      data['positif_per_gender'] = positifPerGender?.toJson();
    }
    if (positifPerUsia != null) {
      data['positif_per_usia'] = positifPerUsia?.toJson();
    }
    data['sembuh'] = sembuh;
    if (sembuhPerGender != null) {
      data['sembuh_per_gender'] = sembuhPerGender?.toJson();
    }
    if (sembuhPerUsia != null) {
      data['sembuh_per_usia'] = sembuhPerUsia?.toJson();
    }
    data['meninggal'] = meninggal;
    if (meninggalPerGender != null) {
      data['meninggal_per_gender'] = meninggalPerGender?.toJson();
    }
    if (meninggalPerUsia != null) {
      data['meninggal_per_usia'] = meninggalPerUsia?.toJson();
    }
    if (rdt != null) {
      data['rdt'] = rdt?.toJson();
    }
    if (pcr != null) {
      data['pcr'] = pcr?.toJson();
    }
    return data;
  }
}

class OdpTotalPerGender {
  int? lakiLaki;
  int? perempuan;

  OdpTotalPerGender({this.lakiLaki, this.perempuan});

  OdpTotalPerGender.fromJson(Map<String, dynamic> json) {
    lakiLaki = json['laki_laki'];
    perempuan = json['perempuan'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['laki_laki'] = lakiLaki;
    data['perempuan'] = perempuan;
    return data;
  }
}

class OdpTotalPerUsia {
  Anak? anak;
  Anak? semua;

  OdpTotalPerUsia({this.anak, this.semua});

  OdpTotalPerUsia.fromJson(Map<String, dynamic> json) {
    anak = json['anak'] != null ? Anak?.fromJson(json['anak']) : null;
    semua = json['semua'] != null ? Anak?.fromJson(json['semua']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (anak != null) {
      data['anak'] = anak?.toJson();
    }
    if (semua != null) {
      data['semua'] = semua?.toJson();
    }
    return data;
  }
}

class Anak {
  LakiLaki? lakiLaki;
  LakiLaki? perempuan;

  Anak({this.lakiLaki, this.perempuan});

  Anak.fromJson(Map<String, dynamic> json) {
    lakiLaki = json['laki_laki'] != null
        ? LakiLaki?.fromJson(json['laki_laki'])
        : null;
    perempuan = json['perempuan'] != null
        ? LakiLaki?.fromJson(json['perempuan'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (lakiLaki != null) {
      data['laki_laki'] = lakiLaki?.toJson();
    }
    if (perempuan != null) {
      data['perempuan'] = perempuan?.toJson();
    }
    return data;
  }
}

class LakiLaki {
  int? bawah1;
  int? i15;
  int? i56;
  int? i618;

  LakiLaki({this.bawah1, this.i15, this.i56, this.i618});

  LakiLaki.fromJson(Map<String, dynamic> json) {
    bawah1 = json['bawah_1'];
    i15 = json['1_5'];
    i56 = json['5_6'];
    i618 = json['6_18'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bawah_1'] = bawah1;
    data['1_5'] = i15;
    data['5_6'] = i56;
    data['6_18'] = i618;
    return data;
  }
}

class Rdt {
  int? total;
  int? positif;
  int? negatif;
  int? invalid;
  int? belumDiketahui;
  String? tanggal;

  Rdt(
      {this.total,
      this.positif,
      this.negatif,
      this.invalid,
      this.belumDiketahui,
      this.tanggal});

  Rdt.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    positif = json['positif'];
    negatif = json['negatif'];
    invalid = json['invalid'];
    belumDiketahui = json['belum_diketahui'];
    tanggal = json['tanggal'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['total'] = total;
    data['positif'] = positif;
    data['negatif'] = negatif;
    data['invalid'] = invalid;
    data['belum_diketahui'] = belumDiketahui;
    data['tanggal'] = tanggal;
    return data;
  }
}

class Pcr {
  String? tanggal;
  int? jumlahSampling;
  int? positif;
  int? negatif;
  int? invalid;

  Pcr(
      {this.tanggal,
      this.jumlahSampling,
      this.positif,
      this.negatif,
      this.invalid});

  Pcr.fromJson(Map<String, dynamic> json) {
    tanggal = json['tanggal'];
    jumlahSampling = json['jumlah_sampling'];
    positif = json['positif'];
    negatif = json['negatif'];
    invalid = json['invalid'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['tanggal'] = tanggal;
    data['jumlah_sampling'] = jumlahSampling;
    data['positif'] = positif;
    data['negatif'] = negatif;
    data['invalid'] = invalid;
    return data;
  }
}
