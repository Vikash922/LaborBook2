.class public final Lcom/google/android/gms/internal/measurement/zzrf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/android/gms/internal/measurement/zzri;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzrf;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/gms/internal/measurement/zzri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->zza:Lcom/google/android/gms/internal/measurement/zzrf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrh;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()D
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->zza:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzri;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzri;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public static zzb()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->zza:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzri;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzri;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->zza:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzri;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzri;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->zza:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzri;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzri;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->zza:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzri;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzri;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzf()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->zza:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrf;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzri;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzri;->zzf()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzri;

    return-object v0
.end method
