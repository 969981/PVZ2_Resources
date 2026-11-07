.class public final Lgbsdk/common/host/absj;
.super Ljava/lang/Object;
.source "InitConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/absj$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001:\u0001!Be\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0019\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001eR\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/bytedance/ttgame/library/luffy/InitConfig;",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "logger",
        "Lcom/bytedance/ttgame/library/luffy/adapter/ILogger;",
        "preloads",
        "",
        "",
        "mainProcess",
        "",
        "mainStorage",
        "Lcom/bytedance/ttgame/library/luffy/adapter/IStorage;",
        "secondaryStorage",
        "request",
        "Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;",
        "bindTimeout",
        "",
        "(Ljava/util/concurrent/Executor;Lcom/bytedance/ttgame/library/luffy/adapter/ILogger;Ljava/util/List;ZLcom/bytedance/ttgame/library/luffy/adapter/IStorage;Ljava/util/List;Ljava/util/List;J)V",
        "getBindTimeout",
        "()J",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "getLogger",
        "()Lcom/bytedance/ttgame/library/luffy/adapter/ILogger;",
        "getMainProcess",
        "()Z",
        "getMainStorage",
        "()Lcom/bytedance/ttgame/library/luffy/adapter/IStorage;",
        "getPreloads",
        "()Ljava/util/List;",
        "getRequest",
        "getSecondaryStorage",
        "Builder",
        "luffy_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final AT:Lgbsdk/common/host/absl;

.field public final AU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final AV:Z

.field public final AW:Lgbsdk/common/host/absg;

.field public final AX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/absg;",
            ">;"
        }
    .end annotation
.end field

.field public final AY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final AZ:J

.field public final executor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lgbsdk/common/host/absl;Ljava/util/List;ZLgbsdk/common/host/absg;Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lgbsdk/common/host/absl;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lgbsdk/common/host/absg;",
            "Ljava/util/List<",
            "+",
            "Lgbsdk/common/host/absg;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/ttgame/library/luffy/adapter/IRequest;",
            ">;J)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/absj;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lgbsdk/common/host/absj;->AT:Lgbsdk/common/host/absl;

    iput-object p3, p0, Lgbsdk/common/host/absj;->AU:Ljava/util/List;

    iput-boolean p4, p0, Lgbsdk/common/host/absj;->AV:Z

    iput-object p5, p0, Lgbsdk/common/host/absj;->AW:Lgbsdk/common/host/absg;

    iput-object p6, p0, Lgbsdk/common/host/absj;->AX:Ljava/util/List;

    iput-object p7, p0, Lgbsdk/common/host/absj;->AY:Ljava/util/List;

    iput-wide p8, p0, Lgbsdk/common/host/absj;->AZ:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lgbsdk/common/host/absl;Ljava/util/List;ZLgbsdk/common/host/absg;Ljava/util/List;Ljava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p9}, Lgbsdk/common/host/absj;-><init>(Ljava/util/concurrent/Executor;Lgbsdk/common/host/absl;Ljava/util/List;ZLgbsdk/common/host/absg;Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method
