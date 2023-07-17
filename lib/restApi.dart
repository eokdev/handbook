class SubCategoryElement {
    SubCategoryElement({
        required this.id,
        required this.category,
        required this.name,
        required this.isBold,
        required this.isCapitalLetter,
        required this.isItalic,
        required this.content,
    });

    final int? id;
    final RestApi? category;
    final String? name;
    final bool? isBold;
    final bool? isCapitalLetter;
    final bool? isItalic;
    final List<Content> content;

    SubCategoryElement copyWith({
        int? id,
        RestApi? category,
        String? name,
        bool? isBold,
        bool? isCapitalLetter,
        bool? isItalic,
        List<Content>? content,
    }) {
        return SubCategoryElement(
            id: id ?? this.id,
            category: category ?? this.category,
            name: name ?? this.name,
            isBold: isBold ?? this.isBold,
            isCapitalLetter: isCapitalLetter ?? this.isCapitalLetter,
            isItalic: isItalic ?? this.isItalic,
            content: content ?? this.content,
        );
    }

    factory SubCategoryElement.fromJson(Map<String, dynamic> json){ 
        return SubCategoryElement(
            id: json["id"],
            category: json["category"] == null ? null : RestApi.fromJson(json["category"]),
            name: json["name"],
            isBold: json["is_bold"],
            isCapitalLetter: json["is_capital_letter"],
            isItalic: json["is_italic"],
            content: json["content"] == null ? [] : List<Content>.from(json["content"]!.map((x) => Content.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "category": category?.toJson(),
        "name": name,
        "is_bold": isBold,
        "is_capital_letter": isCapitalLetter,
        "is_italic": isItalic,
        "content": content.map((x) => x.toJson()).toList(),
    };

    @override
    String toString(){
        return "$id, $category, $name, $isBold, $isCapitalLetter, $isItalic, $content, ";
    }
}

class RestApi {
    RestApi({
        required this.id,
        required this.chapter,
        required this.isBold,
        required this.isCapitalLetter,
        required this.isItalic,
        required this.subCategory,
    });

    final int? id;
    final String? chapter;
    final bool? isBold;
    final bool? isCapitalLetter;
    final bool? isItalic;
    final List<SubCategoryElement> subCategory;

    RestApi copyWith({
        int? id,
        String? chapter,
        bool? isBold,
        bool? isCapitalLetter,
        bool? isItalic,
        List<SubCategoryElement>? subCategory,
    }) {
        return RestApi(
            id: id ?? this.id,
            chapter: chapter ?? this.chapter,
            isBold: isBold ?? this.isBold,
            isCapitalLetter: isCapitalLetter ?? this.isCapitalLetter,
            isItalic: isItalic ?? this.isItalic,
            subCategory: subCategory ?? this.subCategory,
        );
    }

    factory RestApi.fromJson(Map<String, dynamic> json){ 
        return RestApi(
            id: json["id"],
            chapter: json["chapter"],
            isBold: json["is_bold"],
            isCapitalLetter: json["is_capital_letter"],
            isItalic: json["is_italic"],
            subCategory: json["sub_category"] == null ? [] : List<SubCategoryElement>.from(json["sub_category"]!.map((x) => SubCategoryElement.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "chapter": chapter,
        "is_bold": isBold,
        "is_capital_letter": isCapitalLetter,
        "is_italic": isItalic,
        "sub_category": subCategory.map((x) => x.toJson()).toList(),
    };

    @override
    String toString(){
        return "$id, $chapter, $isBold, $isCapitalLetter, $isItalic, $subCategory, ";
    }
}

class Content {
    Content({
        required this.id,
        required this.title,
        required this.subTitle,
        required this.number,
        required this.body,
        required this.isBold,
        required this.isCenter,
        required this.isList,
        required this.isParagraph,
        required this.isNumber,
        required this.isItalic,
        required this.isTable,
        required this.isCapitalLetter,
        required this.isAnotherContent,
        required this.subCategory,
        required this.listContents,
        required this.listTableHeader,
        required this.listSubContent,
    });

    final int? id;
    final String? title;
    final String? subTitle;
    final dynamic number;
    final String? body;
    final bool? isBold;
    final bool? isCenter;
    final bool? isList;
    final bool? isParagraph;
    final bool? isNumber;
    final bool? isItalic;
    final bool? isTable;
    final bool? isCapitalLetter;
    final bool? isAnotherContent;
    final ContentSubCategory? subCategory;
    final List<ListContent> listContents;
    final List<ListContent> listTableHeader;
    final List<ListContent> listSubContent;

    Content copyWith({
        int? id,
        String? title,
        String? subTitle,
        dynamic? number,
        String? body,
        bool? isBold,
        bool? isCenter,
        bool? isList,
        bool? isParagraph,
        bool? isNumber,
        bool? isItalic,
        bool? isTable,
        bool? isCapitalLetter,
        bool? isAnotherContent,
        ContentSubCategory? subCategory,
        List<ListContent>? listContents,
        List<ListContent>? listTableHeader,
        List<ListContent>? listSubContent,
    }) {
        return Content(
            id: id ?? this.id,
            title: title ?? this.title,
            subTitle: subTitle ?? this.subTitle,
            number: number ?? this.number,
            body: body ?? this.body,
            isBold: isBold ?? this.isBold,
            isCenter: isCenter ?? this.isCenter,
            isList: isList ?? this.isList,
            isParagraph: isParagraph ?? this.isParagraph,
            isNumber: isNumber ?? this.isNumber,
            isItalic: isItalic ?? this.isItalic,
            isTable: isTable ?? this.isTable,
            isCapitalLetter: isCapitalLetter ?? this.isCapitalLetter,
            isAnotherContent: isAnotherContent ?? this.isAnotherContent,
            subCategory: subCategory ?? this.subCategory,
            listContents: listContents ?? this.listContents,
            listTableHeader: listTableHeader ?? this.listTableHeader,
            listSubContent: listSubContent ?? this.listSubContent,
        );
    }

    factory Content.fromJson(Map<String, dynamic> json){ 
        return Content(
            id: json["id"],
            title: json["title"],
            subTitle: json["sub_title"],
            number: json["number"],
            body: json["body"],
            isBold: json["is_bold"],
            isCenter: json["is_center"],
            isList: json["is_list"],
            isParagraph: json["is_paragraph"],
            isNumber: json["is_number"],
            isItalic: json["is_italic"],
            isTable: json["is_table"],
            isCapitalLetter: json["is_capital_letter"],
            isAnotherContent: json["is_another_content"],
            subCategory: json["sub_category"] == null ? null : ContentSubCategory.fromJson(json["sub_category"]),
            listContents: json["list_contents"] == null ? [] : List<ListContent>.from(json["list_contents"]!.map((x) => ListContent.fromJson(x))),
            listTableHeader: json["list_table_header"] == null ? [] : List<ListContent>.from(json["list_table_header"]!.map((x) => ListContent.fromJson(x))),
            listSubContent: json["list_sub_content"] == null ? [] : List<ListContent>.from(json["list_sub_content"]!.map((x) => ListContent.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "sub_title": subTitle,
        "number": number,
        "body": body,
        "is_bold": isBold,
        "is_center": isCenter,
        "is_list": isList,
        "is_paragraph": isParagraph,
        "is_number": isNumber,
        "is_italic": isItalic,
        "is_table": isTable,
        "is_capital_letter": isCapitalLetter,
        "is_another_content": isAnotherContent,
        "sub_category": subCategory?.toJson(),
        "list_contents": listContents.map((x) => x.toJson()).toList(),
        "list_table_header": listTableHeader.map((x) => x.toJson()).toList(),
        "list_sub_content": listSubContent.map((x) => x.toJson()).toList(),
    };

    @override
    String toString(){
        return "$id, $title, $subTitle, $number, $body, $isBold, $isCenter, $isList, $isParagraph, $isNumber, $isItalic, $isTable, $isCapitalLetter, $isAnotherContent, $subCategory, $listContents, $listTableHeader, $listSubContent, ";
    }
}

class ListContent {
    ListContent({
        required this.id,
        required this.name,
        required this.number,
        required this.isBold,
        required this.isItalic,
        required this.isCapitalLetter,
        required this.isBorder,
        required this.isCenter,
        required this.content,
        required this.body,
        required this.isNumber,
        required this.tableBody,
        required this.header,
    });

    final int? id;
    final String? name;
    final String? number;
    final bool? isBold;
    final bool? isItalic;
    final bool? isCapitalLetter;
    final bool? isBorder;
    final bool? isCenter;
    final int? content;
    final String? body;
    final bool? isNumber;
    final List<ListContent> tableBody;
    final int? header;

    ListContent copyWith({
        int? id,
        String? name,
        String? number,
        bool? isBold,
        bool? isItalic,
        bool? isCapitalLetter,
        bool? isBorder,
        bool? isCenter,
        int? content,
        String? body,
        bool? isNumber,
        List<ListContent>? tableBody,
        int? header,
    }) {
        return ListContent(
            id: id ?? this.id,
            name: name ?? this.name,
            number: number ?? this.number,
            isBold: isBold ?? this.isBold,
            isItalic: isItalic ?? this.isItalic,
            isCapitalLetter: isCapitalLetter ?? this.isCapitalLetter,
            isBorder: isBorder ?? this.isBorder,
            isCenter: isCenter ?? this.isCenter,
            content: content ?? this.content,
            body: body ?? this.body,
            isNumber: isNumber ?? this.isNumber,
            tableBody: tableBody ?? this.tableBody,
            header: header ?? this.header,
        );
    }

    factory ListContent.fromJson(Map<String, dynamic> json){ 
        return ListContent(
            id: json["id"],
            name: json["name"],
            number: json["number"],
            isBold: json["is_bold"],
            isItalic: json["is_italic"],
            isCapitalLetter: json["is_capital_letter"],
            isBorder: json["is_border"],
            isCenter: json["is_center"],
            content: json["content"],
            body: json["body"],
            isNumber: json["is_number"],
            tableBody: json["table_body"] == null ? [] : List<ListContent>.from(json["table_body"]!.map((x) => ListContent.fromJson(x))),
            header: json["header"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "number": number,
        "is_bold": isBold,
        "is_italic": isItalic,
        "is_capital_letter": isCapitalLetter,
        "is_border": isBorder,
        "is_center": isCenter,
        "content": content,
        "body": body,
        "is_number": isNumber,
        "table_body": tableBody.map((x) => x.toJson()).toList(),
        "header": header,
    };

    @override
    String toString(){
        return "$id, $name, $number, $isBold, $isItalic, $isCapitalLetter, $isBorder, $isCenter, $content, $body, $isNumber, $tableBody, $header, ";
    }
}

class ContentSubCategory {
    ContentSubCategory({
        required this.id,
        required this.name,
        required this.isBold,
        required this.isCapitalLetter,
        required this.isItalic,
        required this.category,
    });

    final int? id;
    final String? name;
    final bool? isBold;
    final bool? isCapitalLetter;
    final bool? isItalic;
    final int? category;

    ContentSubCategory copyWith({
        int? id,
        String? name,
        bool? isBold,
        bool? isCapitalLetter,
        bool? isItalic,
        int? category,
    }) {
        return ContentSubCategory(
            id: id ?? this.id,
            name: name ?? this.name,
            isBold: isBold ?? this.isBold,
            isCapitalLetter: isCapitalLetter ?? this.isCapitalLetter,
            isItalic: isItalic ?? this.isItalic,
            category: category ?? this.category,
        );
    }

    factory ContentSubCategory.fromJson(Map<String, dynamic> json){ 
        return ContentSubCategory(
            id: json["id"],
            name: json["name"],
            isBold: json["is_bold"],
            isCapitalLetter: json["is_capital_letter"],
            isItalic: json["is_italic"],
            category: json["category"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "is_bold": isBold,
        "is_capital_letter": isCapitalLetter,
        "is_italic": isItalic,
        "category": category,
    };

    @override
    String toString(){
        return "$id, $name, $isBold, $isCapitalLetter, $isItalic, $category, ";
    }
}
