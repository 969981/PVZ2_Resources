.class public Lgbsdk/common/host/abrk;
.super Ljava/lang/Object;
.source "SessionObserver.java"

# interfaces
.implements Lcom/bytedance/applog/ISessionObserver;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionBatchEvent(JLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    sget-object p2, Lgbsdk/common/host/abrk;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string p4, "bfb69db1fc21c6a45f1204e4cfdf6c66"

    invoke-static {v0, p0, p2, p1, p4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setSessionValue(Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStart(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSessionTerminate(JLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
