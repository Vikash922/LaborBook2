.class public final Lcom/google/android/gms/internal/ads/zzgib;
.super Lcom/google/android/gms/internal/ads/zzgem;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgig;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgvs;

.field private final zzd:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgig;Lcom/google/android/gms/internal/ads/zzgvt;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;)V
    .locals 0
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgem;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgib;->zza:Lcom/google/android/gms/internal/ads/zzgig;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzc:Lcom/google/android/gms/internal/ads/zzgvs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzgig;Lcom/google/android/gms/internal/ads/zzgvt;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgib;
    .locals 3
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgig;->zzc()Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgif;->zzb:Lcom/google/android/gms/internal/ads/zzgif;

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgig;->zzc()Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "For given Variant "

    .line 8
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " the value of idRequirement must be non-null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgig;->zzc()Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object v0

    if-ne v0, v1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_6

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgib;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgig;->zzc()Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object v2

    if-ne v2, v1, :cond_4

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgmj;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgig;->zzc()Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgif;->zza:Lcom/google/android/gms/internal/ads/zzgif;

    if-ne v1, v2, :cond_5

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmj;->zzb(I)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v1

    .line 3
    :goto_2
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgib;-><init>(Lcom/google/android/gms/internal/ads/zzgig;Lcom/google/android/gms/internal/ads/zzgvt;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;)V

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgig;->zzc()Lcom/google/android/gms/internal/ads/zzgif;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unknown Variant: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "XAesGcmKey key must be constructed with key of length 32 bytes, not "

    .line 2
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgib;->zza:Lcom/google/android/gms/internal/ads/zzgig;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzc:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgib;->zza:Lcom/google/android/gms/internal/ads/zzgig;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzd:Ljava/lang/Integer;

    return-object v0
.end method
