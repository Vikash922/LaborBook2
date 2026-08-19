.class public final synthetic Lcom/google/android/gms/internal/ads/zzdkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfbg;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfau;

.field public final synthetic zzc:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdki;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zza:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzc:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdhq;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzc:Lorg/json/JSONObject;

    const-string v2, "template_id"

    const/4 v3, -0x1

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdhq;->zzaa(I)V

    const-string v2, "custom_template_id"

    .line 3
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdhq;->zzK(Ljava/lang/String;)V

    const-string v2, "omid_settings"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "omid_partner_name"

    .line 5
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zza:Lcom/google/android/gms/internal/ads/zzfbg;

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdhq;->zzV(Ljava/lang/String;)V

    .line 7
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzc()I

    move-result v4

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzfbp;->zzg:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzc()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzA()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbp;->zzh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzA()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    const-string v1, "Unexpected custom template id in the response."

    .line 22
    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    const-string v1, "No custom template id for custom template ad response."

    .line 10
    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    const-string v4, "rating"

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 12
    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzY(D)V

    .line 13
    const-string v4, "headline"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzM:Z

    if-eqz v2, :cond_4

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzz()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    :cond_4
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v2, "body"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdhq;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v2, "call_to_action"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdhq;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v2, "store"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdhq;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v2, "price"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdhq;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v2, "advertiser"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdhq;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzefy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzc()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid template ID: "

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw v1
.end method
