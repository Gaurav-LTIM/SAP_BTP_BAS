using my.bookshop as my from '../db/Schema';

service CatlogService @(impl:'srv/cat_services.js')
{
    @Capabilities: {
    InsertRestrictions.Insertable: false,
    DeleteRestrictions.Deletable: true}
    entity Books as projection on my.Books;
    
    @readonly entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders;
}