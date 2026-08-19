.class public final Lcom/google/android/gms/internal/ads/zzetp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zze:Lcom/google/android/gms/internal/ads/zzecd;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgcd;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzecd;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetp;->zza:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzc:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzetp;->zze:Lcom/google/android/gms/internal/ads/zzecd;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzf:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzetp;Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzetm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzetm;-><init>(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzc:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzgcd;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    instance-of p0, p1, Ljava/lang/SecurityException;

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzetr;

    const/4 p1, 0x2

    .line 3
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzetr;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzetq;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of p0, p1, Ljava/lang/IllegalStateException;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzetr;

    const/4 p1, 0x3

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzetr;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzetq;)V

    goto :goto_0

    .line 6
    :cond_1
    instance-of p0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/google/android/gms/internal/ads/zzetr;

    const/4 p1, 0x4

    .line 7
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzetr;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzetq;)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of p0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/google/android/gms/internal/ads/zzetr;

    const/4 p1, 0x5

    .line 9
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzetr;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzetq;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzetr;

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzetr;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzetq;)V

    .line 11
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzky:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetp;->zza:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzO()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkC:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzf:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 6
    sget-object v1, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->DISABLED:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzy:I

    if-eq v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzkw:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzkx:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzku:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkv:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 20
    :cond_2
    const-string v1, ","

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzb:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetp;->zze:Lcom/google/android/gms/internal/ads/zzecd;

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzecd;->zza(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzkA:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgbs;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 26
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbj;->zzE(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgbj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzetn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzetn;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzc:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 27
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeto;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeto;-><init>(Lcom/google/android/gms/internal/ads/zzetp;)V

    const-class v3, Ljava/lang/Throwable;

    .line 28
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzkA:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzetp;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgbs;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 16
    :cond_3
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzetr;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzetr;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzetq;)V

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
