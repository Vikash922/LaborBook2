.class public final Lcom/google/android/gms/internal/ads/zzgdk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public static final zza(Lcom/google/android/gms/internal/ads/zzgdv;)Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdk;->zzb(Lcom/google/android/gms/internal/ads/zzgdv;)Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaV()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgeb;->zza([B)Lcom/google/android/gms/internal/ads/zzgdv;

    move-result-object p0

    return-object p0
.end method

.method static final zzb(Lcom/google/android/gms/internal/ads/zzgdv;)Lcom/google/android/gms/internal/ads/zzgst;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc()Lcom/google/android/gms/internal/ads/zzgmi;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/internal/ads/zzgnm;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgmi;->zze(Lcom/google/android/gms/internal/ads/zzgdv;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgnp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgnm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnm;->zzc()Lcom/google/android/gms/internal/ads/zzgst;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnw;

    const-string v1, "Parsing parameters failed in getProto(). You probably want to call some Tink register function for "

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgnw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
