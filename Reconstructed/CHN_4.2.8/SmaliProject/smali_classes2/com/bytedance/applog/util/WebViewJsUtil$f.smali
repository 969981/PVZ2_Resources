.class public final Lcom/bytedance/applog/util/WebViewJsUtil$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/ai$ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/util/WebViewJsUtil;->sendWebClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->c:Z

    iput-object p4, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lgbsdk/optional/applog/abfu;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->c:Z

    iget-object v3, p0, Lcom/bytedance/applog/util/WebViewJsUtil$f;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/applog/util/WebViewJsUtil;->access$300(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lgbsdk/optional/applog/abbm;

    move-result-object v0

    return-object v0
.end method
