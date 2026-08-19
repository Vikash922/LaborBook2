.class public final enum Lcom/inmobi/media/V9;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/inmobi/media/V9;

.field public static final enum c:Lcom/inmobi/media/V9;

.field public static final synthetic d:[Lcom/inmobi/media/V9;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/inmobi/media/V9;

    const/4 v1, 0x0

    const-string v2, "HIGHEST"

    invoke-direct {v0, v1, v1, v2}, Lcom/inmobi/media/V9;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/media/V9;->b:Lcom/inmobi/media/V9;

    new-instance v1, Lcom/inmobi/media/V9;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v1, v2, v2, v3}, Lcom/inmobi/media/V9;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/inmobi/media/V9;

    const/4 v3, 0x2

    const-string v4, "MEDIUM"

    invoke-direct {v2, v3, v3, v4}, Lcom/inmobi/media/V9;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/inmobi/media/V9;->c:Lcom/inmobi/media/V9;

    new-instance v3, Lcom/inmobi/media/V9;

    const/4 v4, 0x3

    const-string v5, "LOW"

    invoke-direct {v3, v4, v4, v5}, Lcom/inmobi/media/V9;-><init>(IILjava/lang/String;)V

    new-instance v4, Lcom/inmobi/media/V9;

    const/4 v5, 0x4

    const-string v6, "LOWEST"

    invoke-direct {v4, v5, v5, v6}, Lcom/inmobi/media/V9;-><init>(IILjava/lang/String;)V

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/inmobi/media/V9;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/inmobi/media/V9;->d:[Lcom/inmobi/media/V9;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/inmobi/media/V9;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/media/V9;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/media/V9;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/V9;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/media/V9;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/V9;->d:[Lcom/inmobi/media/V9;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/media/V9;

    return-object v0
.end method
