.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->o:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->o:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b$a;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    :cond_0
    return-void
.end method
