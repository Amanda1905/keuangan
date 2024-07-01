class DetailJenisJasa {
    List<DetailJenisJasaDatum> data;
    Meta meta;

    DetailJenisJasa({
        required this.data,
        required this.meta,
    });

    factory DetailJenisJasa.fromJson(Map<String, dynamic> json) => DetailJenisJasa(
        data: List<DetailJenisJasaDatum>.from(json["data"].map((x) => DetailJenisJasaDatum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class DetailJenisJasaDatum {
    int id;
    PurpleAttributes attributes;

    DetailJenisJasaDatum({
        required this.id,
        required this.attributes,
    });

    factory DetailJenisJasaDatum.fromJson(Map<String, dynamic> json) => DetailJenisJasaDatum(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class PurpleAttributes {
    String detailJenisJasa;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    JenisPelayananClass jenisPelayanan;
    JenisPelayananClass namaJasa;

    PurpleAttributes({
        required this.detailJenisJasa,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.jenisPelayanan,
        required this.namaJasa,
    });

    factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        detailJenisJasa: json["detail_jenis_jasa"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        jenisPelayanan: JenisPelayananClass.fromJson(json["jenis_pelayanan"]),
        namaJasa: JenisPelayananClass.fromJson(json["nama_jasa"]),
    );

    Map<String, dynamic> toJson() => {
        "detail_jenis_jasa": detailJenisJasa,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "jenis_pelayanan": jenisPelayanan.toJson(),
        "nama_jasa": namaJasa.toJson(),
    };
}

class JenisPelayananClass {
    List<JenisPelayananDatum> data;

    JenisPelayananClass({
        required this.data,
    });

    factory JenisPelayananClass.fromJson(Map<String, dynamic> json) => JenisPelayananClass(
        data: List<JenisPelayananDatum>.from(json["data"].map((x) => JenisPelayananDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class JenisPelayananDatum {
    int id;
    FluffyAttributes attributes;

    JenisPelayananDatum({
        required this.id,
        required this.attributes,
    });

    factory JenisPelayananDatum.fromJson(Map<String, dynamic> json) => JenisPelayananDatum(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class FluffyAttributes {
    JenisPelayananEnum? jenisPelayanan;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    String? namaJasa;

    FluffyAttributes({
        this.jenisPelayanan,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        this.namaJasa,
    });

    factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        jenisPelayanan: jenisPelayananEnumValues.map[json["jenis_pelayanan"]]!,
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        namaJasa: json["nama_jasa"],
    );

    Map<String, dynamic> toJson() => {
        "jenis_pelayanan": jenisPelayananEnumValues.reverse[jenisPelayanan],
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "nama_jasa": namaJasa,
    };
}

enum JenisPelayananEnum {
    DALAM_NEGERI,
    LUAR_NEGERI
}

final jenisPelayananEnumValues = EnumValues({
    "Dalam Negeri": JenisPelayananEnum.DALAM_NEGERI,
    "Luar Negeri": JenisPelayananEnum.LUAR_NEGERI
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
