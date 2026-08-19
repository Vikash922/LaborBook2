.class public final Lcom/google/android/gms/internal/ads/zzdfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwq;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/internal/ads/zzcvw;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzeca;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcel;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfau;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeby;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzeby;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzc:Lcom/google/android/gms/internal/ads/zzcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzd:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzf:Lcom/google/android/gms/internal/ads/zzeby;

    return-void
.end method

.method private final zzg()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzfp:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzf:Lcom/google/android/gms/internal/ads/zzeby;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeby;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zzdE()V
    .locals 0

    return-void
.end method

.method public final zzdi()V
    .locals 0

    return-void
.end method

.method public final zzdo()V
    .locals 0

    return-void
.end method

.method public final zzdp()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzfs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzc:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdfn;->zzg()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzf:Lcom/google/android/gms/internal/ads/zzeby;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeby;->zzb()V

    :cond_2
    return-void
.end method

.method public final zzdr()V
    .locals 0

    return-void
.end method

.method public final zzds(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    return-void
.end method

.method public final zzs()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdfn;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzf:Lcom/google/android/gms/internal/ads/zzeby;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeby;->zzb()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzc:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzfs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final zzt()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzd:Lcom/google/android/gms/internal/ads/zzfau;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzT:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzc:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzb:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzebv;->zzl(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdfn;->zzg()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzf:Lcom/google/android/gms/internal/ads/zzeby;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeby;->zzc()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v3, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzV:Lcom/google/android/gms/internal/ads/zzfbs;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfbs;->zza()Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfbs;->zzc()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzebw;->zzc:Lcom/google/android/gms/internal/ads/zzebw;

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzebx;->zzb:Lcom/google/android/gms/internal/ads/zzebx;

    move-object v12, v2

    move-object v11, v3

    goto :goto_1

    .line 19
    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzY:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzebx;->zzd:Lcom/google/android/gms/internal/ads/zzebx;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzebx;->zza:Lcom/google/android/gms/internal/ads/zzebx;

    .line 11
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzebw;->zza:Lcom/google/android/gms/internal/ads/zzebw;

    move-object v11, v2

    move-object v12, v3

    .line 8
    :goto_1
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzal:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzG()Landroid/webkit/WebView;

    move-result-object v7

    const-string v8, ""

    const-string v9, "javascript"

    .line 13
    invoke-interface/range {v5 .. v13}, Lcom/google/android/gms/internal/ads/zzebv;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeca;->zza()Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object v0

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzfo:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzG()Landroid/webkit/WebView;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzebv;->zzj(Lcom/google/android/gms/internal/ads/zzfjv;Landroid/view/View;)V

    .line 17
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzebv;->zzg(Lcom/google/android/gms/internal/ads/zzfjv;Landroid/view/View;)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v2

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzebv;->zzj(Lcom/google/android/gms/internal/ads/zzfjv;Landroid/view/View;)V

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    .line 20
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcel;->zzat(Lcom/google/android/gms/internal/ads/zzeca;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzebv;->zzk(Lcom/google/android/gms/internal/ads/zzfjv;)V

    .line 22
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method
