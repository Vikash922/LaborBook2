.class public final synthetic Lcom/google/android/gms/internal/ads/zzxr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwl;->zzj()Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzyj;-><init>()V

    .line 2
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzyl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzyj;-><init>()V

    .line 3
    invoke-static {p2, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzyl;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzyj;-><init>()V

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwl;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzyk;-><init>()V

    .line 6
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzyk;-><init>()V

    .line 7
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzyl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzyk;-><init>()V

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwl;->zza()I

    move-result p1

    return p1
.end method
