.class public final Lcom/google/android/gms/internal/ads/zzdwn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxp;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzdvo;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdzp;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzh:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwn;->zza:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/internal/ads/zzdvo;Lcom/google/android/gms/internal/ads/zzgcd;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzdzp;Lcom/google/android/gms/internal/ads/zzfgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzh:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzd:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzb:Lcom/google/android/gms/internal/ads/zzdvo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzc:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzf:Lcom/google/android/gms/internal/ads/zzdzp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzg:Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdwn;)Lcom/google/android/gms/internal/ads/zzdzp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzf:Lcom/google/android/gms/internal/ads/zzdzp;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdwn;Lcom/google/android/gms/internal/ads/zzdxr;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzd:Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfbd;-><init>(Lcom/google/android/gms/internal/ads/zzfbp;)V

    new-instance p0, Ljava/io/InputStreamReader;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxr;->zzb()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxr;->zza()Lcom/google/android/gms/internal/ads/zzbuy;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbf;->zza(Ljava/io/Reader;Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/android/gms/internal/ads/zzfbf;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzfbg;-><init>(Lcom/google/android/gms/internal/ads/zzfbd;Lcom/google/android/gms/internal/ads/zzfbf;)V

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdwn;->zza:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzh:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzb:Lcom/google/android/gms/internal/ads/zzdvo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdvo;->zzc(Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/16 v1, 0xb

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgm;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgc;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdwk;-><init>(Lcom/google/android/gms/internal/ads/zzdwn;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzc:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzfE:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzfF:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-static {p1, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgbs;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdwl;-><init>()V

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    const-class v3, Ljava/util/concurrent/TimeoutException;

    .line 11
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzg:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 12
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(Lcom/google/android/gms/internal/ads/zzdwn;)V

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 14
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
