.class final Lcom/tw/pay/sdk/util/TwBindUtil$4;
.super Ljava/lang/Object;
.source "TwBindUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwBindUtil;->doRegisterPhone(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$4;->val$phone:Ljava/lang/String;

    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwBindUtil$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d0\u4ea4\u6ce8\u518c\u624b\u673a\u53f7\u6210\u529f\uff01returnObject+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwBindUtil$4;->val$phone:Ljava/lang/String;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwBindUtil$4;->val$context:Landroid/content/Context;

    const-string v1, "SubmitServiceString"

    invoke-static {v1, p1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
