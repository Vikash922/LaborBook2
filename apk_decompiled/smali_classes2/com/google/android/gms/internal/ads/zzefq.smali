.class public final Lcom/google/android/gms/internal/ads/zzefq;
.super Lcom/google/android/gms/internal/ads/zzefj;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcuj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdaw;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzefu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfbh;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeck;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgl;Lcom/google/android/gms/internal/ads/zzcuj;Lcom/google/android/gms/internal/ads/zzdaw;Lcom/google/android/gms/internal/ads/zzfbh;Lcom/google/android/gms/internal/ads/zzefu;Lcom/google/android/gms/internal/ads/zzeck;)V
    .locals 0
    .param p4    # Lcom/google/android/gms/internal/ads/zzfbh;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefq;->zza:Lcom/google/android/gms/internal/ads/zzcgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefq;->zzb:Lcom/google/android/gms/internal/ads/zzcuj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefq;->zzc:Lcom/google/android/gms/internal/ads/zzdaw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefq;->zze:Lcom/google/android/gms/internal/ads/zzfbh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzefq;->zzd:Lcom/google/android/gms/internal/ads/zzefu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzefq;->zzf:Lcom/google/android/gms/internal/ads/zzeck;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfbp;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefq;->zzb:Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzk(Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzcuj;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcuj;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcuj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcuc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzefq;->zzd:Lcom/google/android/gms/internal/ads/zzefu;

    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzcuc;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzefu;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzh(Lcom/google/android/gms/internal/ads/zzcuc;)Lcom/google/android/gms/internal/ads/zzcuj;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzdN:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefq;->zze:Lcom/google/android/gms/internal/ads/zzfbh;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzj(Lcom/google/android/gms/internal/ads/zzfbh;)Lcom/google/android/gms/internal/ads/zzcuj;

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzdO:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefq;->zzf:Lcom/google/android/gms/internal/ads/zzeck;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zze(Lcom/google/android/gms/internal/ads/zzeck;)Lcom/google/android/gms/internal/ads/zzcuj;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefq;->zza:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzh()Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuj;->zzl()Lcom/google/android/gms/internal/ads/zzcul;

    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnm;->zzd(Lcom/google/android/gms/internal/ads/zzcul;)Lcom/google/android/gms/internal/ads/zzdnm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzefq;->zzc:Lcom/google/android/gms/internal/ads/zzdaw;

    .line 12
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdnm;->zzc(Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzdnm;

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdnm;->zze()Lcom/google/android/gms/internal/ads/zzdnn;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnn;->zzb()Lcom/google/android/gms/internal/ads/zzcrk;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrk;->zzi()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrk;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
