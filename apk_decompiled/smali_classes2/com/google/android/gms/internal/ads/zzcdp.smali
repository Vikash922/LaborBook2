.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcbg;

.field public final synthetic zzb:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcbg;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zza:Lcom/google/android/gms/internal/ads/zzcbg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/ads/zzcdt;->zza:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zza:Lcom/google/android/gms/internal/ads/zzcbg;

    const-string v1, "onGcacheInfoEvent"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdp;->zzb:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbg;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
