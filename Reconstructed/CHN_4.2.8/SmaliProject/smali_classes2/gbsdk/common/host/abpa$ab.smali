.class public Lgbsdk/common/host/abpa$ab;
.super Ljava/lang/Object;
.source "PlatformThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public name:Ljava/lang/String;

.field public threadCount:I

.field public za:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public zb:Ljava/util/concurrent/RejectedExecutionHandler;

.field public zc:J

.field public zd:Ljava/util/concurrent/ThreadFactory;

.field public ze:Lgbsdk/common/host/abrz;


# direct methods
.method private constructor <init>(Lgbsdk/common/host/abrz;Ljava/lang/String;)V
    .locals 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lgbsdk/common/host/abpa$ab;->ze:Lgbsdk/common/host/abrz;

    .line 239
    iput-object p2, p0, Lgbsdk/common/host/abpa$ab;->name:Ljava/lang/String;

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 243
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abpa$ab;->za:Ljava/util/concurrent/BlockingQueue;

    .line 244
    sget-object p1, Lgbsdk/common/host/abpa;->yQ:Ljava/util/concurrent/RejectedExecutionHandler;

    iput-object p1, p0, Lgbsdk/common/host/abpa$ab;->zb:Ljava/util/concurrent/RejectedExecutionHandler;

    const-wide/16 v0, 0x3a98

    .line 245
    iput-wide v0, p0, Lgbsdk/common/host/abpa$ab;->zc:J

    .line 246
    new-instance p1, Lgbsdk/common/host/abpn;

    sget-object v0, Lgbsdk/common/host/abry;->zq:Lgbsdk/common/host/abry;

    invoke-direct {p1, p2, v0}, Lgbsdk/common/host/abpn;-><init>(Ljava/lang/String;Lgbsdk/common/host/abry;)V

    iput-object p1, p0, Lgbsdk/common/host/abpa$ab;->zd:Ljava/util/concurrent/ThreadFactory;

    const/4 p1, 0x3

    .line 247
    iput p1, p0, Lgbsdk/common/host/abpa$ab;->threadCount:I

    return-void

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "thread pool need a name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lgbsdk/common/host/abrz;Ljava/lang/String;)Lgbsdk/common/host/abpa$ab;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abpa$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "e946d76184388d4da7bc28fdeef97581"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/common/host/abpa$ab;

    return-object p0

    .line 256
    :cond_0
    new-instance v0, Lgbsdk/common/host/abpa$ab;

    invoke-direct {v0, p0, p1}, Lgbsdk/common/host/abpa$ab;-><init>(Lgbsdk/common/host/abrz;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/concurrent/BlockingQueue;)Lgbsdk/common/host/abpa$ab;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lgbsdk/common/host/abpa$ab;"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lgbsdk/common/host/abpa$ab;->za:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/RejectedExecutionHandler;)Lgbsdk/common/host/abpa$ab;
    .locals 0

    .line 288
    iput-object p1, p0, Lgbsdk/common/host/abpa$ab;->zb:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/ThreadFactory;)Lgbsdk/common/host/abpa$ab;
    .locals 0

    .line 310
    iput-object p1, p0, Lgbsdk/common/host/abpa$ab;->zd:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public s(J)Lgbsdk/common/host/abpa$ab;
    .locals 0

    .line 299
    iput-wide p1, p0, Lgbsdk/common/host/abpa$ab;->zc:J

    return-object p0
.end method

.method public z(I)Lgbsdk/common/host/abpa$ab;
    .locals 0

    .line 266
    iput p1, p0, Lgbsdk/common/host/abpa$ab;->threadCount:I

    return-object p0
.end method
