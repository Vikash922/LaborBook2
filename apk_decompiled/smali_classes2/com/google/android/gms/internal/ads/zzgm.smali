.class public final Lcom/google/android/gms/internal/ads/zzgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgy;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhe;

.field private zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:I

.field private zzf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgm;->zza:Lcom/google/android/gms/internal/ads/zzgy;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgm;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzge;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgm;->zzg()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzgm;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzf:Z

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzgm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzd:I

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzgm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgm;->zze:I

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzhe;)Lcom/google/android/gms/internal/ads/zzgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzb:Lcom/google/android/gms/internal/ads/zzhe;

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgr;
    .locals 11

    .line 1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgm;->zza:Lcom/google/android/gms/internal/ads/zzgy;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzc:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgm;->zze:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzf:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(Ljava/lang/String;IIZZLcom/google/android/gms/internal/ads/zzgy;Lcom/google/android/gms/internal/ads/zzftx;ZLcom/google/android/gms/internal/ads/zzgq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzb:Lcom/google/android/gms/internal/ads/zzhe;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzfx;->zzf(Lcom/google/android/gms/internal/ads/zzhe;)V

    :cond_0
    return-object v10
.end method
