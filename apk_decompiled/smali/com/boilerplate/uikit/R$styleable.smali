.class public final Lcom/boilerplate/uikit/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boilerplate/uikit/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static ActionButton:[I = null

.field public static ActionButton_buttonDisabledBgColor:I = 0x0

.field public static ActionButton_buttonDisabledTextColor:I = 0x1

.field public static ActionButton_buttonEnabledBgColor:I = 0x2

.field public static ActionButton_buttonEnabledTextColor:I = 0x3

.field public static ActionButton_buttonGreenColor:I = 0x4

.field public static ActionButton_buttonProgressColor:I = 0x5

.field public static ActionButton_buttonRedColor:I = 0x6

.field public static ActionButton_buttonTextColor:I = 0x7

.field public static Caption:[I = null

.field public static Caption_isDarkBlack:I = 0x0

.field public static Caption_isDarkGrey:I = 0x1

.field public static Caption_isDarkSilver:I = 0x2

.field public static Caption_isHeaderText:I = 0x3

.field public static Caption_isMukta:I = 0x4

.field public static H2:[I = null

.field public static H2_timerErrorText:I = 0x0

.field public static H2_timerText:I = 0x1

.field public static H6:[I = null

.field public static H6_isHeaderText:I = 0x0

.field public static H6_isMukta:I = 0x1

.field public static H6_timerErrorText:I = 0x2

.field public static H6_timerText:I = 0x3

.field public static H7:[I = null

.field public static H7_isErrorText:I = 0x0

.field public static H7_isMukta:I = 0x1

.field public static H7_isTextColorPrimary:I = 0x2

.field public static H8:[I = null

.field public static H8_isDarkGrey:I = 0x0

.field public static H8_isHeaderText:I = 0x1

.field public static H8_isMukta:I = 0x2

.field public static H8_isSemiBold:I = 0x3

.field public static Subheading:[I = null

.field public static Subheading_greyText:I = 0x0

.field public static Subheading_isHeaderText:I = 0x1

.field public static Subheading_isMukta:I = 0x2

.field public static SubtitleOne:[I = null

.field public static SubtitleOne_isMukta:I = 0x0

.field public static Theme:[I = null

.field public static Theme_colorPrimary:I = 0x0

.field public static Theme_errorTextColor:I = 0x1

.field public static Theme_hintTextColor:I = 0x2

.field public static Theme_isMukta:I = 0x3

.field public static Theme_otpTextColor:I = 0x4

.field public static Theme_text10Color:I = 0x5

.field public static Theme_text12Color:I = 0x6

.field public static Theme_text14Color:I = 0x7

.field public static Theme_text16Color:I = 0x8

.field public static Theme_text18Color:I = 0x9

.field public static Theme_text20Color:I = 0xa

.field public static Theme_text22Color:I = 0xb

.field public static Title:[I

.field public static Title_isHeaderText:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->ActionButton:[I

    const v0, 0x7f04028f

    const v1, 0x7f040290

    const v2, 0x7f040291

    const v3, 0x7f040293

    const v4, 0x7f040298

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->Caption:[I

    const v0, 0x7f0404fb

    const v2, 0x7f0404fc

    filled-new-array {v0, v2}, [I

    move-result-object v5

    sput-object v5, Lcom/boilerplate/uikit/R$styleable;->H2:[I

    filled-new-array {v3, v4, v0, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->H6:[I

    const v0, 0x7f040292

    const v2, 0x7f04029a

    filled-new-array {v0, v4, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->H7:[I

    const v0, 0x7f040299

    filled-new-array {v1, v3, v4, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->H8:[I

    const v0, 0x7f040250

    filled-new-array {v0, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->Subheading:[I

    filled-new-array {v4}, [I

    move-result-object v0

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->SubtitleOne:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->Theme:[I

    filled-new-array {v3}, [I

    move-result-object v0

    sput-object v0, Lcom/boilerplate/uikit/R$styleable;->Title:[I

    return-void

    :array_0
    .array-data 4
        0x7f0400a3
        0x7f0400a4
        0x7f0400a5
        0x7f0400a6
        0x7f0400a8
        0x7f0400ae
        0x7f0400af
        0x7f0400b3
    .end array-data

    :array_1
    .array-data 4
        0x7f040141
        0x7f0401f6
        0x7f040264
        0x7f040298
        0x7f0403c2
        0x7f040499
        0x7f04049a
        0x7f04049b
        0x7f04049c
        0x7f04049d
        0x7f04049e
        0x7f04049f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
