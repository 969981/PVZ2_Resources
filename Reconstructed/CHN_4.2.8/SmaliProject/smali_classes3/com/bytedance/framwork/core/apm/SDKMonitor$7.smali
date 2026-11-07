.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$7;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->init(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/framwork/core/apm/SDKMonitor$a;

.field final synthetic b:Lcom/bytedance/framwork/core/apm/SDKMonitor;


# direct methods
.method constructor <init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lcom/bytedance/framwork/core/apm/SDKMonitor$a;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$7;->b:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iput-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$7;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$7;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor$a;

    invoke-interface {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
