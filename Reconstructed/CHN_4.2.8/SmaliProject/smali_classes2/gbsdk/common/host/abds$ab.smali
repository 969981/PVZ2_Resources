.class public Lgbsdk/common/host/abds$ab;
.super Ljava/lang/Object;
.source "Oaid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abds;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic cp:Lgbsdk/common/host/abds;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/abds$ab;->cp:Lgbsdk/common/host/abds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abds$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "02682c067be447b1f861cc1b423ecea6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abds$ab;->cp:Lgbsdk/common/host/abds;

    invoke-static {v0}, Lgbsdk/common/host/abds;->a(Lgbsdk/common/host/abds;)V

    return-void
.end method
