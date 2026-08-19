.class final Lcom/google/android/gms/internal/ads/zzcmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zza:Lcom/google/android/gms/internal/ads/zzcmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmh;->zza:Lcom/google/android/gms/internal/ads/zzcmj;

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

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzi(Lcom/google/android/gms/internal/ads/zzcmj;)Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzfau;->zzc:Ljava/util/List;

    const/4 v4, 0x0

    const-string v5, ""

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzfik;->zze(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmj;->zzg(Lcom/google/android/gms/internal/ads/zzcmj;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->zzA(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 4
    :goto_0
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfcb;->zzc(Ljava/util/List;I)V

    return-void
.end method
