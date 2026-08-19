.class public final Lcom/google/android/gms/internal/ads/zzaxa;
.super Lcom/google/android/gms/internal/ads/zzaxo;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V
    .locals 7

    .line 1
    const-string v3, "N2hMYZs1ev7Z/FgteF5QqKUc7rf1QopGcozQWEbWilo="

    const/16 v6, 0xc

    const-string v2, "H15E0WS5fFY9seCuALNpJkFkFuaIx1/XSodKeX1rubjSuXoMYEWIVaGutUfPnKqm"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxo;-><init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzd:Lcom/google/android/gms/internal/ads/zzarz;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzy(J)Lcom/google/android/gms/internal/ads/zzarz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zze:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zza:Lcom/google/android/gms/internal/ads/zzawb;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawb;->zzb()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzy(J)Lcom/google/android/gms/internal/ads/zzarz;

    return-void
.end method
