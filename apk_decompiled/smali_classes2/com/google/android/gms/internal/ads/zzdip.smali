.class final Lcom/google/android/gms/internal/ads/zzdip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfh;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdjo;

.field final synthetic zzb:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjo;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdip;->zza:Lcom/google/android/gms/internal/ads/zzdjo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdip;->zzb:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdip;->zza:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzo()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdip;->zza:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzp()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdim;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdip;->zza:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzm()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3
    check-cast v5, Ljava/lang/String;

    .line 4
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdip;->zzb:Landroid/view/ViewGroup;

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdjo;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdip;->zza:Lcom/google/android/gms/internal/ads/zzdjo;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdjo;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method
