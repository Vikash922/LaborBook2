.class Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "ContactDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$1;->this$0:Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 47
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 48
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 49
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;->getMobileNumber()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 37
    check-cast p2, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/laborbook/keep/screen/addstaff/model/ContactItem;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "INSERT OR ABORT INTO `contacts` (`id`,`name`,`mobileNumber`) VALUES (nullif(?, 0),?,?)"

    return-object v0
.end method
