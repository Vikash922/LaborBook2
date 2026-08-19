.class final Lcom/google/android/gms/internal/ads/zzeef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfau;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbqx;

.field private final zzc:Lcom/google/android/gms/ads/AdFormat;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcvu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzbqx;Lcom/google/android/gms/ads/AdFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzd:Lcom/google/android/gms/internal/ads/zzcvu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Lcom/google/android/gms/internal/ads/zzbqx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/ads/AdFormat;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeef;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdfl;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object p1, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzc:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdFormat;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p1, p3, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p3, 0x5

    if-ne p1, p3, :cond_4

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Lcom/google/android/gms/internal/ads/zzbqx;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx;->zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Lcom/google/android/gms/internal/ads/zzbqx;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzb:Lcom/google/android/gms/internal/ads/zzbqx;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqx;->zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzd:Lcom/google/android/gms/internal/ads/zzcvu;

    if-nez p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzbI:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeef;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzY:I

    if-ne p2, v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvu;->zza()V

    :cond_3
    :goto_1
    return-void

    .line 1
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfl;

    const-string p2, "Adapter failed to show."

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfl;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcvu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeef;->zzd:Lcom/google/android/gms/internal/ads/zzcvu;

    return-void
.end method
