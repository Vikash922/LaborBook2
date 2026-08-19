.class public final synthetic Lcom/google/android/gms/internal/ads/zzxs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyh;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzyn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzyb;

.field public final synthetic zzc:Z

.field public final synthetic zzd:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzyb;Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzb:Lcom/google/android/gms/internal/ads/zzyb;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:[I

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbm;[I)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzxu;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxs;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzxs;->zzb:Lcom/google/android/gms/internal/ads/zzyb;

    invoke-direct {v10, v1, v11}, Lcom/google/android/gms/internal/ads/zzxu;-><init>(Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzyb;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:[I

    aget v12, v1, p1

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v13, Lcom/google/android/gms/internal/ads/zzfwt;

    .line 3
    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v15, p2

    move v14, v1

    .line 4
    :goto_0
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzbm;->zza:I

    if-ge v14, v1, :cond_0

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzxs;->zzc:Z

    new-instance v9, Lcom/google/android/gms/internal/ads/zzxx;

    .line 5
    aget v6, p3, v14

    move-object v1, v9

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move-object v5, v11

    move-object v8, v10

    move-object v0, v9

    move v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzxx;-><init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyb;IZLcom/google/android/gms/internal/ads/zzftx;I)V

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwt;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfwt;->zzi()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    return-object v0
.end method
