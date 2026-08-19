.class public final Lcom/google/android/gms/internal/ads/zzdgv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchg;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchg;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    .line 2
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 3
    const-string v4, "native"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 2
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V

    .line 6
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzayd;

    return-object v0
.end method
