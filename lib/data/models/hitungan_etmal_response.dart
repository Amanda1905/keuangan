class HitunganEtmal {
    List<DataHitunganEtmal> data;
    Meta meta;

    HitunganEtmal({
        required this.data,
        required this.meta,
    });

    factory HitunganEtmal.fromJson(Map<String, dynamic> json) => HitunganEtmal(
        data: List<DataHitunganEtmal>.from(json["data"].map((x) => DataHitunganEtmal.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
    };
}

class DataHitunganEtmal {
    int id;
    Attributes attributes;

    DataHitunganEtmal({
        required this.id,
        required this.attributes,
    });

    factory DataHitunganEtmal.fromJson(Map<String, dynamic> json) => DataHitunganEtmal(
        id: json["id"],
        attributes: Attributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
    };
}

class Attributes {
    String name;
    double dasarEtmal;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime publishedAt;

    Attributes({
        required this.name,
        required this.dasarEtmal,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
    });

    factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        name: json["name"],
        dasarEtmal: json["dasar_etmal"]?.toDouble(),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "dasar_etmal": dasarEtmal,
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
