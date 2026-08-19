.class final Lcom/google/android/gms/internal/ads/zzano;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanh;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzanq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzej;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanq;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzej;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zzb:Lcom/google/android/gms/internal/ads/zzej;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzano;->zzb:Lcom/google/android/gms/internal/ads/zzej;

    .line 5
    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzG(Lcom/google/android/gms/internal/ads/zzej;I)V

    const/16 v5, 0x10

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v5

    const/4 v6, 0x3

    .line 7
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    const/16 v6, 0xd

    if-nez v5, :cond_1

    .line 8
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzano;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzanq;->zzg(Lcom/google/android/gms/internal/ads/zzanq;)Landroid/util/SparseArray;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzanq;->zzg(Lcom/google/android/gms/internal/ads/zzanq;)Landroid/util/SparseArray;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzani;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzanp;

    .line 11
    invoke-direct {v8, v5, v4}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzanq;I)V

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzani;-><init>(Lcom/google/android/gms/internal/ads/zzanh;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzanq;->zza(Lcom/google/android/gms/internal/ads/zzanq;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 12
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzanq;->zzo(Lcom/google/android/gms/internal/ads/zzanq;I)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzano;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzanq;->zzg(Lcom/google/android/gms/internal/ads/zzanq;)Landroid/util/SparseArray;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 0

    return-void
.end method
