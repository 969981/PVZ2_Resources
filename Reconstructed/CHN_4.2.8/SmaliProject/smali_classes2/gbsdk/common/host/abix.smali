.class public Lgbsdk/common/host/abix;
.super Ljava/lang/Object;
.source "DnsRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abix$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final oL:I = 0xa

.field public static final oM:I = 0xb

.field public static final oN:I = 0xc

.field public static final oO:I = 0xd

.field public static final oP:Ljava/lang/String; = "dnsrecord_host"


# instance fields
.field private final mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

.field public oG:Ljava/lang/String;

.field public oH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oJ:J

.field public oK:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lgbsdk/common/host/abix;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abix;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lgbsdk/common/host/abix;->oG:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Lgbsdk/common/host/abix;->oK:J

    .line 39
    iput-object p4, p0, Lgbsdk/common/host/abix;->oH:Ljava/util/List;

    .line 40
    iput-object p5, p0, Lgbsdk/common/host/abix;->oI:Ljava/util/List;

    int-to-long p1, p6

    .line 41
    iput-wide p1, p0, Lgbsdk/common/host/abix;->oJ:J

    .line 42
    new-instance p1, Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p2

    invoke-virtual {p2}, Lgbsdk/common/host/ablz;->cm()Landroid/os/HandlerThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/bytedance/common/utility/collection/WeakHandler;-><init>(Landroid/os/Looper;Lcom/bytedance/common/utility/collection/WeakHandler$IHandler;)V

    iput-object p1, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    iget-object v1, p0, Lgbsdk/common/host/abix;->oG:Ljava/lang/String;

    const-string v2, "dnsrecord_host"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 8

    .line 46
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 47
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0xc

    .line 48
    iput v1, v0, Landroid/os/Message;->what:I

    .line 49
    invoke-direct {p0, v0}, Lgbsdk/common/host/abix;->b(Landroid/os/Message;)V

    .line 50
    iget-object v1, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    iget-wide v2, p0, Lgbsdk/common/host/abix;->oJ:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 52
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 53
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0xa

    .line 54
    iput v1, v0, Landroid/os/Message;->what:I

    .line 55
    invoke-direct {p0, v0}, Lgbsdk/common/host/abix;->b(Landroid/os/Message;)V

    .line 56
    iget-object v1, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    iget-wide v2, p0, Lgbsdk/common/host/abix;->oJ:J

    mul-long v2, v2, v4

    .line 57
    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v6

    iget-object v6, v6, Lgbsdk/common/host/ablz;->pX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    int-to-long v6, v6

    mul-long v6, v6, v4

    add-long/2addr v2, v6

    .line 56
    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public cb()V
    .locals 6

    .line 61
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 62
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0xd

    .line 63
    iput v1, v0, Landroid/os/Message;->what:I

    .line 64
    invoke-direct {p0, v0}, Lgbsdk/common/host/abix;->b(Landroid/os/Message;)V

    .line 65
    iget-object v1, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    iget-wide v2, p0, Lgbsdk/common/host/abix;->oJ:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public cc()V
    .locals 2

    .line 69
    iget-object v0, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->removeMessages(I)V

    .line 70
    iget-object v0, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->removeMessages(I)V

    return-void
.end method

.method public cd()V
    .locals 2

    .line 74
    iget-object v0, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->removeMessages(I)V

    return-void
.end method

.method public ce()V
    .locals 6

    .line 78
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 79
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0xb

    .line 80
    iput v1, v0, Landroid/os/Message;->what:I

    .line 81
    invoke-direct {p0, v0}, Lgbsdk/common/host/abix;->b(Landroid/os/Message;)V

    .line 82
    iget-object v1, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    invoke-static {}, Lgbsdk/common/host/ablz;->cj()Lgbsdk/common/host/ablz;

    move-result-object v2

    iget-object v2, v2, Lgbsdk/common/host/ablz;->pV:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/common/utility/collection/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public cf()V
    .locals 2

    .line 86
    iget-object v0, p0, Lgbsdk/common/host/abix;->mHandler:Lcom/bytedance/common/utility/collection/WeakHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/bytedance/common/utility/collection/WeakHandler;->removeMessages(I)V

    return-void
.end method
