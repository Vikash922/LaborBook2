.class Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestinationMutationInfo"
.end annotation


# instance fields
.field private final onDestinationAvailable:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestinationNotAvailable:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;",
            ">;"
        }
    .end annotation
.end field

.field private final originalDestination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;",
            "Ljava/util/function/Consumer<",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;",
            ">;)V"
        }
    .end annotation

    .line 2552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2553
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->originalDestination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    .line 2554
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->onDestinationAvailable:Ljava/util/function/Consumer;

    .line 2555
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->onDestinationNotAvailable:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public getOriginalDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .locals 1

    .line 2567
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->originalDestination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    return-object v0
.end method

.method public handleDestinationAvailable(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 1

    .line 2559
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->onDestinationAvailable:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public handleDestinationUnavailable()V
    .locals 2

    .line 2563
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->onDestinationNotAvailable:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->originalDestination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
