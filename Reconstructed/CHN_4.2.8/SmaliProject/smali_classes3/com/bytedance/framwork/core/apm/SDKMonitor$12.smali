.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$12;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorSLA(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lorg/json/JSONObject;

.field final synthetic h:Lcom/bytedance/framwork/core/apm/SDKMonitor;


# direct methods
.method constructor <init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0

    .line 1192
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->h:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iput-wide p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->a:J

    iput-wide p4, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->b:J

    iput-object p6, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->e:Ljava/lang/String;

    iput p9, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->f:I

    iput-object p10, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->g:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1195
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->h:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    iget-wide v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->a:J

    iget-wide v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->b:J

    iget-object v5, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->e:Ljava/lang/String;

    iget v8, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->f:I

    iget-object v9, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;->g:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v9}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
