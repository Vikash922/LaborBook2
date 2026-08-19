.class public final Lcom/google/android/gms/internal/ads/zzget;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgfe;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzgvt;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/ads/zzgvt;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzgvt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgeu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzgvt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzd:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgvt;)Lcom/google/android/gms/internal/ads/zzget;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgvt;)Lcom/google/android/gms/internal/ads/zzget;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzgvt;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzget;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgfe;)Lcom/google/android/gms/internal/ads/zzget;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgev;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzgvt;

    if-eqz v2, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzb()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()I

    move-result v1

    if-ne v2, v1, :cond_8

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzc()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzgvt;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfe;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzd:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfe;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzd:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzh()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfc;->zzc:Lcom/google/android/gms/internal/ads/zzgfc;

    if-ne v0, v1, :cond_4

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmj;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzh()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfc;->zzb:Lcom/google/android/gms/internal/ads/zzgfc;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzd:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmj;->zza(I)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfe;->zzh()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfc;->zza:Lcom/google/android/gms/internal/ads/zzgfc;

    if-ne v0, v1, :cond_6

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzget;->zzd:Ljava/lang/Integer;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmj;->zzb(I)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    goto :goto_2

    .line 9
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgev;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzget;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzget;->zzc:Lcom/google/android/gms/internal/ads/zzgvt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzget;->zzd:Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgev;-><init>(Lcom/google/android/gms/internal/ads/zzgfe;Lcom/google/android/gms/internal/ads/zzgvt;Lcom/google/android/gms/internal/ads/zzgvt;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzgeu;)V

    return-object v0

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzget;->zza:Lcom/google/android/gms/internal/ads/zzgfe;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfe;->zzh()Lcom/google/android/gms/internal/ads/zzgfc;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown AesCtrHmacAeadParameters.Variant: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
