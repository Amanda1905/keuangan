class JenisPelayanan {
    List<JenisPelayananDatum> data;
    Meta meta;

    JenisPelayanan({
        required this.data,
        required this.meta,
    });

    factory JenisPelayanan.fromJson(Map<String, dynamic> json) => JenisPelayanan(
        data: List<JenisPelayananDatum>.from(json["data"].map((x) => JenisPelayananDatum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class JenisPelayananDatum {
    int id;
    PurpleAttributes attributes;

    JenisPelayananDatum({
        required this.id,
        required this.attributes,
    });

    factory JenisPelayananDatum.fromJson(Map<String, dynamic> json) => JenisPelayananDatum(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class PurpleAttributes {
    String jenisPelayanan;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;
    SatuanTarif satuanTarif;

    PurpleAttributes({
        required this.jenisPelayanan,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.satuanTarif,
    });

    factory PurpleAttributes.fromJson(Map<String, dynamic> json) => PurpleAttributes(
        jenisPelayanan: json["jenis_pelayanan"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        satuanTarif: SatuanTarif.fromJson(json["satuan_tarif"]),
    );

    Map<String, dynamic> toJson() => {
        "jenis_pelayanan": jenisPelayanan,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "satuan_tarif": satuanTarif.toJson(),
    };
}

class SatuanTarif {
    List<SatuanTarifDatum> data;

    SatuanTarif({
        required this.data,
    });

    factory SatuanTarif.fromJson(Map<String, dynamic> json) => SatuanTarif(
        data: List<SatuanTarifDatum>.from(json["data"].map((x) => SatuanTarifDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class SatuanTarifDatum {
    int id;
    FluffyAttributes attributes;

    SatuanTarifDatum({
        required this.id,
        required this.attributes,
    });

    factory SatuanTarifDatum.fromJson(Map<String, dynamic> json) => SatuanTarifDatum(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class FluffyAttributes {
    String satuanTarif;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;

    FluffyAttributes({
        required this.satuanTarif,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
    });

    factory FluffyAttributes.fromJson(Map<String, dynamic> json) => FluffyAttributes(
        satuanTarif: json["satuan_tarif"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "satuan_tarif": satuanTarif,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
    };
}

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
