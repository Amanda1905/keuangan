class TarifDasar {
    List<TarifDasarDatum> data;
    Meta meta;

    TarifDasar({
        required this.data,
        required this.meta,
    });

    factory TarifDasar.fromJson(Map<String, dynamic> json) => TarifDasar(
        data: List<TarifDasarDatum>.from(json["data"].map((x) => TarifDasarDatum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class TarifDasarDatum {
    int id;
    PurpleAttributes attributes;

    TarifDasarDatum({
        required this.id,
        required this.attributes,
    });

    factory TarifDasarDatum.fromJson(Map<String, dynamic> json) => TarifDasarDatum(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class PurpleAttributes {
    double tarifDasar;
    dynamic currency;
    dynamic currencyUsd;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    DetailJenisJasa jenisJasa;
    DetailJenisJasa jenisPelayanan;
    DetailJenisJasa jenisKapal;
    DetailJenisJasa satuanBayar;
    DetailJenisJasa detailJenisJasa;

    PurpleAttributes({
        required this.tarifDasar,
        required this.currency,
        required this.currencyUsd,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.jenisJasa,
        required this.jenisPelayanan,
        required this.jenisKapal,
        required this.satuanBayar,
        required this.detailJenisJasa,
    });

    factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        tarifDasar: json["tarif_dasar"]?.toDouble(),
        currency: json["currency"],
        currencyUsd: json["currency_usd"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        jenisJasa: DetailJenisJasa.fromJson(json["jenis_jasa"]),
        jenisPelayanan: DetailJenisJasa.fromJson(json["jenis_pelayanan"]),
        jenisKapal: DetailJenisJasa.fromJson(json["jenis_kapal"]),
        satuanBayar: DetailJenisJasa.fromJson(json["satuan_bayar"]),
        detailJenisJasa: DetailJenisJasa.fromJson(json["detail_jenis_jasa"]),
    );

    Map<String, dynamic> toJson() => {
        "tarif_dasar": tarifDasar,
        "currency": currency,
        "currency_usd": currencyUsd,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "jenis_jasa": jenisJasa.toJson(),
        "jenis_pelayanan": jenisPelayanan.toJson(),
        "jenis_kapal": jenisKapal.toJson(),
        "satuan_bayar": satuanBayar.toJson(),
        "detail_jenis_jasa": detailJenisJasa.toJson(),
    };
}

class DetailJenisJasa {
    List<DetailJenisJasaDatum> data;

    DetailJenisJasa({
        required this.data,
    });

    factory DetailJenisJasa.fromJson(Map<String, dynamic> json) => DetailJenisJasa(
        data: List<DetailJenisJasaDatum>.from(json["data"].map((x) => DetailJenisJasaDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class DetailJenisJasaDatum {
    int id;
    FluffyAttributes attributes;

    DetailJenisJasaDatum({
        required this.id,
        required this.attributes,
    });

    factory DetailJenisJasaDatum.fromJson(Map<String, dynamic> json) => DetailJenisJasaDatum(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class FluffyAttributes {
    String? detailJenisJasa;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    NamaJasa? namaJasa;
    String? jenisKapal;
    JenisPelayanan? jenisPelayanan;
    SatuanTarif? satuanTarif;

    FluffyAttributes({
        this.detailJenisJasa,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        this.namaJasa,
        this.jenisKapal,
        this.jenisPelayanan,
        this.satuanTarif,
    });

    factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        detailJenisJasa: json["detail_jenis_jasa"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        namaJasa: namaJasaValues.map[json["nama_jasa"]]!,
        jenisKapal: json["jenis_kapal"],
        jenisPelayanan: jenisPelayananValues.map[json["jenis_pelayanan"]]!,
        satuanTarif: satuanTarifValues.map[json["satuan_tarif"]]!,
    );

    Map<String, dynamic> toJson() => {
        "detail_jenis_jasa": detailJenisJasa,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "nama_jasa": namaJasaValues.reverse[namaJasa],
        "jenis_kapal": jenisKapal,
        "jenis_pelayanan": jenisPelayananValues.reverse[jenisPelayanan],
        "satuan_tarif": satuanTarifValues.reverse[satuanTarif],
    };
}

enum JenisPelayanan {
    DALAM_NEGERI,
    LUAR_NEGERI
}

final jenisPelayananValues = EnumValues({
    "Dalam Negeri": JenisPelayanan.DALAM_NEGERI,
    "Luar Negeri": JenisPelayanan.LUAR_NEGERI
});

enum NamaJasa {
    JASA_AIR,
    JASA_LABUH,
    JASA_TAMBAT,
    JASA_YATCH
}

final namaJasaValues = EnumValues({
    "Jasa Air": NamaJasa.JASA_AIR,
    "Jasa Labuh": NamaJasa.JASA_LABUH,
    "Jasa Tambat": NamaJasa.JASA_TAMBAT,
    "Jasa Yatch": NamaJasa.JASA_YATCH
});

enum SatuanTarif {
    DOLLARS,
    RUPIAH
}

final satuanTarifValues = EnumValues({
    "Dollars": SatuanTarif.DOLLARS,
    "Rupiah": SatuanTarif.RUPIAH
});

class Meta {
    Pagination pagination;

    Meta({
        required this.pagination,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
    };
}

class Pagination {
    int page;
    int pageSize;
    int pageCount;
    int total;

    Pagination({
        required this.page,
        required this.pageSize,
        required this.pageCount,
        required this.total,
    });

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
