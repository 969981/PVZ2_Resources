.class public final Lgbsdk/optional/applog/ay$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/ay;-><init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/ay;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/ay;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/ay$ab;->a:Lgbsdk/optional/applog/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/ay$ab;->a:Lgbsdk/optional/applog/ay;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/ay;->c:Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->getCurrActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgbsdk/optional/applog/ay$ab;->a:Lgbsdk/optional/applog/ay;

    .line 3
    iget-object v1, v1, Lgbsdk/optional/applog/ay;->c:Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 4
    invoke-virtual {v1, v0}, Lcom/bytedance/applog/exposure/ViewExposureManager;->checkViewExposureFromActivity$agent_liteChinaRelease(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
