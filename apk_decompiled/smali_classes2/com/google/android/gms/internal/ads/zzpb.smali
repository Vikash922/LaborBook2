.class public final Lcom/google/android/gms/internal/ads/zzpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzpb;

.field static final zzb:Lcom/google/android/gms/internal/ads/zzfwz;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfww;


# instance fields
.field private final zzd:Landroid/util/SparseArray;

.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzpa;->zza:Lcom/google/android/gms/internal/ads/zzpa;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpb;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpb;->zza:Lcom/google/android/gms/internal/ads/zzpb;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfww;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpb;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwy;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwy;-><init>()V

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    const/16 v1, 0x11

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    const/4 v1, 0x7

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    const/16 v1, 0x1e

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    const/16 v1, 0x12

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    const/16 v1, 0x8

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    .line 12
    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    const/16 v2, 0xe

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwy;->zzc()Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpb;->zzb:Lcom/google/android/gms/internal/ads/zzfwz;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzpa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    .line 4
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzpa;->zzb:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpa;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzpa;->zzc:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zze:I

    return-void
.end method

.method static zza()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpb;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_surround_sound_enabled"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)Lcom/google/android/gms/internal/ads/zzpb;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpb;->zzd(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)Lcom/google/android/gms/internal/ads/zzpb;

    move-result-object p0

    return-object p0
.end method

.method static zzd(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)Lcom/google/android/gms/internal/ads/zzpb;
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcj;->zzc(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-nez p3, :cond_2

    .line 2
    sget p3, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/4 v3, 0x0

    if-lt p3, v1, :cond_1

    .line 3
    :try_start_0
    move-object p3, v0

    check-cast p3, Landroid/media/AudioManager;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 5
    invoke-virtual {v0, p3}, Landroid/media/AudioManager;->getAudioDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzph;

    .line 7
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioDeviceInfo;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Landroid/media/AudioDeviceInfo;)V

    :catch_0
    :cond_1
    :goto_0
    move-object p3, v3

    .line 8
    :cond_2
    sget v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v3, v1, :cond_a

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeu;->zzN(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeu;->zzJ(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 48
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 49
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getDirectProfilesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpb;

    new-instance p2, Ljava/util/HashMap;

    .line 50
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Ljava/util/HashSet;

    filled-new-array {v4}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzz;->zzh([I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_8

    .line 53
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioProfile;

    .line 54
    invoke-virtual {p3}, Landroid/media/AudioProfile;->getEncapsulationType()I

    move-result v0

    if-ne v0, v6, :cond_4

    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {p3}, Landroid/media/AudioProfile;->getFormat()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzK(I)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzpb;->zzb:Lcom/google/android/gms/internal/ads/zzfwz;

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfwz;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 57
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    .line 59
    invoke-virtual {p3}, Landroid/media/AudioProfile;->getChannelMasks()[I

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfzz;->zzh([I)Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/util/HashSet;

    .line 60
    invoke-virtual {p3}, Landroid/media/AudioProfile;->getChannelMasks()[I

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfzz;->zzh([I)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_8
    sget p0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfwt;

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>()V

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpa;

    .line 67
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzpa;-><init>(ILjava/util/Set;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwt;

    goto :goto_3

    .line 68
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzi()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    .line 69
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzpb;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_a
    if-nez p3, :cond_b

    .line 9
    move-object p3, v0

    check-cast p3, Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p3

    goto :goto_4

    .line 28
    :cond_b
    new-array v0, v6, [Landroid/media/AudioDeviceInfo;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzph;->zza:Landroid/media/AudioDeviceInfo;

    aput-object p3, v0, v2

    move-object p3, v0

    .line 9
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxa;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxa;-><init>()V

    new-array v7, v5, [Ljava/lang/Integer;

    const/16 v8, 0x8

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfxa;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;

    const/16 v7, 0x1f

    if-lt v3, v7, :cond_c

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v7, 0x1a

    .line 12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const/16 v7, 0x1b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfxa;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;

    :cond_c
    sget v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    if-lt v3, v1, :cond_d

    const/16 v1, 0x1e

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxa;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;

    .line 15
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxa;->zzi()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    .line 16
    array-length v1, p3

    move v7, v2

    :goto_5
    if-ge v7, v1, :cond_f

    aget-object v8, p3, v7

    .line 17
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfxb;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object p0, Lcom/google/android/gms/internal/ads/zzpb;->zza:Lcom/google/android/gms/internal/ads/zzpb;

    return-object p0

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_f
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfxa;

    .line 18
    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzfxa;-><init>()V

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzfxa;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;

    const/16 v0, 0x1d

    const/16 v1, 0xa

    if-lt v3, v0, :cond_13

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeu;->zzN(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeu;->zzJ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    :cond_10
    sget p0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfwt;

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpb;->zzb:Lcom/google/android/gms/internal/ads/zzfwz;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwz;->zzi()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxb;->zze()Lcom/google/android/gms/internal/ads/zzfzc;

    move-result-object p1

    :cond_11
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzh(I)I

    move-result v2

    if-lt v3, v2, :cond_11

    .line 37
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 38
    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const v6, 0xbb80

    .line 40
    invoke-virtual {v2, v6}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 42
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 37
    invoke-static {v2, v6}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwt;

    goto :goto_6

    .line 44
    :cond_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwt;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwt;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzi()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    .line 46
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzfxa;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxa;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzpb;

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfxa;->zzi()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzz;->zzi(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzpb;->zze([II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpb;-><init>(Ljava/util/List;)V

    return-object p0

    .line 21
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "use_external_surround_sound_flag"

    .line 22
    invoke-static {p0, p2, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v6, :cond_14

    move p2, v6

    goto :goto_7

    :cond_14
    move p2, v2

    :goto_7
    if-nez p2, :cond_15

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpb;->zzf()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const-string v0, "external_surround_sound_enabled"

    .line 24
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_16

    sget-object p0, Lcom/google/android/gms/internal/ads/zzpb;->zzc:Lcom/google/android/gms/internal/ads/zzfww;

    .line 25
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzfxa;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxa;

    :cond_16
    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 26
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_18

    const-string p0, "android.media.extra.ENCODINGS"

    .line 29
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_17

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfzz;->zzh([I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzfxa;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxa;

    :cond_17
    new-instance p0, Lcom/google/android/gms/internal/ads/zzpb;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfxa;->zzi()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfzz;->zzi(Ljava/util/Collection;)[I

    move-result-object p2

    const-string p3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 32
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 33
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzpb;->zze([II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpb;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_18
    new-instance p0, Lcom/google/android/gms/internal/ads/zzpb;

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfxa;->zzi()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzz;->zzi(Ljava/util/Collection;)[I

    move-result-object p1

    .line 28
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzpb;->zze([II)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpb;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static zze([II)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwt;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p0, v1

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpa;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/ads/zzpa;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfwt;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwt;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzi()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

.method private static zzf()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzpb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzpb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    sget v4, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2

    .line 3
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    .line 6
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 7
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zze:I

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzpb;->zze:I

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x11

    .line 2
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 3
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 5
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zze:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioCapabilities[maxChannelCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpb;->zze:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioProfiles="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zze;)Landroid/util/Pair;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzay;->zza(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzpb;->zzb:Lcom/google/android/gms/internal/ads/zzfwz;

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfwz;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x7

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/16 v5, 0x12

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    .line 3
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzeu;->zzH(Landroid/util/SparseArray;I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    move v1, v5

    :cond_2
    if-ne v1, v4, :cond_4

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    .line 4
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzH(Landroid/util/SparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v6, 0x1e

    if-ne v1, v6, :cond_5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    .line 5
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzH(Landroid/util/SparseArray;I)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 3
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpb;->zzd:Landroid/util/SparseArray;

    .line 6
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzH(Landroid/util/SparseArray;I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 7
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzpa;

    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzpa;

    .line 8
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    if-ne v1, v5, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    const-string p1, "audio/vnd.dts.uhd;profile=p2"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 p2, 0x21

    if-ge p1, p2, :cond_7

    const/16 p1, 0xa

    if-le v7, p1, :cond_a

    goto :goto_5

    .line 12
    :cond_7
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzpa;->zzb(I)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_5

    .line 9
    :cond_8
    :goto_3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    if-ne p1, v8, :cond_9

    const p1, 0xbb80

    .line 10
    :cond_9
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzpa;->zza(ILcom/google/android/gms/internal/ads/zze;)I

    move-result v7

    :cond_a
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 p2, 0x1c

    if-gt p1, p2, :cond_c

    if-ne v7, v2, :cond_b

    move v3, v4

    goto :goto_4

    :cond_b
    const/4 p1, 0x3

    if-eq v7, p1, :cond_d

    const/4 p1, 0x4

    if-eq v7, p1, :cond_d

    const/4 p1, 0x5

    if-ne v7, p1, :cond_c

    goto :goto_4

    :cond_c
    move v3, v7

    :cond_d
    :goto_4
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 p2, 0x1a

    if-gt p1, p2, :cond_e

    const-string p1, "fugu"

    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    if-ne v3, p1, :cond_e

    const/4 v3, 0x2

    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzi(I)I

    move-result p1

    if-eqz p1, :cond_f

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method
