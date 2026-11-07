.class public Lgbsdk/common/host/abvx;
.super Ljava/lang/Object;
.source "TTNetMpaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abvx$ab;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "TTNetMpaService"

.field private static final aIP:Ljava/lang/String; = "org.chromium.mpa.CronetMpaServiceImpl"


# instance fields
.field private aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abvx$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgbsdk/common/host/abvx;-><init>()V

    return-void
.end method

.method private command(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;->command(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 128
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extraMessage:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTNetMpaService"

    invoke-static {p2, p1}, Lcom/bytedance/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ht()Lgbsdk/common/host/abvx;
    .locals 1

    .line 30
    sget-object v0, Lgbsdk/common/host/abvx$ab;->aIR:Lgbsdk/common/host/abvx;

    return-object v0
.end method

.method private hu()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "org.chromium.mpa.CronetMpaServiceImpl"

    .line 88
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    check-cast v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    iput-object v0, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public cC(Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;->start()V

    const-string v0, "begin_user_log"

    .line 103
    invoke-direct {p0, v0, p1}, Lgbsdk/common/host/abvx;->command(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cD(Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    if-eqz v0, :cond_0

    const-string v0, "end_user_log"

    .line 114
    invoke-direct {p0, v0, p1}, Lgbsdk/common/host/abvx;->command(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    invoke-interface {p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;->stop()V

    :cond_0
    return-void
.end method

.method public init(Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Lgbsdk/common/host/abvx;->hu()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Load CronetMpaServiceImpl Failed"

    .line 43
    invoke-interface {p1, v1, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;->onFinish(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    const-string v2, "com.bytedance.android.bytehook.ByteHook"

    .line 49
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v2

    const-string v3, "init"

    invoke-virtual {v2, v3}, Lcom/bytedance/common/utility/reflect/Reflect;->call(Ljava/lang/String;)Lcom/bytedance/common/utility/reflect/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/common/utility/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ByteHook Init Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;->onFinish(ZLjava/lang/String;)V

    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    invoke-interface {v0, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;->init(Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;)V

    return-void
.end method

.method public setAccAddress(Ljava/util/List;Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abvx;->aIQ:Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v1, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService;->setAccAddress(Ljava/util/List;Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "MpsService is null"

    .line 79
    invoke-interface {p2, v0, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;->onFinish(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    const-string p1, "Address error"

    .line 71
    invoke-interface {p2, v0, p1}, Lcom/bytedance/frameworks/baselib/network/http/cronet/mpa/IMpaService$ICallback;->onFinish(ZLjava/lang/String;)V

    :cond_4
    return-void
.end method
