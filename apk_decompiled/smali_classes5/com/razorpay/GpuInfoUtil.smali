.class Lcom/razorpay/GpuInfoUtil;
.super Ljava/lang/Object;
.source "GpuInfoUtil.java"


# static fields
.field private static I__1l:Z = false

.field private static final __l1_:Ljava/lang/String; = "gpu_vendor"

.field private static _l_1l__:Ljava/lang/String; = "unknown"

.field private static _llI:Ljava/lang/String; = "unknown"

.field private static final l$1_I$l$:Ljava/lang/String; = "gpu_renderer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/razorpay/GpuInfoUtil;->_llI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    sput-object p0, Lcom/razorpay/GpuInfoUtil;->_llI:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/razorpay/GpuInfoUtil;->_l_1l__:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    sput-object p0, Lcom/razorpay/GpuInfoUtil;->_l_1l__:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 13
    sput-boolean p0, Lcom/razorpay/GpuInfoUtil;->I__1l:Z

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/razorpay/GpuInfoUtil;->l$1_I$l$(Landroid/content/Context;)V

    return-void
.end method

.method static extractGpuInfo(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 2

    .line 68
    sget-boolean v0, Lcom/razorpay/GpuInfoUtil;->I__1l:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    :try_start_0
    const-string v0, "(function() {   try {     var canvas = document.createElement(\'canvas\');     var gl = canvas.getContext(\'webgl\') || canvas.getContext(\'experimental-webgl\');     if (gl) {       var debugInfo = gl.getExtension(\'WEBGL_debug_renderer_info\');       if (debugInfo) {         return gl.getParameter(debugInfo.UNMASKED_RENDERER_WEBGL);       }     }   } catch(e) { }   return \'unknown\'; })()"

    new-instance v1, Lcom/razorpay/GpuInfoUtil$1;

    invoke-direct {v1}, Lcom/razorpay/GpuInfoUtil$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 101
    const-string v0, "(function() {   try {     var canvas = document.createElement(\'canvas\');     var gl = canvas.getContext(\'webgl\') || canvas.getContext(\'experimental-webgl\');     if (gl) {       var debugInfo = gl.getExtension(\'WEBGL_debug_renderer_info\');       if (debugInfo) {         return gl.getParameter(debugInfo.UNMASKED_VENDOR_WEBGL);       }     }   } catch(e) { }   return \'unknown\'; })()"

    new-instance v1, Lcom/razorpay/GpuInfoUtil$2;

    invoke-direct {v1, p1}, Lcom/razorpay/GpuInfoUtil$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "error:exception"

    const-string v0, "Error extracting GPU info"

    invoke-static {p0, p1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static getGpuRenderer()Ljava/lang/String;
    .locals 1

    .line 143
    sget-object v0, Lcom/razorpay/GpuInfoUtil;->_llI:Ljava/lang/String;

    return-object v0
.end method

.method static getGpuVendor()Ljava/lang/String;
    .locals 1

    .line 151
    sget-object v0, Lcom/razorpay/GpuInfoUtil;->_l_1l__:Ljava/lang/String;

    return-object v0
.end method

.method static isGpuInfoAvailable()Z
    .locals 1

    .line 159
    sget-boolean v0, Lcom/razorpay/GpuInfoUtil;->I__1l:Z

    return v0
.end method

.method private static l$1_I$l$(Landroid/content/Context;)V
    .locals 2

    .line 51
    :try_start_0
    const-string v0, "gpu_renderer"

    sget-object v1, Lcom/razorpay/GpuInfoUtil;->_llI:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "gpu_vendor"

    sget-object v1, Lcom/razorpay/GpuInfoUtil;->_l_1l__:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/razorpay/SharedPreferenceUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string p0, "GPU info saved to cache"

    invoke-static {p0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    const-string v0, "Error saving GPU info to cache"

    invoke-static {v0, p0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static loadFromCache(Landroid/content/Context;)V
    .locals 3

    const-string v0, "GPU info loaded from cache: "

    .line 30
    :try_start_0
    const-string v1, "gpu_renderer"

    invoke-static {p0, v1}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v2, "gpu_vendor"

    invoke-static {p0, v2}, Lcom/razorpay/SharedPreferenceUtil;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 34
    sput-object v1, Lcom/razorpay/GpuInfoUtil;->_llI:Ljava/lang/String;

    .line 35
    sput-object p0, Lcom/razorpay/GpuInfoUtil;->_l_1l__:Ljava/lang/String;

    const/4 p0, 0x1

    .line 36
    sput-boolean p0, Lcom/razorpay/GpuInfoUtil;->I__1l:Z

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/razorpay/GpuInfoUtil;->_llI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/razorpay/GpuInfoUtil;->_l_1l__:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    const-string v0, "Error loading GPU info from cache"

    invoke-static {v0, p0}, Lcom/razorpay/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static reset()V
    .locals 1

    .line 166
    const-string v0, "unknown"

    sput-object v0, Lcom/razorpay/GpuInfoUtil;->_llI:Ljava/lang/String;

    .line 167
    sput-object v0, Lcom/razorpay/GpuInfoUtil;->_l_1l__:Ljava/lang/String;

    const/4 v0, 0x0

    .line 168
    sput-boolean v0, Lcom/razorpay/GpuInfoUtil;->I__1l:Z

    return-void
.end method
