.class public final Lcom/google/android/gms/internal/ads/zzbbn$zzg;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbn$zzh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgxv<",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzg;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzh;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

.field private static volatile zze:Lcom/google/android/gms/internal/ads/zzgzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgzo<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgyh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgyh<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxv;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzg:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzbK()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    return-void
.end method

.method public static zzA()Lcom/google/android/gms/internal/ads/zzgzo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzgzo<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzg;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbN()Lcom/google/android/gms/internal/ads/zzgzo;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzbbn$zzg;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzN(Ljava/lang/Iterable;)V

    return-void
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzbbn$zzg;Lcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzO(Lcom/google/android/gms/internal/ads/zzbbn$zzd;)V

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzbbn$zzg;ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzP(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V

    return-void
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzQ()V

    return-void
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzR()V

    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzS()V

    return-void
.end method

.method static bridge synthetic zzI(Lcom/google/android/gms/internal/ads/zzbbn$zzg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzU(I)V

    return-void
.end method

.method static bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzbbn$zzg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzV(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzbbn$zzg;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzW(Lcom/google/android/gms/internal/ads/zzgwn;)V

    return-void
.end method

.method static bridge synthetic zzL(Lcom/google/android/gms/internal/ads/zzbbn$zzg;Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzX(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V

    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/gms/internal/ads/zzbbn$zzg;ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzY(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V

    return-void
.end method

.method private zzN(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaQ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzO(Lcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private zzP(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyh;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private zzQ()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh()Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzg:Ljava/lang/String;

    return-void
.end method

.method private zzR()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzi:I

    return-void
.end method

.method private zzS()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzbK()Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    return-void
.end method

.method private zzT()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbL(Lcom/google/android/gms/internal/ads/zzgyh;)Lcom/google/android/gms/internal/ads/zzgyh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    :cond_0
    return-void
.end method

.method private zzU(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private zzV(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzg:Ljava/lang/String;

    return-void
.end method

.method private zzW(Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzx()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzg:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    return-void
.end method

.method private zzX(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    return-void
.end method

.method private zzY(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgyh;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzaZ()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzba(Lcom/google/android/gms/internal/ads/zzgxv;)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;

    return-object p0
.end method

.method static bridge synthetic zzg()Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object v0
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object v0
.end method

.method public static zzi(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzbk(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzj(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzbl(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzk(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbm(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzgwt;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbn(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwt;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzm(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbo(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzn(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbp(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzo([B)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbq(Lcom/google/android/gms/internal/ads/zzgxv;[B)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzp(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbr(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzw(Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbs(Lcom/google/android/gms/internal/ads/zzgxv;Lcom/google/android/gms/internal/ads/zzgwt;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzx(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbu(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzy(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbv(Lcom/google/android/gms/internal/ads/zzgxv;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method

.method public static zzz([BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgyk;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzbx(Lcom/google/android/gms/internal/ads/zzgxv;[BLcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p0
.end method


# virtual methods
.method public zzB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbbn$zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    return-object v0
.end method

.method public zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->size()I

    move-result v0

    return v0
.end method

.method public zzb(I)Lcom/google/android/gms/internal/ads/zzbbn$zzd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzd;

    return-object p1
.end method

.method public zzc(I)Lcom/google/android/gms/internal/ads/zzbbn$zze;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zze;

    return-object p1
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxu;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zze:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zze:Lcom/google/android/gms/internal/ads/zzgzo;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgxq;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zze:Lcom/google/android/gms/internal/ads/zzgzo;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :cond_2
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string v0, "zzf"

    const-string v1, "zzg"

    const-string v2, "zzh"

    const-class v3, Lcom/google/android/gms/internal/ads/zzbbn$zzd;

    const-string v4, "zzi"

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zze()Lcom/google/android/gms/internal/ads/zzgyb;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzd:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u180c\u0001"

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzbQ(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zzq()Lcom/google/android/gms/internal/ads/zzbbn$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzi:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzb(I)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    :cond_0
    return-object v0
.end method

.method public zzr()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzg:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    return-object v0
.end method

.method public zzs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public zzt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzh:Lcom/google/android/gms/internal/ads/zzgyh;

    return-object v0
.end method

.method public zzu()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzv()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
