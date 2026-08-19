.class public Lcom/google/android/gms/internal/ads/zzgxp;
.super Lcom/google/android/gms/internal/ads/zzgvv;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgxv<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgxp<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzgvv<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/ads/zzgxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzgxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzcd()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zza()Lcom/google/android/gms/internal/ads/zzgxv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbj()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzq;->zza()Lcom/google/android/gms/internal/ads/zzgzq;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzz;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzz;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbh()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzaC()Lcom/google/android/gms/internal/ads/zzgvv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbh()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zzaD(Lcom/google/android/gms/internal/ads/zzgvw;)Lcom/google/android/gms/internal/ads/zzgvv;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbi(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public bridge synthetic zzaK(Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgvv;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbk(Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public bridge synthetic zzaN([BII)Lcom/google/android/gms/internal/ads/zzgvv;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbl([BII)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public bridge synthetic zzaO([BIILcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgvv;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbm([BIILcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public bridge synthetic zzaP()Lcom/google/android/gms/internal/ads/zzgzf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbh()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzaW(Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgzf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbk(Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public bridge synthetic zzaZ([BII)Lcom/google/android/gms/internal/ads/zzgzf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbl([BII)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public bridge synthetic zzba([BIILcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgzf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbm([BIILcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public final zzbg()Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzcd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzbh()Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbp()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbb()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbo()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    return-object v0
.end method

.method protected zzbi(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbj(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public zzbj(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbp()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public zzbk(Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgwt;",
            "Lcom/google/android/gms/internal/ads/zzgxf;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzq;->zza()Lcom/google/android/gms/internal/ads/zzgzq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwu;->zzq(Lcom/google/android/gms/internal/ads/zzgwt;)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzz;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgzt;Lcom/google/android/gms/internal/ads/zzgxf;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 7
    :cond_0
    throw p1
.end method

.method public zzbl([BII)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzgxf;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzgzq;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxf;->zza:Lcom/google/android/gms/internal/ads/zzgxf;

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbm([BIILcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public zzbm([BIILcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzgxf;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzq;->zza()Lcom/google/android/gms/internal/ads/zzgzq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    add-int v6, p2, p3

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgwb;

    .line 4
    invoke-direct {v7, p4}, Lcom/google/android/gms/internal/ads/zzgwb;-><init>(Lcom/google/android/gms/internal/ads/zzgxf;)V

    move-object v4, p1

    move v5, p2

    .line 5
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgzz;->zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgwb;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 6
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p2, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1

    :catch_2
    move-exception p1

    .line 9
    throw p1
.end method

.method public final zzbn()Lcom/google/android/gms/internal/ads/zzgxv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbo()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbw()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbb(Lcom/google/android/gms/internal/ads/zzgzg;)Lcom/google/android/gms/internal/ads/zzhak;

    move-result-object v0

    throw v0
.end method

.method public zzbo()Lcom/google/android/gms/internal/ads/zzgxv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzcd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    return-object v0
.end method

.method public zzbp()Lcom/google/android/gms/internal/ads/zzgxv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxv;

    return-object v0
.end method

.method public bridge synthetic zzbq()Lcom/google/android/gms/internal/ads/zzgzf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbg()Lcom/google/android/gms/internal/ads/zzgxp;

    return-object p0
.end method

.method public bridge synthetic zzbr()Lcom/google/android/gms/internal/ads/zzgzg;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzbs()Lcom/google/android/gms/internal/ads/zzgzg;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbo()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzbt()Lcom/google/android/gms/internal/ads/zzgzg;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbp()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    return-object v0
.end method

.method protected final zzbu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzcd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbv()V

    :cond_0
    return-void
.end method

.method protected zzbv()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zza()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    return-void
.end method

.method public final zzbw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzcb(Lcom/google/android/gms/internal/ads/zzgxv;Z)Z

    move-result v0

    return v0
.end method
