.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;
.super Ljava/lang/Object;
.source "InitInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ,\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u001a\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u0007H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;",
        "",
        "intercept",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lkotlin/Function2;",
        "",
        "",
        "Companion",
        "ch_base_api_tobRelease"
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor$Companion;

.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_MAX:I = 0x63

.field public static final PRIORITY_MIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor$Companion;->$$INSTANCE:Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor$Companion;

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor;->Companion:Lcom/bytedance/ttgame/tob/common/host/base/api/core/InitInterceptor$Companion;

    return-void
.end method


# virtual methods
.method public abstract intercept(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
