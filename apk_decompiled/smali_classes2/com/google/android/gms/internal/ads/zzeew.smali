.class public final Lcom/google/android/gms/internal/ads/zzeew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecl;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdga;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdga;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeew;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeew;->zzb:Lcom/google/android/gms/internal/ads/zzdga;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeew;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static final zzc(Lcom/google/android/gms/internal/ads/zzfbg;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbp;->zzg:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
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
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcn;->zzD()Lcom/google/android/gms/internal/ads/zzbpj;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcn;->zzE()Lcom/google/android/gms/internal/ads/zzbpk;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcn;->zzd()Lcom/google/android/gms/internal/ads/zzbpn;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-eqz v3, :cond_0

    .line 4
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzeew;->zzc(Lcom/google/android/gms/internal/ads/zzfbg;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdhq;->zzt(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object v5

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzeew;->zzc(Lcom/google/android/gms/internal/ads/zzfbg;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdhq;->zzai(Lcom/google/android/gms/internal/ads/zzbpj;)Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v6, 0x2

    .line 6
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzeew;->zzc(Lcom/google/android/gms/internal/ads/zzfbg;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdhq;->zzag(Lcom/google/android/gms/internal/ads/zzbpj;)Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 7
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzeew;->zzc(Lcom/google/android/gms/internal/ads/zzfbg;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdhq;->zzaj(Lcom/google/android/gms/internal/ads/zzbpk;)Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 8
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzeew;->zzc(Lcom/google/android/gms/internal/ads/zzfbg;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdhq;->zzah(Lcom/google/android/gms/internal/ads/zzbpk;)Lcom/google/android/gms/internal/ads/zzdhq;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_4

    .line 15
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzc()I

    move-result v7

    .line 16
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfbp;->zzg:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeew;->zzb:Lcom/google/android/gms/internal/ads/zzdga;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzeci;->zza:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcqw;

    invoke-direct {v7, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdic;

    invoke-direct {p1, v5}, Lcom/google/android/gms/internal/ads/zzdic;-><init>(Lcom/google/android/gms/internal/ads/zzdhq;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdjv;

    invoke-direct {p2, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdjv;-><init>(Lcom/google/android/gms/internal/ads/zzbpk;Lcom/google/android/gms/internal/ads/zzbpj;Lcom/google/android/gms/internal/ads/zzbpn;)V

    .line 19
    invoke-virtual {v4, v7, p1, p2}, Lcom/google/android/gms/internal/ads/zzdga;->zze(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzdic;Lcom/google/android/gms/internal/ads/zzdjv;)Lcom/google/android/gms/internal/ads/zzdhs;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdht;->zzk()Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdht;->zzd()Lcom/google/android/gms/internal/ads/zzcwb;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcln;

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzcln;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeew;->zzc:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdat;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdht;->zza()Lcom/google/android/gms/internal/ads/zzdhl;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefy;

    const-string p2, "No corresponding native ad listener"

    .line 18
    invoke-direct {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefy;

    const-string p2, "No native ad mappers"

    .line 9
    invoke-direct {p1, v4, p2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfbw;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfcn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzm(Lcom/google/android/gms/internal/ads/zzfaz;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeew;->zza:Landroid/content/Context;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzi:Lcom/google/android/gms/internal/ads/zzbfi;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzg:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfcn;->zzp(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/internal/ads/zzbfi;Ljava/util/List;)V

    return-void
.end method
