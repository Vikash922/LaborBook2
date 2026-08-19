.class public final Lcom/google/android/gms/ads/internal/util/zzbm;
.super Lcom/google/android/gms/internal/ads/zzapj;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbzp;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzbzp;)V
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbl;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbl;-><init>(Lcom/google/android/gms/internal/ads/zzbzp;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzapn;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 2
    new-instance p2, Lcom/google/android/gms/ads/internal/util/client/zzl;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;

    const-string v0, "GET"

    .line 4
    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final zzh(Lcom/google/android/gms/internal/ads/zzapf;)Lcom/google/android/gms/internal/ads/zzapp;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Lcom/google/android/gms/internal/ads/zzapf;)Lcom/google/android/gms/internal/ads/zzaos;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaos;)Lcom/google/android/gms/internal/ads/zzapp;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic zzo(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzapf;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapf;->zzc:Ljava/util/Map;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzapf;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->zzb:Lcom/google/android/gms/ads/internal/util/client/zzl;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzf(Ljava/util/Map;I)V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzapf;->zzb:[B

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzh([B)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbm;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
