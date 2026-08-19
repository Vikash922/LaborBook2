.class final Lcom/google/android/gms/internal/ads/zzdmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfau;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfax;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzclx;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdmt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdmt;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzclx;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzc:Lcom/google/android/gms/internal/ads/zzclx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzd:Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzW(Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object p1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzkj:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzc:Lcom/google/android/gms/internal/ads/zzclx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmn;->zzd:Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzd(Lcom/google/android/gms/internal/ads/zzdmt;)Lcom/google/android/gms/internal/ads/zzeat;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zze(Lcom/google/android/gms/internal/ads/zzdmt;)Lcom/google/android/gms/internal/ads/zzfio;

    move-result-object v4

    .line 6
    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcgd;->zzK(Lcom/google/android/gms/internal/ads/zzclx;Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzfio;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzd(Lcom/google/android/gms/internal/ads/zzdmt;)Lcom/google/android/gms/internal/ads/zzeat;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdmt;->zzc(Lcom/google/android/gms/internal/ads/zzdmt;)Lcom/google/android/gms/internal/ads/zzdre;

    move-result-object v2

    .line 7
    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgd;->zzM(Lcom/google/android/gms/internal/ads/zzclx;Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzdre;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzna:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcgd;->zzN(Lcom/google/android/gms/internal/ads/zzfau;)V

    :cond_1
    return-void
.end method
