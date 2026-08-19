.class public final Lcom/google/android/gms/internal/ads/zzehd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecl;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdnn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdnn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehd;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzc:Lcom/google/android/gms/internal/ads/zzdnn;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzehd;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzehd;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzehd;->zze(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V

    return-void
.end method

.method private static final zze(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzk(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzeci;->zza:Ljava/lang/String;

    .line 3
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Fail to load ad from adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfbw;,
            Lcom/google/android/gms/internal/ads/zzefy;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqw;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzeci;->zza:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdnk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehb;

    invoke-direct {v1, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzehb;-><init>(Lcom/google/android/gms/internal/ads/zzehd;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzfau;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdnk;-><init>(Lcom/google/android/gms/internal/ads/zzdfm;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzc:Lcom/google/android/gms/internal/ads/zzdnn;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdnn;->zzd(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzdnk;)Lcom/google/android/gms/internal/ads/zzdnj;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnj;->zzd()Lcom/google/android/gms/internal/ads/zzcwb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcln;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcln;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzb:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdat;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnj;->zze()Lcom/google/android/gms/internal/ads/zzcwj;

    move-result-object v6

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnj;->zzb()Lcom/google/android/gms/internal/ads/zzcva;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnj;->zza()Lcom/google/android/gms/internal/ads/zzcxi;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnj;->zzg()Lcom/google/android/gms/internal/ads/zzddl;

    move-result-object v7

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    .line 8
    check-cast p2, Lcom/google/android/gms/internal/ads/zzedx;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzehc;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzehc;-><init>(Lcom/google/android/gms/internal/ads/zzehd;Lcom/google/android/gms/internal/ads/zzcxi;Lcom/google/android/gms/internal/ads/zzcva;Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzddl;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzedx;->zzc(Lcom/google/android/gms/internal/ads/zzbvv;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnj;->zzi()Lcom/google/android/gms/internal/ads/zzdni;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfbw;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzC()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeha;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Lcom/google/android/gms/internal/ads/zzehd;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    .line 2
    move-object v2, p3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzedx;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzedx;->zzd(Lcom/google/android/gms/internal/ads/zzddn;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehd;->zza:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    move-object v5, p3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbvv;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    const/4 v4, 0x0

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfcn;->zzh(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvv;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzehd;->zze(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V

    return-void
.end method
