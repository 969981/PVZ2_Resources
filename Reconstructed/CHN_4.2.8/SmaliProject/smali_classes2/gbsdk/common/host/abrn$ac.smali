.class public Lgbsdk/common/host/abrn$ac;
.super Ljava/lang/Object;
.source "ApkChannelUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abrn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public CF:Lgbsdk/common/host/abro;

.field public CG:Ljava/lang/String;

.field public CH:Lgbsdk/common/host/abrn$ab;

.field private CI:Landroid/content/ServiceConnection;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Lgbsdk/common/host/abrn$ac$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abrn$ac$1;-><init>(Lgbsdk/common/host/abrn$ac;)V

    iput-object v0, p0, Lgbsdk/common/host/abrn$ac;->CI:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abrn$1;)V
    .locals 0

    .line 532
    invoke-direct {p0}, Lgbsdk/common/host/abrn$ac;-><init>()V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lgbsdk/common/host/abrn$ab;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lgbsdk/common/host/abrn$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "2ab342ddff1c1f7cd7afd2091b69ed1c"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 541
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 542
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/applog/ApkChannelService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 543
    iget-object v1, p0, Lgbsdk/common/host/abrn$ac;->CI:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 544
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgbsdk/common/host/abrn$ac;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 545
    iput-object p2, p0, Lgbsdk/common/host/abrn$ac;->CH:Lgbsdk/common/host/abrn$ab;

    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrn$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2f70a4c8b231890661484336e170cc24"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abrn$ac;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "ApkChannelUtils"

    const-string v2, "unbindService"

    .line 572
    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method
