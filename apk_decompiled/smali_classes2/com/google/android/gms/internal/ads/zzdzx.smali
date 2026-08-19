.class public final Lcom/google/android/gms/internal/ads/zzdzx;
.super Lcom/google/android/gms/internal/ads/zzdzy;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zzb:Landroid/util/SparseArray;


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcuf;

.field private final zze:Landroid/telephony/TelephonyManager;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdzp;

.field private zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdzx;->zzb:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 2
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 3
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 5
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 6
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 7
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zze:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 8
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zze:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 9
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zze:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 10
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zze:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 11
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zze:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 12
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzf:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    .line 13
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 14
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/android/gms/internal/ads/zzdzp;Lcom/google/android/gms/internal/ads/zzdzl;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p5}, Lcom/google/android/gms/internal/ads/zzdzy;-><init>(Lcom/google/android/gms/internal/ads/zzdzl;Lcom/google/android/gms/ads/internal/util/zzg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzd:Lcom/google/android/gms/internal/ads/zzcuf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzf:Lcom/google/android/gms/internal/ads/zzdzp;

    const-string p2, "phone"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zze:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdzx;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbn$zzab;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzab;->zza()Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;

    move-result-object v0

    const/4 v1, -0x2

    .line 2
    const-string v2, "cnt"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    const-string v3, "gnt"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    goto :goto_2

    .line 5
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    if-eq v1, p0, :cond_1

    .line 8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;

    goto :goto_1

    .line 9
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;

    goto :goto_1

    .line 10
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;

    goto :goto_1

    .line 11
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;

    .line 13
    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;)Lcom/google/android/gms/internal/ads/zzbbn$zzab$zza;

    .line 14
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzab;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdzx;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;
    .locals 1

    .line 1
    const-string p0, "device"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfcd;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "network"

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfcd;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "active_network_state"

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdzx;->zzb:Landroid/util/SparseArray;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdzx;)Lcom/google/android/gms/internal/ads/zzdzp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzf:Lcom/google/android/gms/internal/ads/zzdzp;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdzx;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbbn$zzab;Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;)[B
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza;->zzn()Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzn(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzc:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4
    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdzx;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzD(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zze:Landroid/telephony/TelephonyManager;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzg(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzE(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzf:Lcom/google/android/gms/internal/ads/zzdzp;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdzp;->zze()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzM(J)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdzp;->zzb()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzL(J)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdzp;->zza()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzG(I)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 11
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzH(Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zzd;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 12
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzJ(Lcom/google/android/gms/internal/ads/zzbbn$zzab;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzg:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    .line 13
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzK(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzx;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzN(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdzp;->zzd()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzP(J)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzO(J)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wifi_on"

    .line 18
    invoke-static {p0, p1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move v3, v2

    .line 19
    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdzx;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;->zzQ(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza$zza;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzaf$zza;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaV()[B

    move-result-object p0

    return-object p0
.end method

.method private static final zzg(Z)Lcom/google/android/gms/internal/ads/zzbbn$zzq;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zzd(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->zzd:Lcom/google/android/gms/internal/ads/zzcuf;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcuf;->zzb(Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdzw;-><init>(Lcom/google/android/gms/internal/ads/zzdzx;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-void
.end method
