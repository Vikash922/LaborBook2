.class public Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
.super Ljava/lang/Object;
.source "PdfCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;
    }
.end annotation


# static fields
.field private static final B:[B

.field private static final BDC:[B

.field private static final BI:[B

.field private static final BMC:[B

.field private static final BStar:[B

.field private static final BT:[B

.field private static final CS:[B

.field private static final Do:[B

.field private static final EI:[B

.field private static final EMC:[B

.field private static final ET:[B

.field private static final G:[B

.field private static final ID:[B

.field private static final IDENTITY_MATRIX_EPS:F = 1.0E-4f

.field private static final J:[B

.field private static final K:[B

.field private static final M:[B

.field private static final Q:[B

.field private static final RG:[B

.field private static final S:[B

.field private static final SCN:[B

.field private static final TD:[B

.field private static final TJ:[B

.field private static final TL:[B

.field private static final TStar:[B

.field private static final Tc:[B

.field private static final Td:[B

.field private static final Tf:[B

.field private static final Tj:[B

.field private static final Tm:[B

.field private static final Tr:[B

.field private static final Ts:[B

.field private static final Tw:[B

.field private static final Tz:[B

.field private static final W:[B

.field private static final WStar:[B

.field private static final b:[B

.field private static final bStar:[B

.field private static final c:[B

.field private static final cm:[B

.field private static final cmyk:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

.field private static final cs:[B

.field private static final d:[B

.field private static final f:[B

.field private static final fStar:[B

.field private static final g:[B

.field private static final gray:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

.field private static final gs:[B

.field private static final h:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:[B

.field private static final l:[B

.field private static final m:[B

.field private static final n:[B

.field private static final pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

.field private static final q:[B

.field private static final re:[B

.field private static final rg:[B

.field private static final rgb:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

.field private static final ri:[B

.field private static final s:[B

.field private static final scn:[B

.field private static final sh:[B

.field private static final v:[B

.field private static final w:[B

.field private static final y:[B


# instance fields
.field protected contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

.field protected currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

.field private defaultDeviceGrayBlackColorCheckRequired:Z

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected gsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;",
            ">;"
        }
    .end annotation
.end field

.field protected layerDepth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mcDepth:I

.field protected resources:Lcom/itextpdf/kernel/pdf/PdfResources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-string v0, "B\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->B:[B

    .line 109
    const-string v0, "b\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->b:[B

    .line 110
    const-string v0, "BDC\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BDC:[B

    .line 111
    const-string v0, "BI\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BI:[B

    .line 112
    const-string v0, "BMC\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BMC:[B

    .line 113
    const-string v0, "B*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BStar:[B

    .line 114
    const-string v0, "b*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bStar:[B

    .line 115
    const-string v0, "BT\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BT:[B

    .line 116
    const-string v0, "c\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->c:[B

    .line 117
    const-string v0, "cm\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cm:[B

    .line 118
    const-string v0, "cs\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cs:[B

    .line 119
    const-string v0, "CS\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->CS:[B

    .line 120
    const-string v0, "d\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    .line 121
    const-string v0, "Do\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Do:[B

    .line 122
    const-string v0, "EI\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EI:[B

    .line 123
    const-string v0, "EMC\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EMC:[B

    .line 124
    const-string v0, "ET\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ET:[B

    .line 125
    const-string v0, "f\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->f:[B

    .line 126
    const-string v0, "f*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fStar:[B

    .line 127
    const-string v0, "G\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->G:[B

    .line 128
    const-string v0, "g\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->g:[B

    .line 129
    const-string v0, "gs\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gs:[B

    .line 130
    const-string v0, "h\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->h:[B

    .line 131
    const-string v0, "i\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->i:[B

    .line 132
    const-string v0, "ID\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ID:[B

    .line 133
    const-string v0, "j\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->j:[B

    .line 134
    const-string v0, "J\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->J:[B

    .line 135
    const-string v0, "K\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->K:[B

    .line 136
    const-string v0, "k\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->k:[B

    .line 137
    const-string v0, "l\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->l:[B

    .line 138
    const-string v0, "m\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->m:[B

    .line 139
    const-string v0, "M\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->M:[B

    .line 140
    const-string v0, "n\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->n:[B

    .line 141
    const-string v0, "q\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->q:[B

    .line 142
    const-string v0, "Q\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Q:[B

    .line 143
    const-string v0, "re\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->re:[B

    .line 144
    const-string v0, "rg\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rg:[B

    .line 145
    const-string v0, "RG\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->RG:[B

    .line 146
    const-string v0, "ri\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ri:[B

    .line 147
    const-string v0, "S\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->S:[B

    .line 148
    const-string v0, "s\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->s:[B

    .line 149
    const-string v0, "scn\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->scn:[B

    .line 150
    const-string v0, "SCN\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->SCN:[B

    .line 151
    const-string v0, "sh\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->sh:[B

    .line 152
    const-string v0, "Tc\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tc:[B

    .line 153
    const-string v0, "Td\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 154
    const-string v0, "TD\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TD:[B

    .line 155
    const-string v0, "Tf\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tf:[B

    .line 156
    const-string v0, "TJ\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TJ:[B

    .line 157
    const-string v0, "Tj\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    .line 158
    const-string v0, "TL\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TL:[B

    .line 159
    const-string v0, "Tm\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tm:[B

    .line 160
    const-string v0, "Tr\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tr:[B

    .line 161
    const-string v0, "Ts\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Ts:[B

    .line 162
    const-string v0, "T*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TStar:[B

    .line 163
    const-string v0, "Tw\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tw:[B

    .line 164
    const-string v0, "Tz\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tz:[B

    .line 165
    const-string v0, "v\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->v:[B

    .line 166
    const-string v0, "W\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->W:[B

    .line 167
    const-string v0, "w\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->w:[B

    .line 168
    const-string v0, "W*\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->WStar:[B

    .line 169
    const-string v0, "y\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->y:[B

    .line 171
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gray:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    .line 172
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rgb:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    .line 173
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cmyk:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    .line 174
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;I)V
    .locals 0

    .line 276
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getLastContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getLength()I

    move-result v0

    if-gtz v0, :cond_1

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isIgnorePageRotationForContent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 233
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfPage;Z)V
    .locals 3

    .line 246
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getPageStream(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->newContentStreamBefore()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const-string v1, "q\n"

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 250
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const-string v1, "Q\n"

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isIgnorePageRotationForContent()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 253
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isPageRotationInverseMatrixWritten()Z

    move-result p2

    if-nez p2, :cond_2

    .line 254
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->applyRotation(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 255
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->setPageRotationInverseMatrixWritten()V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->defaultDeviceGrayBlackColorCheckRequired:Z

    .line 185
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    .line 189
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 222
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ensureStreamDataIsReadyToBeProcessed(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 223
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 224
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method private addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    .line 2346
    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method private addFormAt(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    .line 2323
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->calculateBBoxMultipliedByMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    .line 2324
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2325
    new-instance v4, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v2

    invoke-direct {v4, v5, v2, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2326
    new-instance v2, Lcom/itextpdf/kernel/geom/Vector;

    invoke-direct {v2, v0, v1, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2327
    new-instance v5, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v8

    add-float/2addr v0, v8

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v8

    sub-float/2addr v0, v8

    const/4 v8, 0x1

    .line 2328
    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v9

    add-float/2addr v1, v9

    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v9

    sub-float/2addr v1, v9

    invoke-direct {v5, v0, v1, v6}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2330
    invoke-static {v2, v5, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->calculateTransformationMatrix(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)[F

    move-result-object v0

    .line 2331
    aget v11, v0, v7

    aget v12, v0, v8

    const/4 v1, 0x2

    aget v13, v0, v1

    const/4 v1, 0x3

    aget v14, v0, v1

    const/4 v1, 0x4

    aget v15, v0, v1

    const/4 v1, 0x5

    aget v16, v0, v1

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method private addFormFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 10

    .line 2357
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->calculateBBoxMultipliedByMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2358
    new-instance v1, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2359
    new-instance v2, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v0

    invoke-direct {v2, v3, v0, v4}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2360
    new-instance v0, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v5

    invoke-direct {v0, v3, v5, v4}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2361
    new-instance v3, Lcom/itextpdf/kernel/geom/Vector;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p2

    invoke-direct {v3, v5, p2, v4}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    .line 2363
    invoke-static {v0, v3, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->calculateTransformationMatrix(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)[F

    move-result-object p2

    const/4 v0, 0x0

    .line 2364
    aget v3, p2, v0

    const/4 v0, 0x1

    aget v4, p2, v0

    const/4 v0, 0x2

    aget v5, p2, v0

    const/4 v0, 0x3

    aget v6, p2, v0

    const/4 v0, 0x4

    aget v7, p2, v0

    const/4 v0, 0x5

    aget v8, p2, v0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method private addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 14

    move-object v13, p0

    .line 2304
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    if-nez p8, :cond_0

    .line 2305
    invoke-static/range {p2 .. p7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->isIdentityMatrix(FFFFFF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move/from16 v0, p2

    float-to-double v1, v0

    move/from16 v0, p3

    float-to-double v3, v0

    move/from16 v0, p4

    float-to-double v5, v0

    move/from16 v0, p5

    float-to-double v7, v0

    move/from16 v0, p6

    float-to-double v9, v0

    move/from16 v0, p7

    float-to-double v11, v0

    move-object v0, p0

    .line 2306
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2308
    :cond_1
    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    move-object v1, p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 2309
    iget-object v1, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Do:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2310
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v13
.end method

.method private addImageAt(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 8

    .line 2402
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getWidth()F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getHeight()F

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method private addImageFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 8

    .line 2413
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method private addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 15

    move-object v13, p0

    move-object/from16 v14, p1

    .line 2380
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move/from16 v0, p2

    float-to-double v1, v0

    move/from16 v0, p3

    float-to-double v3, v0

    move/from16 v0, p4

    float-to-double v5, v0

    move/from16 v0, p5

    float-to-double v7, v0

    move/from16 v0, p6

    float-to-double v9, v0

    move/from16 v0, p7

    float-to-double v11, v0

    move-object v0, p0

    .line 2381
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2383
    instance-of v0, v14, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    move-object v1, v14

    check-cast v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    goto :goto_0

    .line 2386
    :cond_0
    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addImage(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 2388
    :goto_0
    iget-object v1, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Do:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2389
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v13
.end method

.method private addToPropertiesAndBeginLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)V
    .locals 2

    .line 2444
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    .line 2445
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 2446
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BDC:[B

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    return-void
.end method

.method private applyRotation(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 14

    .line 2476
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPageSizeWithRotation()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    .line 2477
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result p1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2486
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result p1

    float-to-double v11, p1

    const-wide/16 v1, 0x0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 2483
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result p1

    float-to-double v10, p1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p1

    float-to-double v12, p1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 2480
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result p1

    float-to-double v9, p1

    const-wide/16 v11, 0x0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :goto_0
    return-void
.end method

.method public static bezierArc(DDDDDD)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDD)",
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation

    cmpl-double v0, p0, p4

    if-lez v0, :cond_0

    move-wide/from16 v2, p0

    move-wide/from16 v0, p4

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p0

    move-wide/from16 v2, p4

    :goto_0
    cmpl-double v4, p6, p2

    if-lez v4, :cond_1

    move-wide/from16 v6, p2

    move-wide/from16 v4, p6

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p2

    move-wide/from16 v6, p6

    .line 1130
    :goto_1
    invoke-static/range {p10 .. p11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_2

    move-wide/from16 v10, p10

    const/4 v8, 0x1

    goto :goto_2

    .line 1134
    :cond_2
    invoke-static/range {p10 .. p11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    int-to-double v10, v8

    div-double v10, p10, v10

    :goto_2
    add-double v12, v0, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double v16, v4, v6

    div-double v16, v16, v14

    sub-double/2addr v2, v0

    div-double/2addr v2, v14

    sub-double/2addr v6, v4

    div-double/2addr v6, v14

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v10, v0

    const-wide v14, 0x4076800000000000L    # 360.0

    div-double/2addr v4, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 1142
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    sub-double v14, v14, v18

    const-wide v18, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double v14, v14, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 1143
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_4

    int-to-double v0, v9

    mul-double/2addr v0, v10

    add-double v0, p8, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v18

    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v0, v0, v20

    add-int/lit8 v9, v9, 0x1

    move-object/from16 p1, v14

    int-to-double v14, v9

    mul-double/2addr v14, v10

    add-double v14, p8, v14

    mul-double v14, v14, v18

    div-double v14, v14, v20

    .line 1147
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 1148
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 1149
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 1150
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/16 v24, 0x0

    cmpl-double v24, v10, v24

    const/16 v25, 0x7

    const/16 v26, 0x6

    const/16 v27, 0x5

    const/16 v28, 0x4

    const/16 v29, 0x3

    const/16 v30, 0x2

    move/from16 p3, v8

    const/16 v8, 0x8

    if-lez v24, :cond_3

    mul-double v31, v2, v20

    add-double v31, v12, v31

    mul-double v33, v6, v0

    sub-double v33, v16, v33

    mul-double v35, v4, v0

    sub-double v35, v20, v35

    mul-double v35, v35, v2

    add-double v35, v12, v35

    mul-double v20, v20, v4

    add-double v0, v0, v20

    mul-double/2addr v0, v6

    sub-double v0, v16, v0

    mul-double v20, v4, v14

    add-double v20, v22, v20

    mul-double v20, v20, v2

    add-double v20, v12, v20

    mul-double v37, v4, v22

    sub-double v37, v14, v37

    mul-double v37, v37, v6

    sub-double v37, v16, v37

    mul-double v22, v22, v2

    add-double v22, v12, v22

    mul-double/2addr v14, v6

    sub-double v14, v16, v14

    .line 1152
    new-array v8, v8, [D

    const/16 v24, 0x0

    aput-wide v31, v8, v24

    const/16 v24, 0x1

    aput-wide v33, v8, v24

    aput-wide v35, v8, v30

    aput-wide v0, v8, v29

    aput-wide v20, v8, v28

    aput-wide v37, v8, v27

    aput-wide v22, v8, v26

    aput-wide v14, v8, v25

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v24, 0x0

    const/16 v31, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v39, p1

    mul-double v31, v2, v20

    add-double v31, v12, v31

    mul-double v33, v6, v0

    sub-double v33, v16, v33

    mul-double v35, v4, v0

    add-double v35, v20, v35

    mul-double v35, v35, v2

    add-double v35, v12, v35

    mul-double v20, v20, v4

    sub-double v0, v0, v20

    mul-double/2addr v0, v6

    sub-double v0, v16, v0

    mul-double v20, v4, v14

    sub-double v20, v22, v20

    mul-double v20, v20, v2

    add-double v20, v12, v20

    mul-double v37, v4, v22

    add-double v37, v14, v37

    mul-double v37, v37, v6

    sub-double v37, v16, v37

    mul-double v22, v22, v2

    add-double v22, v12, v22

    mul-double/2addr v14, v6

    sub-double v14, v16, v14

    .line 1161
    new-array v8, v8, [D

    const/16 v24, 0x0

    aput-wide v31, v8, v24

    const/16 v31, 0x1

    aput-wide v33, v8, v31

    aput-wide v35, v8, v30

    aput-wide v0, v8, v29

    aput-wide v20, v8, v28

    aput-wide v37, v8, v27

    aput-wide v22, v8, v26

    aput-wide v14, v8, v25

    move-object/from16 v0, v39

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move/from16 v8, p3

    move-object v14, v0

    move-wide/from16 v0, v18

    goto/16 :goto_3

    :cond_4
    move-object v0, v14

    return-object v0
.end method

.method private static calculateTransformationMatrix(Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;Lcom/itextpdf/kernel/geom/Vector;)[F
    .locals 5

    const/4 v0, 0x6

    .line 2560
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2561
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    invoke-virtual {p3, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2562
    aput v3, v0, v2

    const/4 v4, 0x2

    .line 2563
    aput v3, v0, v4

    .line 2564
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p1

    sub-float/2addr v3, p1

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p1

    invoke-virtual {p3, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p3

    sub-float/2addr p1, p3

    div-float/2addr v3, p1

    const/4 p1, 0x3

    aput v3, v0, p1

    .line 2565
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p3

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result v3

    aget v1, v0, v1

    mul-float/2addr v3, v1

    sub-float/2addr p3, v3

    const/4 v1, 0x4

    aput p3, v0, v1

    .line 2566
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p0

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/geom/Vector;->get(I)F

    move-result p2

    aget p1, v0, p1

    mul-float/2addr p2, p1

    sub-float/2addr p0, p2

    const/4 p1, 0x5

    aput p0, v0, p1

    return-object v0
.end method

.method private checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V
    .locals 5

    .line 2512
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->defaultDeviceGrayBlackColorCheckRequired:Z

    if-eqz v0, :cond_3

    .line 2515
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL_AND_STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    if-ne p1, v0, :cond_1

    .line 2517
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->FILL_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 2518
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->defaultDeviceGrayBlackColorCheckRequired:Z

    goto :goto_0

    .line 2519
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL_AND_STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    if-ne p1, v0, :cond_3

    .line 2521
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->STROKE_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 2522
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->defaultDeviceGrayBlackColorCheckRequired:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private createColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 2450
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    if-eqz v0, :cond_0

    .line 2451
    new-instance v0, Lcom/itextpdf/kernel/colors/PatternColor;

    check-cast p3, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    check-cast p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;->getUnderlyingColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p1

    invoke-direct {v0, p3, p1, p2}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    return-object v0

    .line 2452
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    if-eqz v0, :cond_1

    .line 2453
    new-instance p1, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-direct {p1, p3}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V

    return-object p1

    .line 2455
    :cond_1
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/colors/Color;->makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)Lcom/itextpdf/kernel/colors/Color;

    move-result-object p1

    return-object p1
.end method

.method private drawArc(DDDDDDZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 16

    move-object/from16 v0, p0

    .line 2493
    invoke-static/range {p1 .. p12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v1

    .line 2494
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 2498
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    const/4 v4, 0x1

    if-eqz p13, :cond_1

    .line 2500
    aget-wide v5, v3, v2

    aget-wide v7, v3, v4

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 2502
    :cond_1
    aget-wide v5, v3, v2

    aget-wide v7, v3, v4

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2504
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2505
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    const/4 v4, 0x2

    .line 2506
    aget-wide v4, v3, v4

    const/4 v6, 0x3

    aget-wide v6, v3, v6

    const/4 v8, 0x4

    aget-wide v8, v3, v8

    const/4 v10, 0x5

    aget-wide v10, v3, v10

    const/4 v12, 0x6

    aget-wide v12, v3, v12

    const/4 v14, 0x7

    aget-wide v14, v3, v14

    move-object/from16 p1, p0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    move-wide/from16 p8, v10

    move-wide/from16 p10, v12

    move-wide/from16 p12, v14

    invoke-virtual/range {p1 .. p13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private ensureStreamDataIsReadyToBeProcessed(Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 2417
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2418
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2420
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object p1
.end method

.method private getColorKeyForText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;
    .locals 2

    .line 2530
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTextRenderingMode()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 2541
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->NONE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    return-object v0

    .line 2539
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL_AND_STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    return-object v0

    .line 2536
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    return-object v0

    .line 2533
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    return-object v0
.end method

.method private getDashPatternArray(F)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 1

    const/4 v0, 0x0

    .line 2459
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    return-object p1
.end method

.method private getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 8

    .line 2463
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 2464
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    if-eqz p1, :cond_0

    .line 2466
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    .line 2467
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v6, v4

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2470
    :cond_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 2471
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v1, p2

    invoke-direct {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object v0
.end method

.method private static getPageStream(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 2

    .line 2546
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getLastContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2547
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->newContentStreamAfter()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getSubrangeWidth(Lcom/itextpdf/io/font/otf/GlyphLine;II)F
    .locals 7

    .line 869
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 870
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v1

    .line 871
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    move v4, p2

    :goto_0
    if-gt v4, p3, :cond_2

    .line 874
    invoke-virtual {p1, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 875
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v6

    if-nez v6, :cond_0

    .line 876
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v1

    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getWordSpacingAddition(Lcom/itextpdf/io/font/otf/Glyph;)F

    move-result v5

    add-float/2addr v6, v5

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    :cond_0
    if-le v4, p2, :cond_1

    add-int/lit8 v5, v4, -0x1

    .line 880
    invoke-virtual {p1, v5}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private getSubrangeYDelta(Lcom/itextpdf/io/font/otf/GlyphLine;II)F
    .locals 3

    .line 888
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 891
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getYAdvance()S

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getWordSpacingAddition(Lcom/itextpdf/io/font/otf/Glyph;)F
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getWordSpacing()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isIdentityMatrix(FFFFFF)Z
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    .line 2571
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    sub-float/2addr v0, p3

    .line 2572
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static iteratorToList(Ljava/util/Iterator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2552
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2553
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private showTextInt(Ljava/lang/String;)V
    .locals 5

    .line 2436
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 2437
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2440
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/font/PdfFont;->writeText(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfOutputStream;)V

    return-void

    .line 2438
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Font and size must be set before writing any text."

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {p1, v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public addImageAt(Lcom/itextpdf/io/image/ImageData;FFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 10

    .line 1978
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    if-ne v1, v2, :cond_0

    .line 1979
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 1980
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v0

    move v8, p2

    move v9, p3

    .line 1982
    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v0

    .line 1985
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    if-eqz p4, :cond_1

    .line 1986
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->canImageBeInline()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1987
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v7

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addInlineImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFFFFF)V

    const/4 v0, 0x0

    return-object v0

    .line 1990
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v7

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v1

    move v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v1
.end method

.method public addImageFittedIntoRectangle(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/geom/Rectangle;Z)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 9

    .line 1964
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v5

    .line 1965
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, p3

    .line 1964
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object p1

    return-object p1
.end method

.method public addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFF)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 1909
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    return-object v0
.end method

.method public addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 11

    move-object v0, p1

    .line 1930
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    if-ne v1, v2, :cond_0

    .line 1931
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    move-object v10, p0

    .line 1932
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1933
    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v0

    :cond_0
    move-object v10, p0

    .line 1936
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    if-eqz p8, :cond_1

    .line 1937
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->canImageBeInline()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, p0

    move-object v3, v1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1938
    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addInlineImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFFFFF)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    move-object v2, p0

    move-object v3, v1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1941
    invoke-direct/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v1
.end method

.method protected addInlineImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FFFFFF)V
    .locals 14

    move-object v13, p0

    .line 2265
    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->INLINE_IMAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    iget-object v3, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    iget-object v4, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 2266
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move/from16 v0, p2

    float-to-double v1, v0

    move/from16 v0, p3

    float-to-double v3, v0

    move/from16 v0, p4

    float-to-double v5, v0

    move/from16 v0, p5

    float-to-double v7, v0

    move/from16 v0, p6

    float-to-double v9, v0

    move/from16 v0, p7

    float-to-double v11, v0

    move-object v0, p0

    .line 2267
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 2268
    iget-object v0, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 2269
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BI:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2270
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v1

    .line 2271
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2272
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2273
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 2275
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    goto :goto_0

    .line 2278
    :cond_1
    iget-object v2, v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 2279
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 2280
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 2282
    :cond_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ID:[B

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2283
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EI:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 2284
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-void
.end method

.method public addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 10

    .line 2092
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2093
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 2094
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2095
    check-cast p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageAt(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 2097
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2053
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2054
    check-cast p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addForm(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 2055
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2056
    check-cast p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageAt(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 2058
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addXObjectAt(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2031
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2032
    check-cast p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormAt(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 2033
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2034
    check-cast p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageAt(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 2036
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addXObjectFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2072
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v0, :cond_0

    .line 2073
    check-cast p1, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 2074
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v0, :cond_1

    .line 2075
    check-cast p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageFittedIntoRectangle(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 2077
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addXObjectWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 11

    move-object v0, p1

    .line 2013
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v1, :cond_0

    .line 2014
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    const/4 v10, 0x1

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addFormWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;FFFFFFZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2015
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v1, :cond_1

    .line 2016
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0

    .line 2018
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PdfFormXObject or PdfImageXObject expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 14

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 1055
    invoke-direct/range {v0 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->drawArc(DDDDDDZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public arcContinuous(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 14

    const/4 v13, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 1075
    invoke-direct/range {v0 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->drawArc(DDDDDDZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public attachContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-void
.end method

.method public beginLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1851
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1852
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal layer argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1853
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    if-nez v1, :cond_2

    .line 1854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    .line 1855
    :cond_2
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/layer/PdfLayerMembership;

    if-eqz v1, :cond_3

    .line 1856
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addToPropertiesAndBeginLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_6

    .line 1860
    check-cast p1, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 1862
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1863
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addToPropertiesAndBeginLayer(Lcom/itextpdf/kernel/pdf/layer/IPdfOCG;)V

    add-int/lit8 v0, v0, 0x1

    .line 1866
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getParent()Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    move-result-object p1

    goto :goto_1

    .line 1868
    :cond_5
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object p0

    .line 1870
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported type for operand: layer"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    const/4 v0, 0x0

    .line 2135
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2146
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->mcDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->mcDepth:I

    .line 2147
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-nez p2, :cond_0

    .line 2149
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BMC:[B

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 2150
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2151
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BDC:[B

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 2153
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfResources;->addProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BDC:[B

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    :goto_0
    return-object p0
.end method

.method public beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BT:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public beginVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 441
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Tx:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public circle(DDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 30

    move-object/from16 v13, p0

    move-wide/from16 v14, p3

    add-double v11, p1, p5

    .line 1250
    invoke-virtual {v13, v11, v12, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const-wide v0, 0x3fe1ac7100000000L    # 0.552299976348877

    mul-double v16, p5, v0

    add-double v18, v14, v16

    add-double v20, p1, v16

    add-double v22, v14, p5

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-wide/from16 v7, v22

    move-wide/from16 v9, p1

    move-wide/from16 v24, v11

    move-wide/from16 v11, v22

    .line 1251
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    sub-double v26, p1, v16

    sub-double v28, p1, p5

    move-wide/from16 v1, v26

    move-wide/from16 v3, v22

    move-wide/from16 v5, v28

    move-wide/from16 v7, v18

    move-wide/from16 v9, v28

    move-wide/from16 v11, p3

    .line 1252
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    sub-double v16, v14, v16

    sub-double v18, v14, p5

    move-wide/from16 v1, v28

    move-wide/from16 v3, v16

    move-wide/from16 v5, v26

    move-wide/from16 v7, v18

    move-wide/from16 v9, p1

    move-wide/from16 v11, v18

    .line 1253
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-wide/from16 v1, v20

    move-wide/from16 v3, v18

    move-wide/from16 v5, v24

    move-wide/from16 v7, v16

    move-wide/from16 v9, v24

    move-wide/from16 v11, p3

    .line 1254
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v13
.end method

.method public clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1334
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->W:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public closePath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1277
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->h:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public closePathEoFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1287
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL_AND_STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 1289
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bStar:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public closePathFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1299
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL_AND_STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 1301
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->b:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public closePathStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1355
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->s:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public closeTag()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2207
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 369
    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    double-to-float v14, v1

    double-to-float v15, v3

    double-to-float v3, v5

    double-to-float v4, v7

    double-to-float v7, v9

    double-to-float v8, v11

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v13 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateCtm(FFFFFF)V

    .line 370
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-wide/from16 v2, p3

    .line 371
    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 372
    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-wide/from16 v2, p7

    .line 373
    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 374
    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 375
    invoke-virtual {v1, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cm:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object v0
.end method

.method public concatMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 14

    const/4 v0, 0x6

    .line 410
    new-array v0, v0, [F

    .line 411
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    const/4 p1, 0x0

    .line 412
    aget p1, v0, p1

    float-to-double v2, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    float-to-double v4, p1

    const/4 p1, 0x2

    aget p1, v0, p1

    float-to-double v6, p1

    const/4 p1, 0x3

    aget p1, v0, p1

    float-to-double v8, p1

    const/4 p1, 0x4

    aget p1, v0, p1

    float-to-double v10, p1

    const/4 p1, 0x5

    aget p1, v0, p1

    float-to-double v12, p1

    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public concatMatrix(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 14

    .line 389
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 393
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 394
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v6

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v8

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v10

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->doubleValue()D

    move-result-wide v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public curveFromTo(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1028
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1029
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1030
    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1031
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1032
    invoke-virtual {p1, p5, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1033
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1034
    invoke-virtual {p1, p7, p8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->y:[B

    .line 1035
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public curveTo(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1006
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1007
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1008
    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1009
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1010
    invoke-virtual {p1, p5, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1011
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1012
    invoke-virtual {p1, p7, p8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->v:[B

    .line 1013
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 979
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 980
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 981
    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 982
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 983
    invoke-virtual {p1, p5, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 984
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 985
    invoke-virtual {p1, p7, p8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 986
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 987
    invoke-virtual {p1, p9, p10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 988
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 989
    invoke-virtual {p1, p11, p12}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 990
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->c:[B

    .line 991
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public ellipse(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 13

    const-wide/16 v9, 0x0

    const-wide v11, 0x4076800000000000L    # 360.0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 1088
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public endLayer()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1881
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1882
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1883
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->layerDepth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EMC:[B

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    move v0, v1

    goto :goto_0

    :cond_0
    return-object p0

    .line 1885
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Unbalanced layer operators."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 2164
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->mcDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->mcDepth:I

    if-ltz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->EMC:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0

    .line 2165
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Unbalanced begin/end marked content operators."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->n:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ET:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public endVariableText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public eoClip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1345
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->WStar:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public eoFill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1389
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 1391
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fStar:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public eoFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1401
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL_AND_STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 1403
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->BStar:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1365
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 1367
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->f:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public fillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1377
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->FILL_AND_STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 1379
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->B:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public getContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v0
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    return-object v0
.end method

.method public getResources()Lcom/itextpdf/kernel/pdf/PdfResources;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    return-object v0
.end method

.method public lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 959
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 960
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 961
    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->l:[B

    .line 962
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public moveText(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 481
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 482
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 483
    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 484
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public moveTextWithLeading(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    neg-float v1, p2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLeading(F)V

    .line 520
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 521
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 522
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 523
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 524
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TD:[B

    .line 525
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 942
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 943
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 944
    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->m:[B

    .line 945
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public newlineShowText(FFLjava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getColorKeyForText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 567
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 569
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 570
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    .line 571
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showTextInt(Ljava/lang/String;)V

    .line 572
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p3

    const/16 v0, 0x22

    .line 573
    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 574
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    .line 577
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setCharSpacing(F)V

    .line 578
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setWordSpacing(F)V

    return-object p0
.end method

.method public newlineShowText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 547
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getColorKeyForText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 549
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showTextInt(Ljava/lang/String;)V

    .line 550
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    const/16 v0, 0x27

    .line 551
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 552
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    return-object p0
.end method

.method public newlineText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TStar:[B

    .line 536
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2177
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 2179
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getProperties()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public openTag(Lcom/itextpdf/kernel/pdf/tagutils/TagReference;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4

    .line 2193
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 2195
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 2196
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->getProperties()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->setProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 2197
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagReference;->createNextMcid()I

    move-result p1

    invoke-direct {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->addProperty(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 2198
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->openTag(Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public paintShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    .line 1266
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->sh:[B

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1185
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1186
    invoke-virtual {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1187
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1188
    invoke-virtual {p1, p5, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1189
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1190
    invoke-virtual {p1, p7, p8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeDouble(D)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1191
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->re:[B

    .line 1192
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 10

    .line 1203
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    float-to-double v6, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result p1

    float-to-double v8, p1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    .line 322
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 323
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 324
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    return-void
.end method

.method public resetFillColorCmyk()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1828
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColorCmyk(FFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetFillColorGray()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    const/4 v0, 0x0

    .line 1722
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColorGray(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetFillColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1784
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetFillColorGray()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetStrokeColorCmyk()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1837
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColorCmyk(FFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetStrokeColorGray()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    const/4 v0, 0x0

    .line 1731
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColorGray(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public resetStrokeColorRgb()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1793
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resetStrokeColorGray()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v0

    return-object v0
.end method

.method public restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 347
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 351
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Q:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0

    .line 348
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Unbalanced save restore state operators."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public roundRectangle(DDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 30

    move-object/from16 v13, p0

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    const-wide/16 v6, 0x0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    add-double v8, p1, v0

    neg-double v0, v0

    move-wide v14, v8

    goto :goto_0

    :cond_0
    move-wide/from16 v14, p1

    :goto_0
    cmpg-double v8, v2, v6

    if-gez v8, :cond_1

    add-double v8, p3, v2

    neg-double v2, v2

    move-wide/from16 v16, v2

    move-wide v11, v8

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p3

    move-wide/from16 v16, v2

    :goto_1
    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    neg-double v2, v4

    move-wide/from16 v18, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v18, v4

    :goto_2
    add-double v9, v14, v18

    .line 1228
    invoke-virtual {v13, v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-double v7, v14, v0

    sub-double v5, v7, v18

    .line 1229
    invoke-virtual {v13, v5, v6, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const-wide v0, 0x3fdca71de0000000L    # 0.44769999384880066

    mul-double v20, v18, v0

    sub-double v22, v7, v20

    add-double v24, v11, v20

    add-double v3, v11, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 p1, v3

    move-wide v3, v11

    move-wide/from16 v26, v5

    move-wide v5, v7

    move-wide/from16 p3, v7

    move-wide/from16 v7, v24

    move-wide/from16 p5, v14

    move-wide v14, v9

    move-wide/from16 v9, p3

    move-wide/from16 v28, v11

    move-wide/from16 v11, p1

    .line 1230
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    add-double v11, v28, v16

    sub-double v9, v11, v18

    move-wide/from16 v1, p3

    .line 1231
    invoke-virtual {v13, v1, v2, v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    sub-double v16, v11, v20

    move-wide/from16 v3, v16

    move-wide/from16 v5, v22

    move-wide v7, v11

    move-wide/from16 v18, v9

    move-wide/from16 v9, v26

    move-wide/from16 p3, v11

    .line 1232
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1233
    invoke-virtual {v13, v14, v15, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-wide/from16 v9, p5

    add-double v20, v9, v20

    move-wide/from16 v1, v20

    move-wide v3, v11

    move-wide v5, v9

    move-wide/from16 v7, v16

    move-wide v11, v9

    move-wide/from16 v16, v14

    move-wide v14, v11

    move-wide/from16 v11, v18

    .line 1234
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-wide/from16 v11, p1

    .line 1235
    invoke-virtual {v13, v14, v15, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-wide v1, v14

    move-wide/from16 v3, v24

    move-wide/from16 v5, v20

    move-wide/from16 v7, v28

    move-wide/from16 v9, v16

    move-wide/from16 v11, v28

    .line 1236
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v13
.end method

.method public saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 334
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gsStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 336
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->q:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setCharacterSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setCharSpacing(F)V

    .line 635
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 636
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tc:[B

    .line 637
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1629
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/PatternColor;

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v1

    check-cast p1, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/PatternColor;->getPattern()Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1

    .line 1632
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1659
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    .line 1660
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->createColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v1

    .line 1661
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/colors/Color;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    if-eqz p4, :cond_2

    .line 1665
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)V

    goto :goto_1

    .line 1667
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)V

    .line 1669
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1673
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    if-eqz v1, :cond_4

    .line 1674
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_3

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->g:[B

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->G:[B

    :goto_2
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_b

    .line 1675
    :cond_4
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    if-eqz v1, :cond_6

    .line 1676
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_5

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rg:[B

    goto :goto_3

    :cond_5
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->RG:[B

    :goto_3
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_b

    .line 1677
    :cond_6
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    if-eqz v1, :cond_8

    .line 1678
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_7

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->k:[B

    goto :goto_4

    :cond_7
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->K:[B

    :goto_4
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_b

    .line 1679
    :cond_8
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    if-eqz v1, :cond_b

    .line 1680
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_9

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cs:[B

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->CS:[B

    :goto_5
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1681
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfResources;->addPattern(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_a

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->scn:[B

    goto :goto_6

    :cond_a
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->SCN:[B

    :goto_6
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto/16 :goto_b

    .line 1682
    :cond_b
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    if-eqz v1, :cond_e

    .line 1683
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_c

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cs:[B

    goto :goto_7

    :cond_c
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->CS:[B

    :goto_7
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1684
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeNewLine()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfResources;->addPattern(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_d

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->scn:[B

    goto :goto_8

    :cond_d
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->SCN:[B

    :goto_8
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_b

    .line 1685
    :cond_e
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result p3

    if-eqz p3, :cond_12

    if-nez v0, :cond_10

    .line 1687
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    .line 1688
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_f

    sget-object p3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cs:[B

    goto :goto_9

    :cond_f
    sget-object p3, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->CS:[B

    :goto_9
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1690
    :cond_10
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloats([F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz p4, :cond_11

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->scn:[B

    goto :goto_a

    :cond_11
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->SCN:[B

    :goto_a
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 1692
    :cond_12
    :goto_b
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    if-eqz p4, :cond_13

    sget-object p3, Lcom/itextpdf/kernel/pdf/IsoKey;->FILL_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    goto :goto_c

    :cond_13
    sget-object p3, Lcom/itextpdf/kernel/pdf/IsoKey;->STROKE_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    :goto_c
    iget-object p4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object p0
.end method

.method public setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    const/4 v0, 0x0

    .line 1645
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4

    .line 2108
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2110
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    .line 2111
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gs:[B

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 2112
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->EXTENDED_GRAPHICS_STATE:Lcom/itextpdf/kernel/pdf/IsoKey;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object p0
.end method

.method public setExtGState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    .locals 1

    .line 2123
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 2124
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    return-object v0
.end method

.method public setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    const/4 v0, 0x1

    .line 1608
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setFillColorCmyk(FFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1806
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cmyk:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p2, 0x2

    aput p3, v1, p2

    const/4 p2, 0x3

    aput p4, v1, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setFillColorGray(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 4

    .line 1703
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gray:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setFillColorRgb(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1743
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rgb:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p2, 0x2

    aput p3, v1, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setFillColorShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1765
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setFlatnessTolerance(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFlatnessTolerance()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setFlatnessTolerance(F)V

    .line 1595
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1596
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->i:[B

    .line 1597
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setFontSize(F)V

    .line 462
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->addFont(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setFont(Lcom/itextpdf/kernel/font/PdfFont;)V

    .line 464
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    .line 465
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 467
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tf:[B

    .line 468
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setHorizontalScaling(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setHorizontalScaling(F)V

    .line 649
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 650
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 651
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tz:[B

    .line 652
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setLeading(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLeading(F)V

    .line 500
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 501
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 502
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TL:[B

    .line 503
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1433
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineCapStyle()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLineCapStyle(I)V

    .line 1436
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1437
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->J:[B

    .line 1438
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setLineDash(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1489
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray(F)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1490
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1491
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    .line 1492
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setLineDash(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1509
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1510
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1511
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    .line 1512
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1531
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v1, p3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1532
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1533
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1534
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    .line 1535
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setLineDash([FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1552
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getDashPatternArray([FF)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 1553
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const/16 v1, 0x5b

    .line 1554
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    const/4 v1, 0x0

    .line 1555
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1556
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    .line 1557
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1558
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 1560
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->d:[B

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setLineJoinStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineJoinStyle()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLineJoinStyle(I)V

    .line 1454
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1455
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->j:[B

    .line 1456
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getLineWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setLineWidth(F)V

    .line 1418
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1419
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->w:[B

    .line 1420
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setMiterLimit(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getMiterLimit()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setMiterLimit(F)V

    .line 1471
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1472
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->M:[B

    .line 1473
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1572
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->RENDERING_INTENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 1573
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1575
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1576
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 1577
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->ri:[B

    .line 1578
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    const/4 v0, 0x0

    .line 1618
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/colors/Color;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setStrokeColorCmyk(FFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1819
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->cmyk:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setStrokeColorGray(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1713
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->gray:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setStrokeColorRgb(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1755
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rgb:Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FZ)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setStrokeColorShading(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 3

    .line 1775
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->pattern:Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Pattern;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[FLcom/itextpdf/kernel/pdf/colorspace/PdfPattern;Z)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 7

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    .line 704
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 669
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 670
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 671
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 672
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 673
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 674
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 675
    invoke-virtual {p1, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 676
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 677
    invoke-virtual {p1, p5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 678
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 679
    invoke-virtual {p1, p6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tm:[B

    .line 680
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setTextMatrix(Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 8

    const/4 v0, 0x6

    .line 691
    new-array v0, v0, [F

    .line 692
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([F)V

    const/4 p1, 0x0

    .line 693
    aget v2, v0, p1

    const/4 p1, 0x1

    aget v3, v0, p1

    const/4 p1, 0x2

    aget v4, v0, p1

    const/4 p1, 0x3

    aget v5, v0, p1

    const/4 p1, 0x4

    aget v6, v0, p1

    const/4 p1, 0x5

    aget v7, v0, p1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FFFFFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public setTextRenderingMode(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setTextRenderingMode(I)V

    .line 590
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 591
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tr:[B

    .line 592
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setTextRise(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setTextRise(F)V

    .line 607
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Ts:[B

    .line 609
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public setWordSpacing(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->setWordSpacing(F)V

    .line 621
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    .line 622
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tw:[B

    .line 623
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public showText(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 728
    new-instance v0, Lcom/itextpdf/io/font/otf/ActualTextIterator;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/otf/ActualTextIterator;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/util/Iterator;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object p1

    return-object p1
.end method

.method public showText(Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/util/Iterator;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/otf/GlyphLine;",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 740
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getColorKeyForText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 741
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v4, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 744
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 748
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFontSize()F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 749
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getCharSpacing()F

    move-result v4

    .line 750
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getHorizontalScaling()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 751
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->iteratorToList(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    .line 752
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_11

    .line 753
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    .line 754
    iget-object v10, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    .line 755
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 756
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->ActualText:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v14, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    const-string v15, "UnicodeBig"

    invoke-direct {v13, v14, v15}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 757
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Span:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v12, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 758
    :cond_0
    iget-boolean v10, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->reversed:Z

    if-eqz v10, :cond_1

    .line 759
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->ReversedChars:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 761
    :cond_1
    :goto_1
    iget v10, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    .line 762
    iget v12, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    :goto_2
    iget v13, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    if-ge v12, v13, :cond_c

    .line 763
    invoke-virtual {v1, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v13

    .line 764
    invoke-virtual {v13}, Lcom/itextpdf/io/font/otf/Glyph;->hasOffsets()Z

    move-result v15

    if-eqz v15, :cond_b

    add-int/lit8 v15, v12, -0x1

    sub-int v16, v15, v10

    if-ltz v16, :cond_2

    .line 766
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    invoke-virtual {v2, v1, v10, v15, v7}, Lcom/itextpdf/kernel/font/PdfFont;->writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V

    .line 767
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    sget-object v14, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    invoke-virtual {v7, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 768
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    .line 769
    invoke-direct {v0, v1, v10, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getSubrangeWidth(Lcom/itextpdf/io/font/otf/GlyphLine;II)F

    move-result v10

    invoke-virtual {v7, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 770
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/4 v10, 0x0

    .line 771
    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 772
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v10, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 773
    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 777
    :cond_2
    invoke-virtual {v13}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 782
    invoke-virtual {v1, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    move v14, v12

    const/4 v10, 0x0

    :goto_3
    if-eqz v7, :cond_4

    .line 784
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v15

    if-eqz v15, :cond_4

    .line 785
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getXPlacement()S

    move-result v15

    int-to-float v15, v15

    add-float/2addr v10, v15

    .line 786
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v15

    if-nez v15, :cond_3

    goto :goto_4

    .line 789
    :cond_3
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v7

    add-int/2addr v14, v7

    .line 790
    invoke-virtual {v1, v14}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    goto :goto_3

    .line 793
    :cond_4
    :goto_4
    invoke-direct {v0, v1, v14, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getSubrangeWidth(Lcom/itextpdf/io/font/otf/GlyphLine;II)F

    move-result v7

    neg-float v7, v7

    mul-float/2addr v10, v3

    mul-float/2addr v10, v5

    add-float/2addr v7, v10

    .line 799
    invoke-virtual {v1, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v10

    move v15, v12

    const/4 v14, 0x0

    :goto_5
    if-eqz v10, :cond_6

    .line 800
    invoke-virtual {v10}, Lcom/itextpdf/io/font/otf/Glyph;->getYPlacement()S

    move-result v16

    if-eqz v16, :cond_6

    .line 801
    invoke-virtual {v10}, Lcom/itextpdf/io/font/otf/Glyph;->getYPlacement()S

    move-result v11

    int-to-float v11, v11

    add-float/2addr v14, v11

    .line 802
    invoke-virtual {v10}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v11

    if-nez v11, :cond_5

    goto :goto_6

    .line 805
    :cond_5
    invoke-virtual {v10}, Lcom/itextpdf/io/font/otf/Glyph;->getAnchorDelta()S

    move-result v10

    add-int/2addr v15, v10

    .line 806
    invoke-virtual {v1, v15}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v10

    const/4 v11, 0x1

    goto :goto_5

    .line 809
    :cond_6
    :goto_6
    invoke-direct {v0, v1, v15, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getSubrangeYDelta(Lcom/itextpdf/io/font/otf/GlyphLine;II)F

    move-result v10

    neg-float v10, v10

    mul-float/2addr v14, v3

    add-float/2addr v10, v14

    .line 812
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v11

    const/4 v14, 0x1

    .line 813
    invoke-virtual {v11, v7, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 814
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 815
    invoke-virtual {v11, v10, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 816
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v14, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 817
    invoke-virtual {v11, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_7

    :cond_7
    const/high16 v7, 0x7fc00000    # Float.NaN

    move v10, v7

    .line 819
    :goto_7
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v11

    invoke-virtual {v2, v1, v12, v12, v11}, Lcom/itextpdf/kernel/font/PdfFont;->writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V

    .line 820
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v11

    sget-object v14, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    invoke-virtual {v11, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 821
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_8

    .line 822
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v11

    neg-float v7, v7

    const/4 v14, 0x1

    .line 823
    invoke-virtual {v11, v7, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 824
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    neg-float v10, v10

    .line 825
    invoke-virtual {v7, v10, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 826
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v10, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 827
    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 830
    :cond_8
    invoke-virtual {v13}, Lcom/itextpdf/io/font/otf/Glyph;->hasAdvance()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 831
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    .line 833
    invoke-virtual {v13}, Lcom/itextpdf/io/font/otf/Glyph;->hasPlacement()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v13}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v10

    :goto_8
    invoke-virtual {v13}, Lcom/itextpdf/io/font/otf/Glyph;->getXAdvance()S

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v3

    add-float/2addr v10, v4

    invoke-direct {v0, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getWordSpacingAddition(Lcom/itextpdf/io/font/otf/Glyph;)F

    move-result v11

    add-float/2addr v10, v11

    mul-float/2addr v10, v5

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 834
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 835
    invoke-virtual {v13}, Lcom/itextpdf/io/font/otf/Glyph;->getYAdvance()S

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    invoke-virtual {v7, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 836
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v10, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 837
    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    :cond_a
    add-int/lit8 v7, v12, 0x1

    move v10, v7

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 842
    :cond_c
    iget v7, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    sub-int/2addr v7, v10

    if-lez v7, :cond_d

    .line 843
    iget v7, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v11

    invoke-virtual {v2, v1, v10, v7, v11}, Lcom/itextpdf/kernel/font/PdfFont;->writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V

    .line 844
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    sget-object v11, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 846
    :cond_d
    iget-object v7, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_9

    .line 848
    :cond_e
    iget-boolean v7, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->reversed:Z

    if-eqz v7, :cond_f

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endMarkedContent()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 851
    :cond_f
    :goto_9
    iget v7, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    if-le v7, v10, :cond_10

    add-int/lit8 v7, v8, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_10

    .line 852
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    iget v9, v9, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    .line 853
    invoke-direct {v0, v1, v10, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getSubrangeWidth(Lcom/itextpdf/io/font/otf/GlyphLine;II)F

    move-result v9

    invoke-virtual {v7, v9, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 854
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/4 v9, 0x0

    .line 855
    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 856
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v9, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Td:[B

    .line 857
    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_11
    return-object v0

    .line 745
    :cond_12
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Font and size must be set before writing any text."

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1
.end method

.method public showText(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 5

    .line 914
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getColorKeyForText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 915
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 917
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 920
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    const-string v1, "["

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 921
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 922
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/StreamUtil;->writeEscapedString(Ljava/io/OutputStream;[B)V

    goto :goto_0

    .line 924
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    goto :goto_0

    .line 928
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    const-string v0, "]"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 929
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->TJ:[B

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0

    .line 918
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Font and size must be set before writing any text."

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->currentGs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {p1, v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 714
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->getColorKeyForText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 716
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showTextInt(Ljava/lang/String;)V

    .line 717
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->Tj:[B

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 2

    .line 1321
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;->STROKE:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->checkDefaultDeviceGrayBlackColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas$CheckColorMode;)V

    .line 1323
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->S:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    return-object p0
.end method

.method public writeLiteral(C)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2228
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    return-object p0
.end method

.method public writeLiteral(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2239
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    return-object p0
.end method

.method public writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .locals 1

    .line 2217
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    return-object p0
.end method
