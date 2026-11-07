.class public final Lgbsdk/common/host/absi;
.super Ljava/lang/Object;
.source "Constant.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/bytedance/ttgame/library/luffy/core/Constant;",
        "",
        "()V",
        "REMOTE_CONFIG",
        "",
        "TAG",
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
.field public static final Bd:Ljava/lang/String; = "_gsdk_remote_config_repo"

.field public static final Be:Lgbsdk/common/host/absi;

.field public static final TAG:Ljava/lang/String; = "Luffy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lgbsdk/common/host/absi;

    invoke-direct {v0}, Lgbsdk/common/host/absi;-><init>()V

    sput-object v0, Lgbsdk/common/host/absi;->Be:Lgbsdk/common/host/absi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
