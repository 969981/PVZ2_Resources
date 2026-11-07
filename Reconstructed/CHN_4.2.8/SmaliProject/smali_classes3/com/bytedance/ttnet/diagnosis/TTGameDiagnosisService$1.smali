.class public Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService$1;
.super Ljava/lang/Object;
.source "TTGameDiagnosisService.java"

# interfaces
.implements Lcom/bytedance/ttnet/diagnosis/IDiagnosisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->monitorBegin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aIl:Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;


# direct methods
.method constructor <init>(Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService$1;->aIl:Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiagnosisComplete(Ljava/lang/String;)V
    .locals 3

    .line 53
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/bytedance/ttnet/diagnosis/TTGameDiagnosisService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDiagnosisComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
