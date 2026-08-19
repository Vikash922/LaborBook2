.class public final Lcom/google/android/gms/internal/ads/zzgeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public static zza([B)Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzgst;->zzf([BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zza(Lcom/google/android/gms/internal/ads/zzgst;)Lcom/google/android/gms/internal/ads/zzgnm;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzk(Lcom/google/android/gms/internal/ads/zzgnp;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgln;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgln;-><init>(Lcom/google/android/gms/internal/ads/zzgnm;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgmi;->zzb(Lcom/google/android/gms/internal/ads/zzgnp;)Lcom/google/android/gms/internal/ads/zzgdv;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failed to parse proto"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgdv;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zze(Lcom/google/android/gms/internal/ads/zzgdv;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgnp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaV()[B

    move-result-object p0

    return-object p0
.end method
