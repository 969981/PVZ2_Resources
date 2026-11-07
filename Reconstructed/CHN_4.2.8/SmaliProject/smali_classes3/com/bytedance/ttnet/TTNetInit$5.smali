.class public final Lcom/bytedance/ttnet/TTNetInit$5;
.super Ljava/lang/Object;
.source "TTNetInit.java"

# interfaces
.implements Lgbsdk/common/host/abiq$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/TTNetInit;->setCookieHandler(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/bytedance/ttnet/TTNetInit$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->cookieLogReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ttnet/TTNetInit$5;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/bytedance/ttnet/ITTNetDepend;->mobOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
