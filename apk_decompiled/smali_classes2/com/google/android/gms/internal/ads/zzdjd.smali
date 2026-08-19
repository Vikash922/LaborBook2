.class public final synthetic Lcom/google/android/gms/internal/ads/zzdjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgb;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdje;

.field public final synthetic zzb:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdje;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zza:Lcom/google/android/gms/internal/ads/zzdje;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zza:Lcom/google/android/gms/internal/ads/zzdje;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzb:Ljava/util/Map;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdje;->zze(Lcom/google/android/gms/internal/ads/zzdje;Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
