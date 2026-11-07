.class final Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$2;
.super Ljava/lang/Object;
.source "CertificationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isPayAllowed(Landroid/content/Context;FLcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$2;->val$context:Landroid/content/Context;

    const-string v1, "\u672a\u6ee18\u5468\u5c81\u7684\u7528\u6237\uff0c\u4e0d\u5141\u8bb8\u4ed8\u8d39\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
