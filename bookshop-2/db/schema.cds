 using {cuid} from '@sap/cds/common';

namespace shop;

//-------- Automatic Association ------------
    entity Books{             // entity Books: cuid, managed{ }
        key ID: Integer;      //    automatically filled when added cuid
        title: String; 
        author: Association to Authors;
    }

//-------- Manual Association ------------
    //     entity Books{             // entity Books: cuid, managed{ }
    //     key ID: Integer;      //    automatically filled when added cuid
    //     title: String; 
    //     author_foreign_key : type of Authors: ID ;
    //     author: Association to Authors on author.ID = author_foreign_key;
    // }

    entity Authors{           // entity Books: cuid, managed{ }
        key ID: Integer;      // automatically filled when added cuid
        name: String;
        books: Association to many Books on books.author = $self;
    }

 entity Orders: cuid{
  comment: String;
  Items : Composition of many OrderItems on Items.parent = $self;
}

@cds.autoexpose     // with this adding 'EXPLICIT' annotation now eevn the orderitems will be displayed on the main services list
entity OrderItems { // to be accessed through Orders only
  key parent : Association to Orders;
  key pos    : Integer;
  quantity   : Integer;
}   