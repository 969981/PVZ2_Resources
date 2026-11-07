.class public final Lcom/bytedance/applog/exposure/ViewExposureManager$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/exposure/ViewExposureManager;-><init>(Lcom/bytedance/bdtracker/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lgbsdk/optional/applog/abeq;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/exposure/ViewExposureManager;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager$b;->a:Lcom/bytedance/applog/exposure/ViewExposureManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lgbsdk/optional/applog/abeq;

    iget-object v1, p0, Lcom/bytedance/applog/exposure/ViewExposureManager$b;->a:Lcom/bytedance/applog/exposure/ViewExposureManager;

    invoke-static {v1}, Lcom/bytedance/applog/exposure/ViewExposureManager;->access$getAppLog$p(Lcom/bytedance/applog/exposure/ViewExposureManager;)Lcom/bytedance/bdtracker/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lgbsdk/optional/applog/abeq;-><init>(Lcom/bytedance/bdtracker/d;)V

    return-object v0
.end method
