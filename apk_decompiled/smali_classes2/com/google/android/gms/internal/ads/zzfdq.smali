.class public final Lcom/google/android/gms/internal/ads/zzfdq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdq;->zza:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfdg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfcy;Lcom/google/android/gms/internal/ads/zzfdw;)Lcom/google/android/gms/internal/ads/zzfdp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfdp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdd;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfdj;->zza(Lcom/google/android/gms/internal/ads/zzfdg;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzfdd;-><init>(Lcom/google/android/gms/internal/ads/zzfdj;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfdy;

    .line 3
    invoke-direct {p2, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfdy;-><init>(Lcom/google/android/gms/internal/ads/zzfdc;Lcom/google/android/gms/internal/ads/zzfcy;Lcom/google/android/gms/internal/ads/zzfdw;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfdp;

    invoke-direct {p3, v1, p2}, Lcom/google/android/gms/internal/ads/zzfdp;-><init>(Lcom/google/android/gms/internal/ads/zzfdc;Lcom/google/android/gms/internal/ads/zzfdy;)V

    .line 4
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_0
    return-object v1
.end method
