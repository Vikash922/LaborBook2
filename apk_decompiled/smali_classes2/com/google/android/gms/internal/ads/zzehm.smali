.class public final Lcom/google/android/gms/internal/ads/zzehm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzech;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzecl;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfft;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgcd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzech;Lcom/google/android/gms/internal/ads/zzecl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzc:Lcom/google/android/gms/internal/ads/zzfft;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzd:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzb:Lcom/google/android/gms/internal/ads/zzecl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Lcom/google/android/gms/internal/ads/zzech;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzb:Lcom/google/android/gms/internal/ads/zzecl;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzecl;->zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzb:Lcom/google/android/gms/internal/ads/zzecl;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzecl;->zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V

    return-void
.end method

.method static final zze(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zza:Lcom/google/android/gms/internal/ads/zzech;

    .line 2
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzech;->zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzeci;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzefc;

    const-string p2, "Unable to instantiate mediation adapter class."

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefc;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzp;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbzp;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzehl;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzehl;-><init>(Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzbzp;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    .line 6
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzcwm;->zza(Lcom/google/android/gms/internal/ads/zzcwl;)V

    .line 7
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzM:Z

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const-string v2, "render_test_ad_label"

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzc:Lcom/google/android/gms/internal/ads/zzfft;

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/ads/zzffn;->zzq:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzehj;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzehj;-><init>(Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzehm;->zzd:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 14
    invoke-static {v4, v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzffd;->zzd(Lcom/google/android/gms/internal/ads/zzfey;Lcom/google/android/gms/internal/ads/zzgcd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzffn;->zzr:Lcom/google/android/gms/internal/ads/zzffn;

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzffj;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzffj;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzffn;->zzs:Lcom/google/android/gms/internal/ads/zzffn;

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzffj;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzehk;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzehk;-><init>(Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzffj;->zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzt:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
