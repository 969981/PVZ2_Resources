.class Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$3;
.super Ljava/lang/Object;
.source "PermisionActivity.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/CheckPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startPermiss()V
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

    .line 283
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$3;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFinished()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$3;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->access$000(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V

    .line 289
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "1\u83b7\u53d6\u6743\u9650\u6210\u529f\u8df3\u8f6cmainActivity,\u5173\u95edPermisionActivityactivity\uff01"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$3;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->finish()V

    return-void
.end method
