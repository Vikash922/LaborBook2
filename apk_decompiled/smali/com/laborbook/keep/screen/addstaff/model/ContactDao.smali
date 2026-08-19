.class public interface abstract Lcom/laborbook/keep/screen/addstaff/model/ContactDao;
.super Ljava/lang/Object;
.source "ContactDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\t\"\u00020\u0004H\u00a7@\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/addstaff/model/ContactDao;",
        "",
        "getAllContacts",
        "",
        "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insertContacts",
        "",
        "contacts",
        "",
        "([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteAllContacts",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract deleteAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract insertContacts([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
