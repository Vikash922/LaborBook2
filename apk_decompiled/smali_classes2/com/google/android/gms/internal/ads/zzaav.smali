.class final Lcom/google/android/gms/internal/ads/zzaav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzca;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzby;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzby;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaav;->zza:Lcom/google/android/gms/internal/ads/zzby;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzcb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbv;Ljava/util/List;JZ)Lcom/google/android/gms/internal/ads/zzcc;
    .locals 13

    .line 1
    :try_start_0
    const-string v0, "androidx.media3.effect.SingleInputVideoGraph$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/google/android/gms/internal/ads/zzby;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaav;->zza:Lcom/google/android/gms/internal/ads/zzby;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzca;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 5
    invoke-interface/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzca;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzcb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbv;Ljava/util/List;JZ)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
