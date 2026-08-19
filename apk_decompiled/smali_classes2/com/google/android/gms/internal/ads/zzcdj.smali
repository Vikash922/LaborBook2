.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadh;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzadc;
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/internal/ads/zzcdt;->zza:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadc;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaiq;

    .line 2
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzahf;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzahf;-><init>()V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    return-object p1
.end method
