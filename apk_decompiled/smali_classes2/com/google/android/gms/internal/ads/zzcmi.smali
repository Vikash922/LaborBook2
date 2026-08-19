.class final Lcom/google/android/gms/internal/ads/zzcmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcmj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmj;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzb:Lcom/google/android/gms/internal/ads/zzcmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zza:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzb:Lcom/google/android/gms/internal/ads/zzcmj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcmj;->zzk(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfcb;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcmj;->zzl(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfik;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcmj;->zzj(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfbg;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcmj;->zzi(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcmj;->zzm(Lcom/google/android/gms/internal/ads/zzcmj;)Ljava/util/List;

    move-result-object v6

    const/4 v3, 0x0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfik;->zze(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v7, p1, v0}, Lcom/google/android/gms/internal/ads/zzfcb;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcxm;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzb:Lcom/google/android/gms/internal/ads/zzcmj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zza:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzk(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfcb;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzl(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfik;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzj(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfbg;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzi(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v3

    const/4 v4, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzm(Lcom/google/android/gms/internal/ads/zzcmj;)Ljava/util/List;

    move-result-object v7

    .line 3
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzfik;->zze(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzh(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzcxm;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfcb;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcxm;)V

    return-void
.end method
