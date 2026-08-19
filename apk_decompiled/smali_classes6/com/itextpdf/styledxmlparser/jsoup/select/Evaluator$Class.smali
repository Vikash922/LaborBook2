.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Class"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;->className:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasClass(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$Class;->className:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ".{0}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
