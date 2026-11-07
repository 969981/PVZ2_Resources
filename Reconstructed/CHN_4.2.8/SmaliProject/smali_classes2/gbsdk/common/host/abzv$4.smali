.class public final Lgbsdk/common/host/abzv$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aE:Ljava/lang/Object;

.field final synthetic aME:Ljava/lang/Throwable;

.field final synthetic aMF:Lgbsdk/common/host/abzv;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lgbsdk/common/host/abzv;Ljava/lang/Object;IILjava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lgbsdk/common/host/abzv$4;->aMF:Lgbsdk/common/host/abzv;

    iput-object p2, p0, Lgbsdk/common/host/abzv$4;->aE:Ljava/lang/Object;

    iput p3, p0, Lgbsdk/common/host/abzv$4;->b:I

    iput p4, p0, Lgbsdk/common/host/abzv$4;->c:I

    iput-object p5, p0, Lgbsdk/common/host/abzv$4;->d:Ljava/lang/String;

    iput p6, p0, Lgbsdk/common/host/abzv$4;->e:I

    iput-object p7, p0, Lgbsdk/common/host/abzv$4;->aME:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 209
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abzv$4;->aE:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/volcengine/zeus/ZeusPluginEventCallback;

    iget v2, p0, Lgbsdk/common/host/abzv$4;->b:I

    iget v3, p0, Lgbsdk/common/host/abzv$4;->c:I

    iget-object v4, p0, Lgbsdk/common/host/abzv$4;->d:Ljava/lang/String;

    iget v5, p0, Lgbsdk/common/host/abzv$4;->e:I

    iget-object v6, p0, Lgbsdk/common/host/abzv$4;->aME:Ljava/lang/Throwable;

    invoke-interface/range {v1 .. v6}, Lcom/volcengine/zeus/ZeusPluginEventCallback;->onPluginEvent(IILjava/lang/String;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
