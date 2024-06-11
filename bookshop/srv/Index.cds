using from './catlog_services';

annotate CatlogService.Books with @(
    UI: {
        Identification: [ {Value: title} ],
        SelectionFields: [title],
        LineItem: [
            {Value: ID},
            {Value: title },
            { Value: author.name },
            { Value: author_ID },
            {Value: stock}
        ],
        HeaderInfo: {
            TypeName: '{i18n>Book}',
            TypeNamePlural: '{i18n>Books}',
            Title: { Value: title },
            Description: {Value: author.name}
        }
    }
);

annotate CatlogService.Books with{
    ID @title: '{i18n>ID}' @UI.HiddenFilter;
    title @title: '{i18n>Title}';
    author @title: '{i18n>AuthorID}';
    stock @title: '{i18n>Stock}';
}

annotate CatlogService.Authors with{
    ID @title: '{i18n>ID}' @UI.HiddenFilter;
    name @title: '{i18n>AuthorName}';
}