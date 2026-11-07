.class Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5$2;
.super Ljava/lang/Object;
.source "CertificationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->responseData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5$2;->this$0:Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5$2;->this$0:Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$context:Landroid/content/Context;

    const-string v1, "16\u5468\u5c81\u4ee5\u4e0a\u672a\u6ee118\u5468\u5c81\u7684\u7528\u6237\uff0c\u6bcf\u6708\u7d2f\u79ef\u4e0d\u80fd\u8d85\u8fc7400\u5143\u4eba\u6c11\u5e01\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
