.class public final Lcom/google/android/gms/internal/ads/zzglm;
.super Lcom/google/android/gms/internal/ads/zzgdh;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgnl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgdz;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdh;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzglm;->zze(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgdz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzglm;->zza:Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgtt;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvs;->zzb([B)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgtt;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzf()Ljava/lang/Integer;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgmj;->zzb(I)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzc:Lcom/google/android/gms/internal/ads/zzgtt;

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgtt;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgtt;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Unknown output prefix type"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgnl;->zzf()Ljava/lang/Integer;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgmj;->zza(I)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p1

    .line 3
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzglm;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgdz;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzgdz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzglj;->zzb:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzb()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsn;->ordinal()I

    move-result p0

    aget p0, p1, p0

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglm;->zza:Lcom/google/android/gms/internal/ads/zzgnl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzglk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzc()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzglk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgtt;Lcom/google/android/gms/internal/ads/zzgll;)V

    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgnl;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ads/zzgdz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglm;->zza:Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzglm;->zze(Lcom/google/android/gms/internal/ads/zzgnl;Lcom/google/android/gms/internal/ads/zzgdz;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglm;->zzb:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglm;->zza:Lcom/google/android/gms/internal/ads/zzgnl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgnl;->zzf()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
