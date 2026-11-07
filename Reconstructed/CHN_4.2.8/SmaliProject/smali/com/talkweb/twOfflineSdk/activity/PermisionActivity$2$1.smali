.class Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2$1;
.super Ljava/lang/Object;
.source "PermisionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;->isAgreement(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2$1;->this$1:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2$1;->this$1:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    const-string p2, "5"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    .line 164
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2$1;->this$1:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startPermiss()V

    return-void
.end method
