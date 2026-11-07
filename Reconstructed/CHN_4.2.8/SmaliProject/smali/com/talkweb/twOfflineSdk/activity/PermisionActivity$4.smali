.class Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$4;
.super Ljava/lang/Object;
.source "PermisionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->showDialogTipUserGoToAppSettting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$4;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 481
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$4;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    const-string p2, "\u6743\u9650\u83b7\u53d6\u5931\u8d25"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 482
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "\u83b7\u53d6\u6743\u9650\u5931\u8d25,\u5173\u95ed\u6743\u9650\u754c\u9762,\u8fdb\u5165\u6e38\u620f-----------\uff01"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$4;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->access$000(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V

    return-void
.end method
