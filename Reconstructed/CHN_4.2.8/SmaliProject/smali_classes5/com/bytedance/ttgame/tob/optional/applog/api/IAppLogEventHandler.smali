.class public interface abstract Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;
.super Ljava/lang/Object;
.source "IAppLogEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$Companion;,
        Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;,
        Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH&J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH&J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH&J&\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\r2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH&J\u001a\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u000fH&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;",
        "",
        "addParamsInfo",
        "",
        "key",
        "",
        "handler",
        "Lkotlin/Function0;",
        "replace",
        "",
        "Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;",
        "value",
        "map",
        "",
        "registerEventHandler",
        "Lcom/bytedance/applog/event/IEventHandler;",
        "priority",
        "",
        "removeParams",
        "unregisterEventHandler",
        "eventHandler",
        "Companion",
        "IParamsAddHandler",
        "optional_applog_api_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$Companion;

.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_MAX:I = 0x63

.field public static final PRIORITY_MIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$Companion;->$$INSTANCE:Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$Companion;

    sput-object v0, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler;->Companion:Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$Companion;

    return-void
.end method


# virtual methods
.method public abstract addParamsInfo(Ljava/lang/String;Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogEventHandler$IParamsAddHandler;Z)V
.end method

.method public abstract addParamsInfo(Ljava/lang/String;Ljava/lang/Object;Z)V
.end method

.method public abstract addParamsInfo(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract addParamsInfo(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract registerEventHandler(Lcom/bytedance/applog/event/IEventHandler;I)Z
.end method

.method public abstract removeParams(Ljava/lang/String;)V
.end method

.method public abstract unregisterEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V
.end method
