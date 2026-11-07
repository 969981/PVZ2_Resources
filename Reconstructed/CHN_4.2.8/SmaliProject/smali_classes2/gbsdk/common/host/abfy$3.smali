.class public final Lgbsdk/common/host/abfy$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abfy;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dZ:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abfy$3;->dZ:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    iget-object v4, p0, Lgbsdk/common/host/abfy$3;->dZ:Ljava/lang/Throwable;

    invoke-static {v1, v2, v0, v3, v4}, Lgbsdk/common/host/abfl;->a(JLandroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lgbsdk/common/host/abfl;

    move-result-object v0

    const-string v1, "userdefine"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/abfl;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v1

    sget-object v2, Lcom/apm/insight/CrashType;->CUSTOM_JAVA:Lcom/apm/insight/CrashType;

    invoke-virtual {v1, v2, v0}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lgbsdk/common/host/abfl;)Lgbsdk/common/host/abfl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgbsdk/common/host/abfa;->au()Lgbsdk/common/host/abfa;

    move-result-object v1

    iget-object v0, v0, Lgbsdk/common/host/abfl;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abfa;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
