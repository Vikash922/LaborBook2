.class public abstract Lcom/google/android/gms/internal/ads/zzefj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 36

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    const-string v3, "pubid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfbn;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfbn;-><init>()V

    .line 3
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfbn;->zzq(Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 4
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfbn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfbn;

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v6, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzefj;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 6
    const-string v7, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzefj;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 7
    const-string v8, "gw"

    const/4 v15, 0x1

    invoke-virtual {v11, v8, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    const-string v8, "mad_hac"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 9
    invoke-virtual {v11, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v8, "adJson"

    .line 10
    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v8, "_ad"

    .line 11
    invoke-virtual {v11, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "_noRefresh"

    .line 12
    invoke-virtual {v11, v2, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzD:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 14
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 15
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_2

    .line 17
    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v8, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zza:I

    iget-wide v9, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    iget v12, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    iget-object v13, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    iget-boolean v14, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    move v7, v15

    move v15, v2

    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzh:Z

    move/from16 v16, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzi:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzj:Lcom/google/android/gms/ads/internal/client/zzft;

    move-object/from16 v18, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    move-object/from16 v19, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzl:Ljava/lang/String;

    move-object/from16 v20, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzn:Landroid/os/Bundle;

    move-object/from16 v22, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzo:Ljava/util/List;

    move-object/from16 v23, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzq:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    move/from16 v26, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    move-object/from16 v27, v2

    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    move/from16 v28, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzu:Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzv:Ljava/util/List;

    move-object/from16 v30, v2

    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzw:I

    move/from16 v31, v2

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    move-object/from16 v32, v2

    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzy:I

    move/from16 v33, v2

    iget-wide v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    move-wide/from16 v34, v2

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzm;

    move v3, v7

    move-object v7, v2

    move-object/from16 v21, v6

    .line 19
    invoke-direct/range {v7 .. v35}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    .line 20
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfbn;->zzH(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfbn;->zzJ()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object v2

    new-instance v5, Landroid/os/Bundle;

    .line 22
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 23
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    new-instance v7, Landroid/os/Bundle;

    .line 24
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzfax;->zza:Ljava/util/List;

    .line 25
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v9, "nofill_urls"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v8, "refresh_interval"

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzfax;->zzc:I

    .line 26
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "gws_query_id"

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfax;->zzb:Ljava/lang/String;

    .line 27
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "parent_common_config"

    .line 23
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    .line 28
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "initial_ad_unit_id"

    .line 29
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzw:Ljava/lang/String;

    const-string v7, "allocation_id"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzF:Ljava/lang/String;

    const-string v7, "ad_source_name"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 32
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzc:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "click_urls"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 33
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzd:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "imp_urls"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 34
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzp:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "manual_tracking_urls"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 35
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzm:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "fill_urls"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 36
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzg:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "video_start_urls"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 37
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzh:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "video_reward_urls"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 38
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzi:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v7, "video_complete_urls"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzj:Ljava/lang/String;

    const-string v7, "transaction_id"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzk:Ljava/lang/String;

    const-string v7, "valid_from_timestamp"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzP:Z

    const-string v7, "is_closable_area_disabled"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzao:Ljava/lang/String;

    const-string v7, "recursive_server_response_data"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzW:Z

    const-string v7, "is_analytics_logging_enabled"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzl:Lcom/google/android/gms/internal/ads/zzbvw;

    if-eqz v4, :cond_4

    new-instance v7, Landroid/os/Bundle;

    .line 45
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "rb_amount"

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzbvw;->zzb:I

    .line 46
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "rb_type"

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Ljava/lang/String;

    .line 47
    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v3, [Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const-string v4, "rewards"

    .line 48
    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_4
    const-string v3, "parent_ad_config"

    .line 49
    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v3, p0

    .line 50
    invoke-virtual {v3, v2, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzefj;->zzc(Lcom/google/android/gms/internal/ads/zzfbp;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Z
    .locals 1

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    const-string p2, "pubid"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzfbp;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;)Lcom/google/common/util/concurrent/ListenableFuture;
.end method
