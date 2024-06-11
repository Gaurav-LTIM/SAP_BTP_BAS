//using from '@sap/cds-common-content';

using shop from '../db/schema';

service bookshop{

    entity Books as projection on shop.Books;
    entity Authors as projection on shop.Authors;
    entity Orders as projection on shop.Orders;
}
