.class final Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;
.super Ljava/lang/Object;
.source "CertificationUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isPayAllowed(Landroid/content/Context;FLcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$age:I

.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$money:F


# direct methods
.method constructor <init>(IFLcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;Landroid/content/Context;)V
    .locals 0

    .line 652
    iput p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$age:I

    iput p2, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$money:F

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;

    iput-object p4, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 6

    .line 658
    invoke-static {p1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "returnObject is null"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 660
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7528\u6237\u6b64\u6708\u7d2f\u79ef\u4ed8\u8d39\u91d1\u989d\u4e3a:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 663
    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$age:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$age:I

    if-ge v0, v5, :cond_0

    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$money:F

    add-float/2addr v0, p1

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 664
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;

    invoke-interface {p1, v4}, Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;->payAllowed(Z)V

    .line 665
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5$1;-><init>(Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 676
    :cond_0
    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$age:I

    if-lt v0, v5, :cond_1

    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$age:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_1

    iget v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$money:F

    add-float/2addr v0, p1

    const/high16 p1, 0x43c80000    # 400.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    .line 677
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;

    invoke-interface {p1, v4}, Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;->payAllowed(Z)V

    .line 678
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5$2;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5$2;-><init>(Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 688
    :cond_1
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;

    invoke-interface {p1, v2}, Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;->payAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 691
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;

    invoke-interface {p1, v2}, Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;->payAllowed(Z)V

    goto :goto_0

    .line 696
    :cond_2
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 697
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;

    invoke-interface {p1, v2}, Lcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;->payAllowed(Z)V

    :goto_0
    return-void
.end method
