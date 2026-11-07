.class public final Lcom/bytedance/apm/common/utility/LooperPrinterUtils;
.super Ljava/lang/Object;
.source "LooperPrinterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterListener;,
        Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_COUNT:I = 0x5

.field private static isInit:Z = false

.field public static mMaxCount:I = 0x5

.field public static sListener:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterListener;

.field private static sOriginPrinter:Landroid/util/Printer;

.field private static sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessageLogging(Landroid/util/Printer;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 122
    sget-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    iget-object v0, v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mAddPrinters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    iget-object v0, v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mAddPrinters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->haveAdd:Z

    :cond_0
    return-void
.end method

.method private static getCurrentPrinter()Landroid/util/Printer;
    .locals 2

    :try_start_0
    const-string v0, "android.os.Looper"

    .line 142
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mLogging"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init()V
    .locals 2

    .line 95
    sget-boolean v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 98
    sput-boolean v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->isInit:Z

    .line 99
    new-instance v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    invoke-direct {v0}, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;-><init>()V

    sput-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    .line 100
    invoke-static {}, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->getCurrentPrinter()Landroid/util/Printer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sOriginPrinter:Landroid/util/Printer;

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    iget-object v0, v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mPrinters:Ljava/util/List;

    sget-object v1, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sOriginPrinter:Landroid/util/Printer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public static release()V
    .locals 2

    .line 108
    sget-boolean v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->isInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 111
    sput-boolean v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->isInit:Z

    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sOriginPrinter:Landroid/util/Printer;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    const/4 v0, 0x0

    .line 113
    sput-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    return-void
.end method

.method public static removeMessageLogging(Landroid/util/Printer;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 134
    sget-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    iget-object v0, v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mRemovePrinters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    iget-object v0, v0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->mRemovePrinters:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->sPrinterWrapper:Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils$PrinterWrapper;->haveRemove:Z

    :cond_0
    return-void
.end method

.method public static setMaxCount(I)V
    .locals 0

    .line 153
    sput p0, Lcom/bytedance/apm/common/utility/LooperPrinterUtils;->mMaxCount:I

    return-void
.end method
