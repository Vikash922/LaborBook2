.class Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "StaffUserDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/laborbook/keep/model/StaffUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 38
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl$1;->this$0:Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/laborbook/keep/model/StaffUser;)V
    .locals 2
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

    .line 48
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 49
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 53
    :goto_0
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    :goto_1
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 59
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 63
    :goto_2
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getCompanyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 64
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getCompanyId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 68
    :goto_3
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getUserType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 69
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 71
    :cond_4
    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getUserType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
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

    .line 38
    check-cast p2, Lcom/laborbook/keep/model/StaffUser;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/home/dao/StaffUserDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/laborbook/keep/model/StaffUser;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "INSERT OR REPLACE INTO `staffs` (`id`,`name`,`mobile_number`,`company_id`,`user_type`) VALUES (?,?,?,?,?)"

    return-object v0
.end method
