.class public Lcom/bytedance/applog/game/UnityPlugin$1;
.super Ljava/lang/Object;
.source "UnityPlugin.java"

# interfaces
.implements Lcom/bytedance/applog/ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/applog/game/UnityPlugin;->init(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/applog/game/UnityPlugin;


# direct methods
.method constructor <init>(Lcom/bytedance/applog/game/UnityPlugin;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bytedance/applog/game/UnityPlugin$1;->this$0:Lcom/bytedance/applog/game/UnityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "AppLog"

    .line 63
    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
