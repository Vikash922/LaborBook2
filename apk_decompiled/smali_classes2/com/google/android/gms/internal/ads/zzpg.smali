.class public final Lcom/google/android/gms/internal/ads/zzpg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/os/Handler;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzpc;

.field private final zzd:Landroid/content/BroadcastReceiver;

.field private final zze:Lcom/google/android/gms/internal/ads/zzpd;

.field private zzf:Lcom/google/android/gms/internal/ads/zzpb;

.field private zzg:Lcom/google/android/gms/internal/ads/zzph;

.field private zzh:Lcom/google/android/gms/internal/ads/zze;

.field private zzi:Z

.field private final zzj:Lcom/google/android/gms/internal/ads/zzqp;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqp;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Landroid/content/Context;

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzj:Lcom/google/android/gms/internal/ads/zzqp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzh:Lcom/google/android/gms/internal/ads/zze;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzg:Lcom/google/android/gms/internal/ads/zzph;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zzz()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Landroid/os/Handler;

    const/4 p4, 0x0

    .line 4
    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzb:Landroid/os/Handler;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzpc;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzpc;-><init>(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zzpf;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzc:Lcom/google/android/gms/internal/ads/zzpc;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzpe;

    .line 6
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzpe;-><init>(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zzpf;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzd:Landroid/content/BroadcastReceiver;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpb;->zza()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p4, Lcom/google/android/gms/internal/ads/zzpd;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p4, p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzpd;-><init>(Lcom/google/android/gms/internal/ads/zzpg;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpg;->zze:Lcom/google/android/gms/internal/ads/zzpd;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzpg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzpg;)Lcom/google/android/gms/internal/ads/zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzh:Lcom/google/android/gms/internal/ads/zze;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzpg;)Lcom/google/android/gms/internal/ads/zzph;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzg:Lcom/google/android/gms/internal/ads/zzph;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zzph;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzg:Lcom/google/android/gms/internal/ads/zzph;

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zzpb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpg;->zzj(Lcom/google/android/gms/internal/ads/zzpb;)V

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzpb;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzf:Lcom/google/android/gms/internal/ads/zzpb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzf:Lcom/google/android/gms/internal/ads/zzpb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzj:Lcom/google/android/gms/internal/ads/zzqp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Lcom/google/android/gms/internal/ads/zzrf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzrf;->zzJ(Lcom/google/android/gms/internal/ads/zzpb;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzpb;
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzf:Lcom/google/android/gms/internal/ads/zzpb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpb;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzi:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zze:Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpd;->zza()V

    .line 4
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzc:Lcom/google/android/gms/internal/ads/zzpc;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzb:Landroid/os/Handler;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcj;->zzc(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzd:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    .line 6
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzb:Landroid/os/Handler;

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzh:Lcom/google/android/gms/internal/ads/zze;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzg:Lcom/google/android/gms/internal/ads/zzph;

    .line 8
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzpb;->zzd(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)Lcom/google/android/gms/internal/ads/zzpb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzf:Lcom/google/android/gms/internal/ads/zzpb;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzh:Lcom/google/android/gms/internal/ads/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzg:Lcom/google/android/gms/internal/ads/zzph;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzpb;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)Lcom/google/android/gms/internal/ads/zzpb;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpg;->zzj(Lcom/google/android/gms/internal/ads/zzpb;)V

    return-void
.end method

.method public final zzh(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzg:Lcom/google/android/gms/internal/ads/zzph;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzph;->zza:Landroid/media/AudioDeviceInfo;

    .line 1
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzph;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Landroid/media/AudioDeviceInfo;)V

    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzg:Lcom/google/android/gms/internal/ads/zzph;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzh:Lcom/google/android/gms/internal/ads/zze;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpb;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)Lcom/google/android/gms/internal/ads/zzpb;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpg;->zzj(Lcom/google/android/gms/internal/ads/zzpb;)V

    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzi:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzf:Lcom/google/android/gms/internal/ads/zzpb;

    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzc:Lcom/google/android/gms/internal/ads/zzpc;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcj;->zzc(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzd:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zze:Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpd;->zzb()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpg;->zzi:Z

    return-void
.end method
