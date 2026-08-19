.class public abstract Lcom/google/android/gms/internal/ads/zzgvw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgvw<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgvv<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgzg;"
    }
.end annotation


# instance fields
.field protected zzq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvw;->zzq:I

    return-void
.end method

.method protected static zzaQ(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvv;->zzbd(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method protected static zzaR(Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzp()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private zzdF(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Serializing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method zzaL()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method zzaM(Lcom/google/android/gms/internal/ads/zzgzz;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaL()I

    move-result p1

    return p1
.end method

.method public zzaN()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaY()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    .line 2
    new-array v1, v0, [B

    .line 3
    sget v2, Lcom/google/android/gms/internal/ads/zzgxa;->zzf:I

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgww;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgww;-><init>([BII)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzgvw;->zzcY(Lcom/google/android/gms/internal/ads/zzgxa;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxa;->zzF()V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwk;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 8
    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzgvw;->zzdF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzaO()Lcom/google/android/gms/internal/ads/zzgzl;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mutableCopy() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method zzaP()Lcom/google/android/gms/internal/ads/zzhak;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhak;-><init>(Lcom/google/android/gms/internal/ads/zzgzg;)V

    return-object v0
.end method

.method zzaS(I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public zzaT(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaY()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxa;->zzD(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgxa;->zzB(I)I

    move-result v1

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgxa;->zzu(I)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzgvw;->zzcY(Lcom/google/android/gms/internal/ads/zzgxa;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxa;->zzK()V

    return-void
.end method

.method public zzaU(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaY()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxa;->zzB(I)I

    move-result v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzcY(Lcom/google/android/gms/internal/ads/zzgxa;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxa;->zzK()V

    return-void
.end method

.method public zzaV()[B
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaY()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzgxa;->zzf:I

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgww;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgww;-><init>([BII)V

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzgvw;->zzcY(Lcom/google/android/gms/internal/ads/zzgxa;)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxa;->zzF()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 6
    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzgvw;->zzdF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
