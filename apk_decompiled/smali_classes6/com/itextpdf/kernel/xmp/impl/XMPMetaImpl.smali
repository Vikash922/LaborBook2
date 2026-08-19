.class public Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lcom/itextpdf/kernel/xmp/XMPConst;
.implements Lcom/itextpdf/kernel/xmp/XMPMeta;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final VALUE_BASE64:I = 0x7

.field private static final VALUE_BOOLEAN:I = 0x1

.field private static final VALUE_CALENDAR:I = 0x6

.field private static final VALUE_DATE:I = 0x5

.field private static final VALUE_DOUBLE:I = 0x4

.field private static final VALUE_INTEGER:I = 0x2

.field private static final VALUE_LONG:I = 0x3

.field private static final VALUE_STRING:I


# instance fields
.field private packetHeader:Ljava/lang/String;

.field private tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 88
    new-instance v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-direct {v1, v0, v0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    return-void
.end method

.method private doSetArrayItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ILjava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 1129
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v1, "[]"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 1130
    invoke-static {p4, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p4

    const/4 v1, 0x1

    .line 1134
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-eqz p5, :cond_0

    add-int/2addr v2, v1

    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    move p2, v2

    :cond_1
    if-gt v1, p2, :cond_3

    if-gt p2, v2, :cond_3

    if-nez p5, :cond_2

    .line 1144
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(I)V

    .line 1146
    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    const/4 p1, 0x0

    .line 1147
    invoke-virtual {p0, v0, p3, p4, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V

    return-void

    .line 1151
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Array index out of bounds"

    const/16 p3, 0x68

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private evaluateNodeValue(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 1213
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    if-nez v0, :cond_1

    .line 1244
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1236
    :pswitch_0
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_1

    .line 1232
    :pswitch_1
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/XMPDateTime;

    move-result-object p1

    .line 1233
    invoke-interface {p1}, Lcom/itextpdf/kernel/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    goto :goto_1

    .line 1229
    :pswitch_2
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/XMPDateTime;

    move-result-object p1

    goto :goto_1

    .line 1226
    :pswitch_3
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertToDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1

    .line 1223
    :pswitch_4
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertToLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    .line 1220
    :pswitch_5
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertToInteger(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 1217
    :pswitch_6
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertToBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 1244
    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 107
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 108
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 112
    new-instance p3, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>()V

    .line 114
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isOnlyArrayOptions()Z

    move-result v0

    const/16 v1, 0x67

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 121
    invoke-static {p3, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p3

    .line 127
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p2

    const/16 v0, 0x66

    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 139
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "The named property is not an array"

    invoke-direct {p1, p2, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 149
    :cond_2
    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 151
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v1, 0x1

    invoke-static {p2, p1, v1, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p2

    if-eqz p2, :cond_3

    goto :goto_0

    :goto_1
    const/4 v3, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    .line 165
    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->doSetArrayItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ILjava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V

    return-void

    .line 154
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Failure creating array node"

    invoke-direct {p1, p2, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 160
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Explicit arrayOptions required to create new array"

    invoke-direct {p1, p2, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 116
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Only array form flags allowed for arrayOptions"

    invoke-direct {p1, p2, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public appendArrayItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 1071
    new-instance v1, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;-><init>(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    return-object v1
.end method

.method public countArrayItems(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 176
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 177
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 179
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 180
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result p1

    return p1

    .line 193
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "The named property is not an array"

    const/16 v0, 0x66

    invoke-direct {p1, p2, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public deleteArrayItem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 202
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 203
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 205
    invoke-static {p2, p3}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 219
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 220
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 222
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 224
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public deleteQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 242
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 243
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p4}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public deleteStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 261
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 262
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 265
    invoke-static {p3, p4}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public doesArrayItemExist(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 297
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 298
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 300
    invoke-static {p2, p3}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 279
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 280
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 282
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 283
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public doesQualifierExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 335
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 336
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 338
    invoke-static {p3, p4}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 339
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public doesStructFieldExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 316
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 317
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    .line 319
    invoke-static {p3, p4}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 320
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public dumpObject()Ljava/lang/String;
    .locals 2

    .line 1078
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->dumpNode(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 351
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 352
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 354
    invoke-static {p2, p3}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object p1

    return-object p1
.end method

.method public getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 362
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 363
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 364
    invoke-static {p4}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 366
    invoke-static {p3}, Lcom/itextpdf/kernel/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 367
    :goto_0
    invoke-static {p4}, Lcom/itextpdf/kernel/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 369
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 370
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 376
    :cond_1
    invoke-static {p1, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->chooseLocalizedText(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    .line 377
    aget-object p2, p1, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    .line 378
    aget-object p1, p1, p3

    check-cast p1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    if-eqz p2, :cond_2

    .line 382
    new-instance p2, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl$1;

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl$1;-><init>(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    return-object p2

    :cond_2
    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPacketHeader()Ljava/lang/String;
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 605
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object p1

    return-object p1
.end method

.method protected getProperty(Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 630
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 631
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 633
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 634
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 638
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Property must be simple when a value type is requested"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 644
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->evaluateNodeValue(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)Ljava/lang/Object;

    move-result-object p2

    .line 646
    new-instance p3, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl$2;-><init>(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    return-object p3

    :cond_2
    return-object v1
.end method

.method public getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 842
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    return-object p1
.end method

.method public getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 722
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getPropertyCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 822
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public getPropertyDate(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/XMPDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 802
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/xmp/XMPDateTime;

    return-object p1
.end method

.method public getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 782
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 742
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getPropertyLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 762
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method protected getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 697
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 698
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 700
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 701
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 705
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Property must be simple when a value type is requested"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 711
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->evaluateNodeValue(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 848
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 870
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 871
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p4}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 874
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object p1

    return-object p1
.end method

.method public getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    return-object v0
.end method

.method public getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 882
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 883
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p4}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 886
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object p1

    return-object p1
.end method

.method public insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 961
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 940
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 941
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 944
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 945
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    move-object v2, p0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 949
    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->doSetArrayItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ILjava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V

    return-void

    .line 953
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Specified array does not exist"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public iterator()Lcom/itextpdf/kernel/xmp/XMPIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0, v0, v0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/IteratorOptions;)Lcom/itextpdf/kernel/xmp/XMPIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lcom/itextpdf/kernel/xmp/options/IteratorOptions;)Lcom/itextpdf/kernel/xmp/XMPIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0, v0, v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->iterator(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/IteratorOptions;)Lcom/itextpdf/kernel/xmp/XMPIterator;

    move-result-object p1

    return-object p1
.end method

.method public iterator(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/IteratorOptions;)Lcom/itextpdf/kernel/xmp/XMPIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 905
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPIteratorImpl;-><init>(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/IteratorOptions;)V

    return-object v0
.end method

.method public normalize(Lcom/itextpdf/kernel/xmp/options/ParseOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1092
    new-instance p1, Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    invoke-direct {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;-><init>()V

    .line 1094
    :cond_0
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->process(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    return-void
.end method

.method public setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 933
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 912
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 913
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 916
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 917
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 921
    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->doSetArrayItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ILjava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V

    return-void

    .line 925
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Specified array does not exist"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 599
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 418
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 419
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 420
    invoke-static {p4}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    const/4 p6, 0x0

    if-eqz p3, :cond_0

    .line 422
    invoke-static {p3}, Lcom/itextpdf/kernel/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p6

    .line 423
    :goto_0
    invoke-static {p4}, Lcom/itextpdf/kernel/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 425
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 428
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    new-instance v0, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    const/16 v1, 0x1e00

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v1, 0x1

    invoke-static {p2, p1, v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    const/16 p2, 0x66

    if-eqz p1, :cond_18

    .line 436
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    goto :goto_1

    .line 444
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p3, "Specified property is no alt-text array"

    invoke-direct {p1, p3, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 453
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "x-default"

    if-eqz v2, :cond_5

    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 456
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 457
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml:lang"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 461
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move p2, v1

    goto :goto_2

    .line 459
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p3, "Language qualifier must be first"

    invoke-direct {p1, p3, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    move-object v2, p6

    move p2, v3

    :goto_2
    if-eqz v2, :cond_6

    .line 470
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 472
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 473
    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 479
    :cond_6
    invoke-static {p1, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->chooseLocalizedText(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p3

    .line 480
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 481
    aget-object p3, p3, v1

    check-cast p3, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 483
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_14

    if-eq v0, v1, :cond_d

    const/4 p6, 0x2

    if-eq v0, p6, :cond_b

    const/4 p3, 0x3

    if-eq v0, p3, :cond_a

    const/4 p3, 0x4

    if-eq v0, p3, :cond_8

    const/4 p3, 0x5

    if-ne v0, p3, :cond_7

    .line 574
    invoke-static {p1, p4, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_16

    goto/16 :goto_5

    .line 583
    :cond_7
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Unexpected result from ChooseLocalizedText"

    const/16 p3, 0x9

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_8
    if-eqz v2, :cond_9

    .line 564
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result p3

    if-ne p3, v1, :cond_9

    .line 566
    invoke-virtual {v2, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 568
    :cond_9
    invoke-static {p1, p4, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 553
    :cond_a
    invoke-static {p1, p4, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_16

    goto/16 :goto_5

    :cond_b
    if-eqz p2, :cond_c

    if-eq v2, p3, :cond_c

    if-eqz v2, :cond_c

    .line 541
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 543
    invoke-virtual {v2, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 545
    :cond_c
    invoke-virtual {p3, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    if-nez v3, :cond_f

    if-eqz p2, :cond_e

    if-eq v2, p3, :cond_e

    if-eqz v2, :cond_e

    .line 506
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 508
    invoke-virtual {v2, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 511
    :cond_e
    invoke-virtual {p3, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_6

    .line 517
    :cond_f
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p3

    :cond_10
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_13

    .line 519
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    if-eq p4, v2, :cond_10

    .line 521
    invoke-virtual {p4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_11

    .line 522
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_11
    move-object v3, p6

    .line 521
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3

    .line 526
    :cond_12
    invoke-virtual {p4, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    if-eqz v2, :cond_16

    .line 531
    invoke-virtual {v2, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_6

    .line 491
    :cond_14
    invoke-static {p1, v4, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_15

    .line 495
    invoke-static {p1, p4, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_5
    move p2, v1

    :cond_16
    :goto_6
    if-nez p2, :cond_17

    .line 589
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result p2

    if-ne p2, v1, :cond_17

    .line 591
    invoke-static {p1, v4, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void

    .line 434
    :cond_18
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p3, "Failed to find or create array node"

    invoke-direct {p1, p3, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method setNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1174
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->clear()V

    .line 1178
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->mergeWith(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 1180
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 1183
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->setNodeValue(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 1187
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    .line 1189
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Composite nodes can\'t have values"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 1192
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChildren()V

    :goto_1
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setPacketHeader(Ljava/lang/String;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 989
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 968
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 969
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 971
    invoke-static {p4, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p4

    .line 973
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;

    move-result-object p1

    .line 975
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 978
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Z)V

    return-void

    .line 982
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Specified property does not exist"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 862
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[BLcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 855
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 736
    const-string p3, "True"

    goto :goto_0

    :cond_0
    const-string p3, "False"

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 729
    const-string p3, "True"

    goto :goto_0

    :cond_0
    const-string p3, "False"

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 829
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/XMPDateTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 816
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/XMPDateTime;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 809
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyDouble(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 796
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p3, p4}, Ljava/lang/Double;-><init>(D)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyDouble(Ljava/lang/String;Ljava/lang/String;DLcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 789
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 756
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setPropertyLong(Ljava/lang/String;Ljava/lang/String;JLcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 769
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1012
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 996
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 997
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p4}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeQualifierPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1005
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void

    .line 1001
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Specified property does not exist!"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1031
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 1020
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 1021
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, p4}, Lcom/itextpdf/kernel/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1024
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public sort()V
    .locals 1

    .line 1084
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->tree:Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->sort()V

    return-void
.end method
