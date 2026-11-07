.class public final Lgbsdk/common/host/absb$ab;
.super Ljava/lang/Object;
.source "InternalMainImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/absb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bytedance/ttgame/library/luffy/core/InternalMainImpl$Companion;",
        "",
        "()V",
        "requested",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getRequested$annotations",
        "getRequested",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "luffy_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lgbsdk/common/host/absb$ab;-><init>()V

    return-void
.end method

.method public static synthetic dP()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final dO()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 33
    sget-object v0, Lgbsdk/common/host/absb;->Bk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
