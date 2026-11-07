.class public final Lgbsdk/optional/applog/abcx;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Activity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/exposure/ViewExposureManager;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abcx;->a:Lcom/bytedance/applog/exposure/ViewExposureManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/app/Activity;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lgbsdk/optional/applog/abcx;->a:Lcom/bytedance/applog/exposure/ViewExposureManager;

    invoke-static {p1}, Lcom/bytedance/applog/exposure/ViewExposureManager;->access$getTask$p(Lcom/bytedance/applog/exposure/ViewExposureManager;)Lgbsdk/optional/applog/ay;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lgbsdk/optional/applog/ay;->b:Lgbsdk/optional/applog/abee;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abee;->a()V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
