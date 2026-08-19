.class public final Lcom/google/android/gms/internal/ads/zzdnf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbka;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcwj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbvw;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzfau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzcwj;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzl:Lcom/google/android/gms/internal/ads/zzbvw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzb:Lcom/google/android/gms/internal/ads/zzbvw;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzc:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzk:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbvw;)V
    .locals 3
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzb:Lcom/google/android/gms/internal/ads/zzbvw;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbvw;->zzb:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 2
    const-string v0, ""

    .line 1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvh;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbvh;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzcwj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcwj;->zzd(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwj;->zze()V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwj;->zzf()V

    return-void
.end method
