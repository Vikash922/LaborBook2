.class public final synthetic Lcom/google/android/gms/internal/ads/zzxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyh;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzyb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxo;->zza:Lcom/google/android/gms/internal/ads/zzyb;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbm;[I)Ljava/util/List;
    .locals 9

    sget v0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwt;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzbm;->zza:I

    if-ge v1, v2, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzxo;->zza:Lcom/google/android/gms/internal/ads/zzyb;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzxy;

    .line 4
    aget v7, p3, v1

    move-object v2, v8

    move v3, p1

    move-object v4, p2

    move v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzxy;-><init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyb;I)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfwt;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwt;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzi()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    return-object p1
.end method
