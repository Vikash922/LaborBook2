.class public final enum Lcom/inmobi/media/B1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final b:Lcom/inmobi/media/A1;

.field public static final c:Landroid/util/SparseArray;

.field public static final enum d:Lcom/inmobi/media/B1;

.field public static final enum e:Lcom/inmobi/media/B1;

.field public static final synthetic f:[Lcom/inmobi/media/B1;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/inmobi/media/B1;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/inmobi/media/B1;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/media/B1;->d:Lcom/inmobi/media/B1;

    .line 2
    new-instance v1, Lcom/inmobi/media/B1;

    const/4 v3, 0x1

    const-string v4, "PLAYING"

    invoke-direct {v1, v3, v3, v4}, Lcom/inmobi/media/B1;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/inmobi/media/B1;->e:Lcom/inmobi/media/B1;

    .line 3
    new-instance v3, Lcom/inmobi/media/B1;

    const/4 v4, 0x2

    const-string v5, "PAUSED"

    invoke-direct {v3, v4, v4, v5}, Lcom/inmobi/media/B1;-><init>(IILjava/lang/String;)V

    .line 4
    new-instance v4, Lcom/inmobi/media/B1;

    const/4 v5, 0x3

    const-string v6, "COMPLETED"

    invoke-direct {v4, v5, v5, v6}, Lcom/inmobi/media/B1;-><init>(IILjava/lang/String;)V

    .line 5
    filled-new-array {v0, v1, v3, v4}, [Lcom/inmobi/media/B1;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/inmobi/media/B1;->f:[Lcom/inmobi/media/B1;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/inmobi/media/A1;

    invoke-direct {v0}, Lcom/inmobi/media/A1;-><init>()V

    sput-object v0, Lcom/inmobi/media/B1;->b:Lcom/inmobi/media/A1;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/inmobi/media/B1;->c:Landroid/util/SparseArray;

    .line 13
    invoke-static {}, Lcom/inmobi/media/B1;->values()[Lcom/inmobi/media/B1;

    move-result-object v0

    .line 34
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 35
    sget-object v4, Lcom/inmobi/media/B1;->c:Landroid/util/SparseArray;

    iget v5, v3, Lcom/inmobi/media/B1;->a:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/inmobi/media/B1;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/media/B1;
    .locals 1

    .line 1
    const-class v0, Lcom/inmobi/media/B1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/B1;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/media/B1;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/B1;->f:[Lcom/inmobi/media/B1;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/media/B1;

    return-object v0
.end method
