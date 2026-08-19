.class public final Lcom/google/android/gms/internal/ads/zzetx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzetx;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzetx;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzetx;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzetx;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzetx;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbyr;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)Lcom/google/android/gms/internal/ads/zzetv;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/ads/zzetv;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzetv;-><init>(Lcom/google/android/gms/internal/ads/zzbyr;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)V

    return-object v8
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzckg;->zza()Lcom/google/android/gms/internal/ads/zzbyr;

    move-result-object v1

    .line 2
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbyr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetx;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgs;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgs;->zza()Landroid/content/Context;

    move-result-object v2

    .line 2
    move-object v0, v2

    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetx;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfen;->zzc()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v0

    .line 2
    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetx;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzevd;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevd;->zza()Ljava/lang/Integer;

    move-result-object v0

    .line 2
    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetx;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeve;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeve;->zza()Ljava/lang/Boolean;

    move-result-object v0

    .line 2
    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetx;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzevg;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzevg;->zza()Ljava/lang/Boolean;

    move-result-object v0

    .line 2
    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzetv;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzetv;-><init>(Lcom/google/android/gms/internal/ads/zzbyr;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)V

    return-object v8
.end method
