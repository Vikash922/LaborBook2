.class public final synthetic Lcom/google/android/gms/internal/ads/zzbax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbba;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbar;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbas;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbzp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbba;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/zzbas;Lcom/google/android/gms/internal/ads/zzbzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zza:Lcom/google/android/gms/internal/ads/zzbba;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzb:Lcom/google/android/gms/internal/ads/zzbar;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Lcom/google/android/gms/internal/ads/zzbas;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbzp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zza:Lcom/google/android/gms/internal/ads/zzbba;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzb:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzd:Lcom/google/android/gms/internal/ads/zzbzp;

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbar;->zzq()Lcom/google/android/gms/internal/ads/zzbau;

    move-result-object v3

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbar;->zzp()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzc:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbau;->zzg(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbau;->zzf(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "No entry contents."

    .line 6
    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbba;->zzc:Lcom/google/android/gms/internal/ads/zzbbc;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbc;->zze(Lcom/google/android/gms/internal/ads/zzbbc;)V

    return-void

    .line 8
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbaz;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzc()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbaz;-><init>(Lcom/google/android/gms/internal/ads/zzbba;Ljava/io/InputStream;I)V

    .line 10
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 12
    invoke-virtual {v3, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzd()Z

    move-result v4

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzg()Z

    move-result v5

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zza()J

    move-result-wide v6

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzf()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbbe;->zzb(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zzbbe;

    move-result-object v1

    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzc(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unable to read from cache."

    .line 11
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 18
    :goto_1
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Unable to obtain a cache service instance."

    .line 19
    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbba;->zzc:Lcom/google/android/gms/internal/ads/zzbbc;

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zze(Lcom/google/android/gms/internal/ads/zzbbc;)V

    return-void
.end method
