.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    new-instance v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$a$a;

    invoke-direct {v1, p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$a$a;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
