class SatuanBayar {
    List<DataSatuanBayar> data;
    Meta meta;

    SatuanBayar({
        required this.data,
        required this.meta,
    });

    factory SatuanBayar.fromJson(Map<String, dynamic> json) => SatuanBayar(
        data: List<DataSatuanBayar>.from(json["data"].map((x) => DataSatuanBayar.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class DataSatuanBayar {
    int id;
    Attributes attributes;

    DataSatuanBayar({
        required this.id,
        required this.attributes,
    });

    factory DataSatuanBayar.fromJson(Map<String, dynamic> json) => DataSatuanBayar(
        id: json["id"],
        attributes: Attributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class Attributes {
    String satuanTarif;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;

    Attributes({
        required this.satuanTarif,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
    });

    factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
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
