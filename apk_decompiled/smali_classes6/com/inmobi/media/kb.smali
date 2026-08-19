.class public final enum Lcom/inmobi/media/kb;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/inmobi/media/kb;

.field public static final synthetic b:[Lcom/inmobi/media/kb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/inmobi/media/kb;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/kb;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/inmobi/media/kb;

    const-string v2, "LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/kb;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/inmobi/media/kb;->a:Lcom/inmobi/media/kb;

    .line 2
    filled-new-array {v0, v1}, [Lcom/inmobi/media/kb;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/inmobi/media/kb;->b:[Lcom/inmobi/media/kb;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/media/kb;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/media/kb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/kb;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/media/kb;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/kb;->b:[Lcom/inmobi/media/kb;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/media/kb;

    return-object v0
.end method
