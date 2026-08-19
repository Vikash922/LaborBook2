.class public final Lcom/google/android/gms/internal/ads/zzexm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeyl;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcui;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgck;->zzc()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzexm;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcui;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexm;->zza:Lcom/google/android/gms/internal/ads/zzcui;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeym;->zzb:Lcom/google/android/gms/internal/ads/zzeyj;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzeyk;->zza(Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeyp;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzeyp;-><init>(Z)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcuh;->zzb(Lcom/google/android/gms/internal/ads/zzeyp;)Lcom/google/android/gms/internal/ads/zzcuh;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcuh;->zzh()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcui;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexm;->zza:Lcom/google/android/gms/internal/ads/zzcui;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcui;->zzb()Lcom/google/android/gms/internal/ads/zzcrk;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfdl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzfdl;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrk;->zzi()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgbj;->zzE(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgbj;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzexk;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzexk;-><init>(Lcom/google/android/gms/internal/ads/zzexm;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcrk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzexm;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgbj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzexl;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzexl;-><init>(Lcom/google/android/gms/internal/ads/zzfdl;)V

    .line 8
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgbj;

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 p3, 0x0

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzexm;->zzb(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexm;->zza:Lcom/google/android/gms/internal/ads/zzcui;

    return-object v0
.end method
