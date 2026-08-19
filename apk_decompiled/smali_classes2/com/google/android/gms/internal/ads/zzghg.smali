.class public final Lcom/google/android/gms/internal/ads/zzghg;
.super Lcom/google/android/gms/internal/ads/zzgem;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzghl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvs;

.field private final zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzghl;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;)V
    .locals 0
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgem;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghg;->zza:Lcom/google/android/gms/internal/ads/zzghl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghg;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzghg;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzghl;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzghg;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->zzc()Lcom/google/android/gms/internal/ads/zzghj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghj;->zzb:Lcom/google/android/gms/internal/ads/zzghj;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmj;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->zzc()Lcom/google/android/gms/internal/ads/zzghj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghj;->zza:Lcom/google/android/gms/internal/ads/zzghj;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmj;->zzb(I)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzghg;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzghg;-><init>(Lcom/google/android/gms/internal/ads/zzghl;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;)V

    return-object v1

    .line 3
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghl;->zzc()Lcom/google/android/gms/internal/ads/zzghj;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown Variant: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghg;->zza:Lcom/google/android/gms/internal/ads/zzghl;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghg;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzghl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghg;->zza:Lcom/google/android/gms/internal/ads/zzghl;

    return-object v0
.end method

.method public final zze()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghg;->zzc:Ljava/lang/Integer;

    return-object v0
.end method
