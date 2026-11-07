.class public Lcn/sharesdk/framework/loopshare/watermark/f;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# static fields
.field private static a:I = 0x5

.field private static b:I = 0x64

.field private static c:I = 0x2710

.field private static d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ThreadFactory;

.field private static f:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/f;->d:Ljava/util/concurrent/BlockingQueue;

    .line 28
    new-instance v0, Lcn/sharesdk/framework/loopshare/watermark/f$1;

    invoke-direct {v0}, Lcn/sharesdk/framework/loopshare/watermark/f$1;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/f;->e:Ljava/util/concurrent/ThreadFactory;

    .line 36
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcn/sharesdk/framework/loopshare/watermark/f;->a:I

    sget v3, Lcn/sharesdk/framework/loopshare/watermark/f;->b:I

    sget v1, Lcn/sharesdk/framework/loopshare/watermark/f;->c:I

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcn/sharesdk/framework/loopshare/watermark/f;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcn/sharesdk/framework/loopshare/watermark/f;->e:Ljava/util/concurrent/ThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 44
    sget-object v0, Lcn/sharesdk/framework/loopshare/watermark/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
