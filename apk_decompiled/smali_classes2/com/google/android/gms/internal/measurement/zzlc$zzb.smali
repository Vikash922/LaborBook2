.class public Lcom/google/android/gms/internal/measurement/zzlc$zzb;
.super Lcom/google/android/gms/internal/measurement/zzjh;
.source "com.google.android.gms:play-services-measurement-base@@22.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzlc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzlc$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzjh<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzlc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzlc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzlc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzlc;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlc;->zzco()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlc;->zzce()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmz;->zza()Lcom/google/android/gms/internal/measurement/zzmz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzmz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zznd;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb([BIILcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzlc$zzb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzlk;
        }
    .end annotation

    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlc;->zzco()Z

    move-result p2

    if-nez p2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzal()V

    .line 33
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmz;->zza()Lcom/google/android/gms/internal/measurement/zzmz;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzmz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzjn;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/zzjn;-><init>(Lcom/google/android/gms/internal/measurement/zzkp;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zznd;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzjn;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzlk; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 37
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 35
    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzkg;Lcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzlc$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzkg;",
            "Lcom/google/android/gms/internal/measurement/zzkp;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzco()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzal()V

    .line 21
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmz;->zza()Lcom/google/android/gms/internal/measurement/zzmz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzkg;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object p1

    .line 23
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zznd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzna;Lcom/google/android/gms/internal/measurement/zzkp;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 28
    :cond_1
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzlc;

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    .line 63
    sget v1, Lcom/google/android/gms/internal/measurement/zzlc$zze;->zze:I

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzaj()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzkg;Lcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjh;->zzb(Lcom/google/android/gms/internal/measurement/zzkg;Lcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzmk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    return-object p1
.end method

.method public final synthetic zza([BII)Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzlk;
        }
    .end annotation

    const/4 p2, 0x0

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkp;->zza:Lcom/google/android/gms/internal/measurement/zzkp;

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzb([BIILcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzlk;
        }
    .end annotation

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzb([BIILcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzlc;)Lcom/google/android/gms/internal/measurement/zzlc$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzlc;

    .line 11
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzco()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzal()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic zzaf()Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    return-object v0
.end method

.method public final zzag()Lcom/google/android/gms/internal/measurement/zzlc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzaj()Lcom/google/android/gms/internal/measurement/zzml;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlc;

    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 46
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zznu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zznu;-><init>(Lcom/google/android/gms/internal/measurement/zzml;)V

    .line 47
    throw v1
.end method

.method public zzah()Lcom/google/android/gms/internal/measurement/zzlc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzco()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcl()V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    return-object v0
.end method

.method public synthetic zzai()Lcom/google/android/gms/internal/measurement/zzml;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzag()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzaj()Lcom/google/android/gms/internal/measurement/zzml;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzah()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v0

    return-object v0
.end method

.method protected final zzak()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzco()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzal()V

    :cond_0
    return-void
.end method

.method protected zzal()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzce()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/measurement/zzkg;Lcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzmk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzc(Lcom/google/android/gms/internal/measurement/zzkg;Lcom/google/android/gms/internal/measurement/zzkp;)Lcom/google/android/gms/internal/measurement/zzlc$zzb;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzck()Lcom/google/android/gms/internal/measurement/zzml;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzlc;

    return-object v0
.end method

.method public final zzcn()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlc$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlc;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Z)Z

    move-result v0

    return v0
.end method
