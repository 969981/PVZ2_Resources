.class public final Lgbsdk/common/host/abqd$1;
.super Ljava/lang/Object;
.source "SoDetector.java"

# interfaces
.implements Lcom/bytedance/frankie/emulator/EmulatorCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abqd;->a(Lgbsdk/common/host/abqd$ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic xz:Lgbsdk/common/host/abqd$ab;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abqd$ab;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lgbsdk/common/host/abqd$1;->xz:Lgbsdk/common/host/abqd$ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoDetector tryAdaptEmulator abort, checkEmulator OnFailed, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Frankie"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p1, p0, Lgbsdk/common/host/abqd$1;->xz:Lgbsdk/common/host/abqd$ab;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ZLjava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoDetector checkEmulator onSuccess, isEmulator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", brand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Frankie"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "SoDetector tryAdaptEmulator abort, checkEmulator false"

    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lgbsdk/common/host/abqd$1;->xz:Lgbsdk/common/host/abqd$ab;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lgbsdk/common/host/abqd$ab;->e([Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lgbsdk/common/host/abqd$1$1;

    invoke-direct {p2, p0}, Lgbsdk/common/host/abqd$1$1;-><init>(Lgbsdk/common/host/abqd$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
