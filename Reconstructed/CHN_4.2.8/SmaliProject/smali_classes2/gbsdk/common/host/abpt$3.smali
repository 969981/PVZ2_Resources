.class public Lgbsdk/common/host/abpt$3;
.super Lgbsdk/common/host/abpr;
.source "PatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abpt;->b(Ljava/util/List;Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic wi:Lgbsdk/common/host/abpt;

.field final synthetic wj:Ljava/util/List;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abpt;Ljava/util/List;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lgbsdk/common/host/abpt$3;->wi:Lgbsdk/common/host/abpt;

    iput-object p2, p0, Lgbsdk/common/host/abpt$3;->wj:Ljava/util/List;

    invoke-direct {p0}, Lgbsdk/common/host/abpr;-><init>()V

    return-void
.end method


# virtual methods
.method public de()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lgbsdk/common/host/abpt$3;->wj:Ljava/util/List;

    return-object v0
.end method
