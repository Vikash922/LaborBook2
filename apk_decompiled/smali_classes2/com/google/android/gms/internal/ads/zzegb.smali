.class public final Lcom/google/android/gms/internal/ads/zzegb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfft;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcve;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfik;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcqj;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzefu;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzeck;

.field private final zzj:Landroid/content/Context;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzefe;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdqy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/internal/ads/zzefu;Lcom/google/android/gms/internal/ads/zzcve;Lcom/google/android/gms/internal/ads/zzfik;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzcqj;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzeck;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzefe;Lcom/google/android/gms/internal/ads/zzdqy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzj:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegb;->zza:Lcom/google/android/gms/internal/ads/zzfft;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzh:Lcom/google/android/gms/internal/ads/zzefu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzb:Lcom/google/android/gms/internal/ads/zzcve;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzc:Lcom/google/android/gms/internal/ads/zzfik;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzg:Lcom/google/android/gms/internal/ads/zzcqj;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegb;->zze:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzi:Lcom/google/android/gms/internal/ads/zzeck;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzk:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzl:Lcom/google/android/gms/internal/ads/zzefe;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzm:Lcom/google/android/gms/internal/ads/zzdqy;

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzecf;Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzj:Landroid/content/Context;

    const/16 v0, 0xc

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object p4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfau;->zzE:Ljava/lang/String;

    .line 2
    invoke-interface {p4, v0}, Lcom/google/android/gms/internal/ads/zzfgc;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgc;

    .line 3
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzfgc;->zzi()Lcom/google/android/gms/internal/ads/zzfgc;

    .line 4
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzecf;->zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfau;->zzR:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-static {p3, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgbs;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzc:Lcom/google/android/gms/internal/ads/zzfik;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzh:Lcom/google/android/gms/internal/ads/zzefu;

    .line 6
    invoke-virtual {v1, p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzefu;->zzf(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfik;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzk:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 7
    invoke-static {p3, p0, p4}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    return-object p3
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzfbg;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzfD:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "No fill."

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const-string v0, "No ad config."

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfax;->zzf:I

    if-eqz v2, :cond_3

    const/16 v3, 0xc8

    const/16 v4, 0x12c

    if-lt v2, v3, :cond_1

    if-ge v2, v4, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzfC:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_1
    if-lt v2, v4, :cond_2

    const/16 v0, 0x190

    if-ge v2, v0, :cond_2

    const-string v1, "No location header to follow redirect or too many redirects."

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received error HTTP response code: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfax;->zzj:Lcom/google/android/gms/internal/ads/zzfaw;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfaw;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbg;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcq:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbf;->zzd:Lcom/google/android/gms/internal/ads/zzbuy;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzm:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcr:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzm:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzs:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegb;->zzc(Lcom/google/android/gms/internal/ads/zzfbg;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzi:Lcom/google/android/gms/internal/ads/zzeck;

    .line 12
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzeck;->zzi(Lcom/google/android/gms/internal/ads/zzfax;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzis:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzfax;->zzf:I

    if-eqz v4, :cond_3

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_2

    const/16 v6, 0x12c

    if-lt v4, v6, :cond_3

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefy;

    .line 44
    invoke-direct {p1, v5, v0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto/16 :goto_3

    :cond_3
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzfax;->zzq:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzdO:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfbf;->zza:Ljava/util/List;

    .line 25
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzeck;->zzh(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 42
    :cond_4
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfbf;->zza:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfau;

    .line 18
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzeck;->zzd(Lcom/google/android/gms/internal/ads/zzfau;)V

    .line 19
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzfau;->zza:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzg:Lcom/google/android/gms/internal/ads/zzcqj;

    .line 20
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzfau;->zzb:I

    .line 21
    invoke-interface {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzcqj;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzecf;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 22
    invoke-interface {v8, p1, v4}, Lcom/google/android/gms/internal/ads/zzecf;->zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_6
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 23
    invoke-static {v6, v9, v9}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v9

    .line 24
    invoke-virtual {v1, v4, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzeck;->zzf(Lcom/google/android/gms/internal/ads/zzfau;JLcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_0

    .line 25
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzb:Lcom/google/android/gms/internal/ads/zzcve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzd:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzc:Lcom/google/android/gms/internal/ads/zzfik;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcmb;

    .line 26
    invoke-direct {v7, p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzcmb;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzfik;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zze:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzdat;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzfax;->zzr:I

    if-le v0, v6, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzl:Lcom/google/android/gms/internal/ads/zzefe;

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefe;->zzb(Lcom/google/android/gms/internal/ads/zzfbg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto/16 :goto_3

    .line 27
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegb;->zzc(Lcom/google/android/gms/internal/ads/zzfbg;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegb;->zza:Lcom/google/android/gms/internal/ads/zzfft;

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzn:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzefy;

    .line 29
    invoke-direct {v6, v5, v0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    .line 30
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 31
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzffd;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzh:Lcom/google/android/gms/internal/ads/zzefu;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefu;->zzl()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbf;->zza:Ljava/util/List;

    .line 34
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfau;

    .line 35
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzfau;->zza:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzg:Lcom/google/android/gms/internal/ads/zzcqj;

    .line 36
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzfau;->zzb:I

    .line 37
    invoke-interface {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzcqj;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzecf;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 38
    invoke-interface {v9, p1, v6}, Lcom/google/android/gms/internal/ads/zzecf;->zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v7, Lcom/google/android/gms/internal/ads/zzffn;->zzo:Lcom/google/android/gms/internal/ads/zzffn;

    .line 39
    invoke-virtual {v3, v7, v0}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "render-config-"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzffj;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzefz;

    invoke-direct {v7, p0, v6, p1, v9}, Lcom/google/android/gms/internal/ads/zzefz;-><init>(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzecf;)V

    const-class v6, Ljava/lang/Throwable;

    .line 40
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzffj;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 42
    :cond_b
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzega;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/zzega;-><init>(Lcom/google/android/gms/internal/ads/zzefu;)V

    invoke-interface {v0, p1, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p1, v0

    :goto_3
    return-object p1
.end method
