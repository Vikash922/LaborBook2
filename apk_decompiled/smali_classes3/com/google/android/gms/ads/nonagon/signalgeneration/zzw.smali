.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdqy;

.field private final zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqy;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zza:Lcom/google/android/gms/internal/ads/zzdqy;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zzc:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zzd:I

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "request_id"

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    const-string v1, "RenderSignals.getRequestId"

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbza;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zza:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 6
    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdqy;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zzc:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;->zza:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdqy;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
