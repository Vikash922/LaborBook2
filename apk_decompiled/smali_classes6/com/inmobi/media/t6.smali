.class public final Lcom/inmobi/media/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/inmobi/media/r6;


# instance fields
.field public final a:Lcom/inmobi/media/u6;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J

.field public final e:Lkotlin/Lazy;

.field public f:I

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/r6;

    invoke-direct {v0}, Lcom/inmobi/media/r6;-><init>()V

    sput-object v0, Lcom/inmobi/media/t6;->CREATOR:Lcom/inmobi/media/r6;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/inmobi/media/u6;Ljava/lang/String;II)V
    .locals 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/t6;-><init>(Lcom/inmobi/media/u6;Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/media/u6;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "landingPageTelemetryMetaData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/inmobi/media/t6;->c:I

    .line 5
    iput-wide p4, p0, Lcom/inmobi/media/t6;->d:J

    .line 8
    sget-object p1, Lcom/inmobi/media/s6;->a:Lcom/inmobi/media/s6;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/t6;->e:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/inmobi/media/t6;->f:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/inmobi/media/t6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/inmobi/media/t6;

    iget-object v1, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    iget-object v3, p1, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/inmobi/media/t6;->c:I

    iget v3, p1, Lcom/inmobi/media/t6;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/inmobi/media/t6;->d:J

    iget-wide v5, p1, Lcom/inmobi/media/t6;->d:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    invoke-virtual {v0}, Lcom/inmobi/media/u6;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/inmobi/media/t6;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/inmobi/media/t6;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LandingPageTelemetryControlInfo(landingPageTelemetryMetaData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/media/t6;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/inmobi/media/t6;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 2
    iget-wide v0, p2, Lcom/inmobi/media/u6;->a:J

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 5
    iget-object p2, p2, Lcom/inmobi/media/u6;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 8
    iget-object p2, p2, Lcom/inmobi/media/u6;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 11
    iget-object p2, p2, Lcom/inmobi/media/u6;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 14
    iget-object p2, p2, Lcom/inmobi/media/u6;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 17
    iget-object p2, p2, Lcom/inmobi/media/u6;->f:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 20
    iget-object p2, p2, Lcom/inmobi/media/u6;->g:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 23
    iget-boolean p2, p2, Lcom/inmobi/media/u6;->h:Z

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    iget-object p2, p0, Lcom/inmobi/media/t6;->a:Lcom/inmobi/media/u6;

    .line 26
    iget-object p2, p2, Lcom/inmobi/media/u6;->i:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/inmobi/media/t6;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget p2, p0, Lcom/inmobi/media/t6;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-wide v0, p0, Lcom/inmobi/media/t6;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget p2, p0, Lcom/inmobi/media/t6;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
