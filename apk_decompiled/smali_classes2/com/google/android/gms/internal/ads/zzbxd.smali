.class public final Lcom/google/android/gms/internal/ads/zzbxd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbxi;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Ljava/util/List;


# instance fields
.field zza:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhbu;

.field private final zze:Ljava/util/LinkedHashMap;

.field private final zzf:Ljava/util/List;

.field private final zzg:Ljava/util/List;

.field private final zzh:Landroid/content/Context;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzbxf;

.field private final zzj:Ljava/lang/Object;

.field private zzk:Ljava/util/HashSet;

.field private zzl:Z

.field private zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbxd;->zzc:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbxf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxe;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzf:Ljava/util/List;

    new-instance p5, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzg:Ljava/util/List;

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzj:Ljava/lang/Object;

    new-instance p5, Ljava/util/HashSet;

    .line 3
    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzk:Ljava/util/HashSet;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzl:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzm:Z

    const-string p5, "SafeBrowsing config is not present."

    .line 4
    invoke-static {p3, p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzh:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedHashMap;

    .line 6
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zze:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzbxf;->zze:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzk:Ljava/util/HashSet;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzk:Ljava/util/HashSet;

    const-string p3, "cookie"

    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    invoke-virtual {p3, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdt;->zzc()Lcom/google/android/gms/internal/ads/zzhbu;

    move-result-object p1

    const/16 p3, 0x9

    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzhbu;->zzn(I)Lcom/google/android/gms/internal/ads/zzhbu;

    .line 12
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzhbu;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbu;

    .line 13
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzhbu;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbu;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbw;->zzc()Lcom/google/android/gms/internal/ads/zzhbv;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzbxf;->zza:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 15
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzhbv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbv;

    .line 16
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzhbw;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzhbu;->zzg(Lcom/google/android/gms/internal/ads/zzhbw;)Lcom/google/android/gms/internal/ads/zzhbu;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdl;->zzc()Lcom/google/android/gms/internal/ads/zzhdk;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzh:Landroid/content/Context;

    .line 18
    invoke-static {p4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzhdk;->zzc(Z)Lcom/google/android/gms/internal/ads/zzhdk;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzhdk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 20
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzh:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_4

    .line 21
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzhdk;->zzb(J)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 22
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhdl;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhbu;->zzf(Lcom/google/android/gms/internal/ads/zzhdl;)Lcom/google/android/gms/internal/ads/zzhbu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzd:Lcom/google/android/gms/internal/ads/zzhbu;

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbxd;Ljava/util/Map;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "matches"

    .line 4
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zze:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhdi;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find the corresponding resource object for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbxh;->zza(Ljava/lang/String;)V

    .line 10
    monitor-exit v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_3

    .line 7
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "threat_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzhdi;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdi;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zza:Z

    if-lez v5, :cond_4

    move v2, v0

    :cond_4
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zza:Z

    .line 8
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 34
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :catchall_1
    move-exception p0

    .line 8
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 11
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zza:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzj:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzd:Lcom/google/android/gms/internal/ads/zzhbu;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhbu;->zzn(I)Lcom/google/android/gms/internal/ads/zzhbu;

    .line 12
    monitor-exit p1

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :cond_6
    :goto_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zza:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbxf;->zzg:Z

    if-nez v2, :cond_9

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzm:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbxf;->zzf:Z

    if-nez v2, :cond_9

    :cond_8
    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbxf;->zzd:Z

    if-eqz p1, :cond_e

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzj:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zze:Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhdi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzd:Lcom/google/android/gms/internal/ads/zzhbu;

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhdj;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzhbu;->zzc(Lcom/google/android/gms/internal/ads/zzhdj;)Lcom/google/android/gms/internal/ads/zzhbu;

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzd:Lcom/google/android/gms/internal/ads/zzhbu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzf:Ljava/util/List;

    .line 16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhbu;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhbu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzg:Ljava/util/List;

    .line 17
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhbu;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhbu;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbxh;->zzb()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbu;->zzl()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbu;->zzk()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending SB report\n  url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  clickUrl: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  resources: \n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbu;->zzm()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhdj;

    const-string v6, "    ["

    .line 22
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhdj;->zzc()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    .line 24
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhdj;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbxh;->zza(Ljava/lang/String;)V

    .line 27
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhdt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaV()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbxf;->zzb:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/ads/internal/util/zzbo;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzh:Landroid/content/Context;

    .line 28
    invoke-direct {v4, p0}, Lcom/google/android/gms/ads/internal/util/zzbo;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbo;->zzb(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbxh;->zzb()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxa;-><init>()V

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxb;-><init>()V

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    .line 27
    monitor-exit p1

    goto :goto_6

    :catchall_3
    move-exception p0

    .line 33
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p0

    .line 13
    :cond_e
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 35
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeq;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 36
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to get SafeBrowsing metadata"

    .line 37
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Safebrowsing report transmission failed."

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :goto_6
    return-object p0
.end method

.method static bridge synthetic zzc()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbxd;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbxd;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwn;->zzt()Lcom/google/android/gms/internal/ads/zzgwl;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzj:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzd:Lcom/google/android/gms/internal/ads/zzhbu;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhde;->zzc()Lcom/google/android/gms/internal/ads/zzhdc;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwl;->zzb()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhdc;->zza(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhdc;

    const-string v0, "image/png"

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhdc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdc;

    const/4 v0, 0x2

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhdc;->zzc(I)Lcom/google/android/gms/internal/ads/zzhdc;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhde;

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhbu;->zzi(Lcom/google/android/gms/internal/ads/zzhde;)Lcom/google/android/gms/internal/ads/zzhbu;

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbxf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    return-object v0
.end method

.method public final zze(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzm:Z

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p3, v1, :cond_1

    .line 2
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhdi;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhdi;->zze(I)Lcom/google/android/gms/internal/ads/zzhdi;

    .line 3
    :cond_1
    monitor-exit v0

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdj;->zzd()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhdh;->zza(I)I

    move-result p3

    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzhdi;->zze(I)Lcom/google/android/gms/internal/ads/zzhdi;

    .line 6
    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzhdi;->zzb(I)Lcom/google/android/gms/internal/ads/zzhdi;

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhdi;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdi;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhck;->zzc()Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object p3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzk:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p2, :cond_7

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 19
    :cond_5
    const-string v4, ""

    .line 12
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 19
    :cond_6
    const-string v3, ""

    .line 12
    :goto_2
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzk:Ljava/util/HashSet;

    .line 14
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcg;->zzc()Lcom/google/android/gms/internal/ads/zzhcf;

    move-result-object v5

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgwn;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzhcf;->zza(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhcf;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgwn;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzhcf;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhcf;

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhcg;

    .line 19
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzhch;->zza(Lcom/google/android/gms/internal/ads/zzhcg;)Lcom/google/android/gms/internal/ads/zzhch;

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhck;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzhdi;->zzc(Lcom/google/android/gms/internal/ads/zzhck;)Lcom/google/android/gms/internal/ads/zzhdi;

    .line 21
    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzf()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbwy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbwy;-><init>(Lcom/google/android/gms/internal/ads/zzbxd;)V

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzk;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0xa

    .line 5
    invoke-static {v1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzgbs;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbxc;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/zzbxc;-><init>(Lcom/google/android/gms/internal/ads/zzbxd;Lcom/google/common/util/concurrent/ListenableFuture;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 6
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbxd;->zzc:Ljava/util/List;

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzg(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbxf;->zzc:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzl:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_4

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 6
    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v1

    .line 7
    :goto_1
    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v4, "Fail to capture the web view"

    .line 8
    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-nez v3, :cond_5

    .line 9
    :try_start_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    .line 14
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 15
    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 16
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v1, v4

    goto :goto_4

    .line 10
    :cond_4
    :goto_3
    const-string p1, "Width or height of view is zero"

    .line 11
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 17
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "Fail to capture the webview"

    .line 18
    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    if-nez v1, :cond_6

    .line 1
    const-string p1, "Failed to capture the webview bitmap."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbxh;->zza(Ljava/lang/String;)V

    return-void

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzl:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbwz;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzbwz;-><init>(Lcom/google/android/gms/internal/ads/zzbxd;Landroid/graphics/Bitmap;)V

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzh(Ljava/lang/Runnable;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzj:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzd:Lcom/google/android/gms/internal/ads/zzhbu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbu;->zzd()Lcom/google/android/gms/internal/ads/zzhbu;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzd:Lcom/google/android/gms/internal/ads/zzhbu;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhbu;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbu;

    .line 3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzi()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzi:Lcom/google/android/gms/internal/ads/zzbxf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbxf;->zzc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zzl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
