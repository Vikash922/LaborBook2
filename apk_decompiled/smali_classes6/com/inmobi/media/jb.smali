.class public final enum Lcom/inmobi/media/jb;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/inmobi/media/jb;

.field public static final enum b:Lcom/inmobi/media/jb;

.field public static final synthetic c:[Lcom/inmobi/media/jb;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/inmobi/media/jb;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/jb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/media/jb;->a:Lcom/inmobi/media/jb;

    new-instance v1, Lcom/inmobi/media/jb;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/jb;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/inmobi/media/jb;->b:Lcom/inmobi/media/jb;

    new-instance v2, Lcom/inmobi/media/jb;

    const-string v3, "PUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/jb;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/inmobi/media/jb;

    const-string v4, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/inmobi/media/jb;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/inmobi/media/jb;

    const-string v5, "PATCH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/inmobi/media/jb;-><init>(Ljava/lang/String;I)V

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/inmobi/media/jb;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/inmobi/media/jb;->c:[Lcom/inmobi/media/jb;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/media/jb;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/media/jb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/jb;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/media/jb;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/jb;->c:[Lcom/inmobi/media/jb;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/media/jb;

    return-object v0
.end method
