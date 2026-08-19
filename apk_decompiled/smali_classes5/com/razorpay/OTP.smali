.class public Lcom/razorpay/OTP;
.super Ljava/lang/Object;
.source "OTP.java"


# instance fields
.field bank:Ljava/lang/String;

.field pin:Ljava/lang/String;

.field sender:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/razorpay/OTP;->bank:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/razorpay/OTP;->sender:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/razorpay/OTP;->l$1_I$l$()V

    return-void
.end method

.method private l$1_I$l$()V
    .locals 3

    .line 19
    const-string v0, "^\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    .line 26
    :cond_0
    const-string v0, "\\d$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method getBank()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/razorpay/OTP;->bank:Ljava/lang/String;

    return-object v0
.end method

.method getPin()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    return-object v0
.end method

.method getSender()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/razorpay/OTP;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/razorpay/OTP;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bank: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/OTP;->bank:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/OTP;->sender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
