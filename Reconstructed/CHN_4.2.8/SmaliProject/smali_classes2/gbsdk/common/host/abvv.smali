.class public Lgbsdk/common/host/abvv;
.super Ljava/lang/Object;
.source "TTDnsQuery.java"


# instance fields
.field public aIH:I

.field public aII:Ljava/lang/String;

.field private aIJ:Ljava/util/concurrent/CountDownLatch;

.field public aIK:Lgbsdk/common/host/abvu;

.field public host:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgbsdk/common/host/abvv;->host:Ljava/lang/String;

    .line 19
    iput p2, p0, Lgbsdk/common/host/abvv;->aIH:I

    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abvv;->aII:Ljava/lang/String;

    .line 22
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lgbsdk/common/host/abvv;->aIJ:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public hq()V
    .locals 1

    .line 38
    iget-object v0, p0, Lgbsdk/common/host/abvv;->aIJ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public hr()V
    .locals 1

    .line 42
    iget-object v0, p0, Lgbsdk/common/host/abvv;->aIJ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public hs()V
    .locals 4

    .line 54
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->inst(Landroid/content/Context;)Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abvv;->host:Ljava/lang/String;

    iget v2, p0, Lgbsdk/common/host/abvv;->aIH:I

    iget-object v3, p0, Lgbsdk/common/host/abvv;->aII:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/impl/SsCronetHttpClient;->ttDnsResolve(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
