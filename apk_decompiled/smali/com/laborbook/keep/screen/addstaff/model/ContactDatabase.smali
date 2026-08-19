.class public abstract Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;
.super Landroidx/room/RoomDatabase;
.source "ContactDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "contactDao",
        "Lcom/laborbook/keep/screen/addstaff/model/ContactDao;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase$Companion;

.field private static volatile INSTANCE:Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;->Companion:Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;
    .locals 1

    .line 8
    sget-object v0, Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;->INSTANCE:Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;->INSTANCE:Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;

    return-void
.end method


# virtual methods
.method public abstract contactDao()Lcom/laborbook/keep/screen/addstaff/model/ContactDao;
.end method
