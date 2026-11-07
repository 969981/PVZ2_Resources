.class public Lgbsdk/common/host/abqm$ab;
.super Ljava/lang/Object;
.source "Patcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public wM:Lgbsdk/common/host/abpr;

.field public wN:Lgbsdk/common/host/abpo;

.field public wO:Lcom/bytedance/frankie/patch/PatchCallBack;

.field public wP:Lcom/meituan/robust/PatchManipulate;

.field public wQ:Ljava/lang/String;

.field public wh:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lgbsdk/common/host/abqm$ab;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/frankie/patch/PatchCallBack;)Lgbsdk/common/host/abqm$ab;
    .locals 0

    .line 205
    iput-object p1, p0, Lgbsdk/common/host/abqm$ab;->wO:Lcom/bytedance/frankie/patch/PatchCallBack;

    return-object p0
.end method

.method public a(Lcom/meituan/robust/PatchManipulate;)Lgbsdk/common/host/abqm$ab;
    .locals 0

    .line 210
    iput-object p1, p0, Lgbsdk/common/host/abqm$ab;->wP:Lcom/meituan/robust/PatchManipulate;

    return-object p0
.end method

.method public a(Lgbsdk/common/host/abpo;)Lgbsdk/common/host/abqm$ab;
    .locals 0

    .line 200
    iput-object p1, p0, Lgbsdk/common/host/abqm$ab;->wN:Lgbsdk/common/host/abpo;

    return-object p0
.end method

.method public a(Lgbsdk/common/host/abpr;)Lgbsdk/common/host/abqm$ab;
    .locals 0

    .line 195
    iput-object p1, p0, Lgbsdk/common/host/abqm$ab;->wM:Lgbsdk/common/host/abpr;

    return-object p0
.end method

.method public a(Ljava/lang/ClassLoader;)Lgbsdk/common/host/abqm$ab;
    .locals 0

    .line 220
    iput-object p1, p0, Lgbsdk/common/host/abqm$ab;->wh:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public bj(Ljava/lang/String;)Lgbsdk/common/host/abqm$ab;
    .locals 0

    .line 215
    iput-object p1, p0, Lgbsdk/common/host/abqm$ab;->wQ:Ljava/lang/String;

    return-object p0
.end method

.method public dh()Lgbsdk/common/host/abqm;
    .locals 2

    .line 225
    new-instance v0, Lgbsdk/common/host/abqm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgbsdk/common/host/abqm;-><init>(Lgbsdk/common/host/abqm$ab;Lgbsdk/common/host/abqm$1;)V

    return-object v0
.end method
