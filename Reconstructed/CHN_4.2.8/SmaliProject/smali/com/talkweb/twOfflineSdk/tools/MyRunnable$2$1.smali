.class Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2$1;
.super Ljava/lang/Object;
.source "MyRunnable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2$1;->this$1:Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "\u9000\u51fa\u6e38\u620f\uff0c\u8c03\u7528\u9000\u51fa\u4e8b\u4ef6\u4e0a\u62a5\uff01"

    .line 101
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2$1;->this$1:Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;->this$0:Lcom/talkweb/twOfflineSdk/tools/MyRunnable;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->access$100(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    .line 103
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
