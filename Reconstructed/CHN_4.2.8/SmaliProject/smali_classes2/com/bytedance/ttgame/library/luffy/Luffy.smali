.class public abstract Lcom/bytedance/ttgame/library/luffy/Luffy;
.super Ljava/lang/Object;
.source "Luffy.kt"

# interfaces
.implements Lcom/bytedance/ttgame/library/luffy/core/IInit;
.implements Lcom/bytedance/ttgame/library/luffy/core/IRemoteConfig;
.implements Lgbsdk/common/host/absc;
.implements Lgbsdk/common/host/absm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u00062\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u0006B\u0005\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/bytedance/ttgame/library/luffy/Luffy;",
        "Lcom/bytedance/ttgame/library/luffy/core/IInit;",
        "Lcom/bytedance/ttgame/library/luffy/adapter/IConfig;",
        "Lcom/bytedance/ttgame/library/luffy/core/IRemoteConfig;",
        "Lcom/bytedance/ttgame/library/luffy/core/IRemoteData;",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/library/luffy/Luffy;->Companion:Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
