.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$14;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Lorg/json/JSONObject;

.field final synthetic f:Lorg/json/JSONObject;

.field final synthetic g:J

.field final synthetic h:Lcom/bytedance/framwork/core/apm/SDKMonitor;


# direct methods
.method constructor <init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->h:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iput-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->a:Ljava/lang/String;

    iput p3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->b:I

    iput-object p4, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->d:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->e:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->f:Lorg/json/JSONObject;

    iput-wide p8, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1238
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->h:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->a:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->b:I

    iget-object v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->c:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->d:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->e:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->f:Lorg/json/JSONObject;

    iget-wide v7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;->g:J

    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorService(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    return-void
.end method
