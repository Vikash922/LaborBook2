.class public final Lcom/google/android/gms/internal/ads/zzggq;
.super Lcom/google/android/gms/internal/ads/zzgen;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzggp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzggp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggq;->zza:Lcom/google/android/gms/internal/ads/zzggp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzggp;)Lcom/google/android/gms/internal/ads/zzggq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzggq;-><init>(Lcom/google/android/gms/internal/ads/zzggp;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzggq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzggq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzggq;->zza:Lcom/google/android/gms/internal/ads/zzggp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggq;->zza:Lcom/google/android/gms/internal/ads/zzggp;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzggq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggq;->zza:Lcom/google/android/gms/internal/ads/zzggp;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggq;->zza:Lcom/google/android/gms/internal/ads/zzggp;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChaCha20Poly1305 Parameters (variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggq;->zza:Lcom/google/android/gms/internal/ads/zzggp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzggp;->zzc:Lcom/google/android/gms/internal/ads/zzggp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzggp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggq;->zza:Lcom/google/android/gms/internal/ads/zzggp;

    return-object v0
.end method
