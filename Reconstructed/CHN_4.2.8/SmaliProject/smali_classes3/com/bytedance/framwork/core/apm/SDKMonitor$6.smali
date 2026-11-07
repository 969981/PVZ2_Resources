.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$6;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:J

.field final synthetic d:Lcom/bytedance/framwork/core/apm/SDKMonitor;


# direct methods
.method constructor <init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0

    .line 1382
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;->d:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iput-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;->b:Lorg/json/JSONObject;

    iput-wide p4, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1385
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;->d:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;->b:Lorg/json/JSONObject;

    iget-wide v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorCommonLogInternal(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method
