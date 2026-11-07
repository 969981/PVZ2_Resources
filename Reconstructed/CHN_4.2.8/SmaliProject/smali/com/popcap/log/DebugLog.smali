.class public Lcom/popcap/log/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"

# interfaces
.implements Lcom/popcap/log/IPcpLog;


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/popcap/log/DebugLog;->params:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/log/DebugLog;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public Debug(Ljava/lang/String;)V
    .locals 1

    .line 34
    const-string v0, "PopCapDebug++++"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/popcap/log/DebugLog;->Debug(Ljava/lang/String;)V

    return-void
.end method
