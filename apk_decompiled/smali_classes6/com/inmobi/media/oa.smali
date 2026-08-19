.class public final Lcom/inmobi/media/oa;
.super Lcom/inmobi/media/pa;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/oa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/oa;

    invoke-direct {v0}, Lcom/inmobi/media/oa;-><init>()V

    sput-object v0, Lcom/inmobi/media/oa;->a:Lcom/inmobi/media/oa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/pa;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of p1, p1, Lcom/inmobi/media/oa;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    const v0, -0x503c0260

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Success"

    return-object v0
.end method
