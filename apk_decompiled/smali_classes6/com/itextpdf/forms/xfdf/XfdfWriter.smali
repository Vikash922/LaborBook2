.class Lcom/itextpdf/forms/xfdf/XfdfWriter;
.super Ljava/lang/Object;
.source "XfdfWriter.java"


# static fields
.field private static logger:Lorg/slf4j/Logger;


# instance fields
.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/itextpdf/forms/xfdf/XfdfWriter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/xfdf/XfdfWriter;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/XfdfWriter;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method private static addActionObject(Lcom/itextpdf/forms/xfdf/ActionObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 7

    .line 383
    const-string v0, "Action"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getUri()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    const-string v2, "true"

    const-string v3, "Name"

    if-eqz v1, :cond_1

    .line 385
    const-string v1, "URI"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 388
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getUri()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->isMap()Z

    move-result p0

    const-string v1, "IsMap"

    if-eqz p0, :cond_0

    .line 390
    invoke-interface {p2, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_0
    const-string p0, "false"

    invoke-interface {p2, v1, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 396
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->GoTo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    const-string v1, "GoTo"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 399
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getDestination()Lcom/itextpdf/forms/xfdf/DestObject;

    move-result-object p0

    invoke-static {p0, v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addDest(Lcom/itextpdf/forms/xfdf/DestObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 401
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 402
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->GoToR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "OriginalName"

    const-string v5, "File"

    if-eqz v1, :cond_5

    .line 404
    const-string v1, "GoToR"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 406
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getDestination()Lcom/itextpdf/forms/xfdf/DestObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 407
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getDestination()Lcom/itextpdf/forms/xfdf/DestObject;

    move-result-object p0

    invoke-static {p0, v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addDest(Lcom/itextpdf/forms/xfdf/DestObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_1

    .line 408
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getFileOriginalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 409
    invoke-interface {p2, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 410
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getFileOriginalName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v4, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 413
    :cond_4
    sget-object p0, Lcom/itextpdf/forms/xfdf/XfdfWriter;->logger:Lorg/slf4j/Logger;

    const-string p2, "Dest or File elements are missing."

    invoke-interface {p0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 416
    :goto_1
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 418
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Named:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 419
    const-string v1, "Named"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 420
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getNameAction()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v3, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 424
    :cond_6
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Launch:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 425
    const-string v1, "Launch"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 426
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getFileOriginalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 427
    invoke-interface {p2, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 428
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->getFileOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 431
    :cond_7
    sget-object p2, Lcom/itextpdf/forms/xfdf/XfdfWriter;->logger:Lorg/slf4j/Logger;

    const-string v3, "File element is missing"

    invoke-interface {p2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 433
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/ActionObject;->isNewWindow()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 434
    const-string p0, "NewWindow"

    invoke-interface {v1, p0, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_8
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 439
    :cond_9
    :goto_3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 5

    .line 181
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 187
    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getPopup()Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 191
    const-string v1, "popup"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getPopup()Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 196
    const-string v1, "contents"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 198
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAppearance()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 202
    const-string v1, "appearance"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAppearance()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 204
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 213
    :cond_4
    const-string v1, "link"

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 214
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getDestination()Lcom/itextpdf/forms/xfdf/DestObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 215
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getDestination()Lcom/itextpdf/forms/xfdf/DestObject;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addDest(Lcom/itextpdf/forms/xfdf/DestObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_1

    .line 216
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAction()Lcom/itextpdf/forms/xfdf/ActionObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 217
    const-string v1, "OnActivation"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAction()Lcom/itextpdf/forms/xfdf/ActionObject;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addActionObject(Lcom/itextpdf/forms/xfdf/ActionObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 219
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 221
    :cond_6
    sget-object v1, Lcom/itextpdf/forms/xfdf/XfdfWriter;->logger:Lorg/slf4j/Logger;

    const-string v2, "Dest and OnActivation elements are both missing"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 224
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getBorderStyleAlt()Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 225
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getBorderStyleAlt()Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addBorderStyleAlt(Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 229
    :cond_7
    const-string v1, "freetext"

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 230
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getDefaultAppearance()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 232
    const-string v2, "defaultappearance"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 233
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 234
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 236
    :cond_8
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getDefaultStyle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 238
    const-string v1, "defaultstyle"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 239
    invoke-interface {p2, p0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 240
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 244
    :cond_9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addBorderStyleAlt(Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 250
    const-string v0, "BorderStyleAlt"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 253
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->getHCornerRadius()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HCornerRadius"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->getVCornerRadius()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCornerRadius"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->getWidth()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Width"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->getDashPattern()[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->getDashPattern()[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DashPattern"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 266
    :cond_1
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addDest(Lcom/itextpdf/forms/xfdf/DestObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 354
    const-string v0, "Dest"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    const-string v1, "Named"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 358
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getXyz()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getXyz()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addXYZ(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFit()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFit()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addFit(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitB()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitB()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addFitB(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_0

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitBH()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitBH()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addFitBH(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitBV()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 369
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitBV()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addFitBV(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_0

    .line 370
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitH()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 371
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitH()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addFitH(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_0

    .line 372
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitR()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 373
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitR()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addFitR(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_0

    .line 374
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitV()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 375
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/DestObject;->getFitV()Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addFitV(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 378
    :cond_8
    :goto_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addFAttributes(Lcom/itextpdf/forms/xfdf/FObject;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FObject;->getHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "href"

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FObject;->getHref()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static addField(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/forms/xfdf/FieldObject;",
            "Lorg/w3c/dom/Element;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/FieldObject;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-static {p0, p3}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->findChildrenFields(Lcom/itextpdf/forms/xfdf/FieldObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 84
    const-string v1, "field"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 85
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FieldObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/xfdf/FieldObject;

    .line 90
    invoke-static {v0, v1, p2, p3}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addField(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/List;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FieldObject;->getValue()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FieldObject;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 94
    const-string p3, "value"

    invoke-interface {p2, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FieldObject;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 96
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 98
    :cond_1
    sget-object p0, Lcom/itextpdf/forms/xfdf/XfdfWriter;->logger:Lorg/slf4j/Logger;

    const-string p2, "Field has no value."

    invoke-interface {p0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 101
    :cond_2
    :goto_1
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addFit(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 1

    .line 283
    const-string v0, "Fit"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 286
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getPage()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Page"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addFitB(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 1

    .line 292
    const-string v0, "FitB"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 295
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getPage()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Page"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addFitBH(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 301
    const-string v0, "FitBH"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getPage()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getTop()F

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Top"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addFitBV(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 311
    const-string v0, "FitBV"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getPage()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getLeft()F

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Left"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addFitH(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 321
    const-string v0, "FitH"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 324
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getPage()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getTop()F

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Top"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addFitR(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 331
    const-string v0, "FitR"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 334
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getPage()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getLeft()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Left"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getBottom()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bottom"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getRight()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Right"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getTop()F

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Top"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addFitV(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 344
    const-string v0, "FitV"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 347
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getPage()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getLeft()F

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Left"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addIdsAttributes(Lcom/itextpdf/forms/xfdf/IdsObject;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/IdsObject;->getOriginal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "original"

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/IdsObject;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/IdsObject;->getModified()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "modified"

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/IdsObject;->getModified()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static addPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getAttributes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 444
    invoke-virtual {v0}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_0
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static addXYZ(Lcom/itextpdf/forms/xfdf/FitObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 2

    .line 270
    const-string v0, "XYZ"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 273
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getPage()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getLeft()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Left"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getBottom()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bottom"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getRight()F

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Right"

    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FitObject;->getTop()F

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFloatToString(F)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Top"

    invoke-interface {p2, v0, p0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static findChildrenFields(Lcom/itextpdf/forms/xfdf/FieldObject;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/forms/xfdf/FieldObject;",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/FieldObject;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/FieldObject;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/xfdf/FieldObject;

    .line 173
    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/FieldObject;->getParent()Lcom/itextpdf/forms/xfdf/FieldObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/FieldObject;->getParent()Lcom/itextpdf/forms/xfdf/FieldObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/FieldObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfdf/FieldObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeDom(Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/itextpdf/forms/xfdf/XfdfFileUtils;->createNewXfdfDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 109
    const-string v1, "xfdf"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getFields()Lcom/itextpdf/forms/xfdf/FieldsObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getFields()Lcom/itextpdf/forms/xfdf/FieldsObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/FieldsObject;->getFieldList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getFields()Lcom/itextpdf/forms/xfdf/FieldsObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/FieldsObject;->getFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    const-string v2, "fields"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 116
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 117
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getFields()Lcom/itextpdf/forms/xfdf/FieldsObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/forms/xfdf/FieldsObject;->getFieldList()Ljava/util/List;

    move-result-object v3

    .line 118
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/forms/xfdf/FieldObject;

    .line 119
    invoke-virtual {v5}, Lcom/itextpdf/forms/xfdf/FieldObject;->getParent()Lcom/itextpdf/forms/xfdf/FieldObject;

    move-result-object v6

    if-nez v6, :cond_0

    .line 120
    invoke-static {v5, v2, v0, v3}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addField(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/util/List;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getAnnots()Lcom/itextpdf/forms/xfdf/AnnotsObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getAnnots()Lcom/itextpdf/forms/xfdf/AnnotsObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->getAnnotsList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getAnnots()Lcom/itextpdf/forms/xfdf/AnnotsObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->getAnnotsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    const-string v2, "annots"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 129
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 131
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getAnnots()Lcom/itextpdf/forms/xfdf/AnnotsObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->getAnnotsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 132
    invoke-static {v4, v2, v0}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getF()Lcom/itextpdf/forms/xfdf/FObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 138
    const-string v2, "f"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 139
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getF()Lcom/itextpdf/forms/xfdf/FObject;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addFAttributes(Lcom/itextpdf/forms/xfdf/FObject;Lorg/w3c/dom/Element;)V

    .line 140
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 144
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getIds()Lcom/itextpdf/forms/xfdf/IdsObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 145
    const-string v2, "ids"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->getIds()Lcom/itextpdf/forms/xfdf/IdsObject;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->addIdsAttributes(Lcom/itextpdf/forms/xfdf/IdsObject;Lorg/w3c/dom/Element;)V

    .line 147
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/itextpdf/forms/xfdf/XfdfWriter;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfFileUtils;->saveXfdfDocumentToFile(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method write(Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfdf/XfdfWriter;->writeDom(Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    return-void
.end method
