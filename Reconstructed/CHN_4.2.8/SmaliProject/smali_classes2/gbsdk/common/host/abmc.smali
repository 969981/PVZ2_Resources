.class public Lgbsdk/common/host/abmc;
.super Ljava/lang/Object;
.source "SsRetrofitClient.java"

# interfaces
.implements Lcom/bytedance/retrofit2/client/Client;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgbsdk/common/host/abmc;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;
    .locals 2

    .line 27
    iget-object v0, p0, Lgbsdk/common/host/abmc;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgbsdk/common/host/abis;->d(Landroid/content/Context;Ljava/lang/String;)Lgbsdk/common/host/abjt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Lgbsdk/common/host/abjt;->newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
