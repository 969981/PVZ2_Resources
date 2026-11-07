.class Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;
.super Ljava/lang/Object;
.source "MyRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->antiAddiction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/tools/MyRunnable;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;->this$0:Lcom/talkweb/twOfflineSdk/tools/MyRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;->this$0:Lcom/talkweb/twOfflineSdk/tools/MyRunnable;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->access$100(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u60a8\u597d\uff0c\u7531\u4e8e\u60a8\u5c5e\u4e8e\u672a\u6210\u5e74\u7528\u6237\uff0c\u53ef\u4ee5\u6e38\u620f\u7684\u65f6\u95f4\u5728\u5468\u4e94\u3001\u5468\u516d\u3001\u5468\u65e5\u548c\u8282\u5047\u65e520-21\u65f6\u4e4b\u95f4\uff0c\u5f53\u524d\u5df2\u4e0d\u5728\u8fd9\u4e2a\u65f6\u95f4\uff0c\u8bf7\u60a8\u9000\u51fa\u6e38\u620f\uff0c\u8c22\u8c22\uff01 "

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u672a\u6210\u5e74\u9632\u6c89\u8ff7\u63d0\u9192"

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    new-instance v1, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2$1;-><init>(Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;)V

    const-string v2, "\u9000\u51fa\u6e38\u620f"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 109
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/tools/MyRunnable$2;->this$0:Lcom/talkweb/twOfflineSdk/tools/MyRunnable;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->access$100(Lcom/talkweb/twOfflineSdk/tools/MyRunnable;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
